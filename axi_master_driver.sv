class axi_master_driver extends  uvm_driver#(axi_wr_tx);

`uvm_component_utils(axi_master_driver)
virtual interface axi4_intf vif;
  
function new(string name="axi_driver",uvm_component parent =null);
super.new(name,parent);
endfunction

function void build_phase(uvm_phase phase);
if(! uvm_config_db#(virtual axi4_intf)::get(this, "", "axi_intf",vif ))
	`uvm_fatal(get_type_name,{"unable to get virtual iintetface for",get_full_name})
endfunction
  
task handle_reset();
wait(vif.rst);
wait(!vif.rst);

endtask

virtual task run_phase(uvm_phase phase);
handle_reset();
`uvm_info(get_type_name, "Out of reset", UVM_LOW)
@(posedge vif.clk);
fork 
axi_wr_txn(); 
join_none

endtask

task axi_wr_txn();
  fork 
    begin:wr_txn
    forever  begin
      `uvm_info("wr_txn-BEGIN","",UVM_HIGH)
        seq_item_port.get_next_item(req);
            fork 
              write_addr_phase(req);
              write_data_phase(req);
            join
        seq_item_port.item_done();
      `uvm_info("wr_txn-END","",UVM_HIGH)
     end 
    end :wr_txn
  join_none
endtask


task write_addr_phase(axi_wr_tx req);
`uvm_info(get_type_name,$sformatf("Got Addr phase stimiulus \n\t  %s",req.sprint),UVM_HIGH)

  vif.awid <= req.awid;
  vif.awaddr  <= req.awaddr;
  vif.awlen  <= req.awlen;
  vif.awsize <= req.awsize;
  vif.awburst <= req.awburst;
  vif.awlock <= req.awlock;
  vif.awprot <= req.awprot;
  vif.awvalid <=  1'b1;
  vif.bready <= 1'b1;
    @(posedge  vif.clk);

    `uvm_info(get_type_name," Write Addr phase waiting.. for  slave ready \n",UVM_HIGH)
  while(!vif.awready)
      @(posedge  vif.clk);
    `uvm_info(get_type_name,"  write Addr phase Got  slave ready \n",UVM_HIGH)
  vif.awvalid <= 1'b0;
  //vif.awaddr <= 'bx;
endtask


task  write_data_phase(axi_wr_tx req);
  bit[32-1:0] tmp_data[];
  int length;
  bit four_Kb_voilation;
  logic [7-1:0] num_bytes;  //()
  logic [(DATA_WIDTH >> 3)-1:0] lower_byte_lane,upper_byte_lane;
  logic [(DATA_WIDTH >> 3)-1:0] data_bus_bytes; // DATA_WITDH/8
  logic [32-1:0]  aligned_address_num,l_awaddr, lower_wrap_boundry_num,upper_wrap_boundry_num ; 
  int  beat_count_ones, required_countones;
  logic upper_wrap_conition_occured;
  `uvm_info(get_type_name,$sformatf("Got Data phase stimiulus \n\t  %s",req.sprint),UVM_HIGH)

  length = req.awlen+1'b1;
  tmp_data = new[length];
  num_bytes =  (1 << req.awsize);
  data_bus_bytes =  (DATA_WIDTH>>3);
  l_awaddr = req.awaddr;
  beat_count_ones =0;

  aligned_address_num =  axi_func_pkg::aligned_address(req.awaddr,num_bytes);
   if(req.awburst == WRAP)  begin
 		 lower_wrap_boundry_num = axi_func_pkg::lower_wrap_boundry( req.awaddr,req.awsize,req.awlen);
  		 upper_wrap_boundry_num = axi_func_pkg::upper_wrap_boundry( req.awaddr,req.awsize,req.awlen);
   end 
  
    required_countones = length*num_bytes  - (l_awaddr%num_bytes); //offset account for unaligned transfer
 
foreach(req.wdata[i,j])
	tmp_data[i][j*8 +: 8] = req.wdata[i][j];

  for(int unsigned i = 0;i<length;i++) begin
  
 if(i==0) 
 begin
    l_awaddr = req.awaddr;
    axi_func_pkg::byte_lane_o(l_awaddr,num_bytes,data_bus_bytes,lower_byte_lane,upper_byte_lane);
 end 
 else begin 
   l_awaddr = aligned_address_num + (i)*num_bytes;
   if(req.awburst == WRAP)  begin //wrap
     
     if(upper_wrap_conition_occured)  
         l_awaddr = req.awaddr + (  (i)*num_bytes -(num_bytes*length) ) ;
     
     if(l_awaddr >= upper_wrap_boundry_num ) begin
         l_awaddr = lower_wrap_boundry_num;
            upper_wrap_conition_occured =1;
       end
     
   end  //wrap
   axi_func_pkg::byte_lane_n( l_awaddr,num_bytes,data_bus_bytes,lower_byte_lane,upper_byte_lane);
  end
  
  if(req.awburst == WRAP)  begin 
    assert (req.awlen inside {1,3,7,15}) else 
      `uvm_error("WRAP_LENGHT_ERR", $sformatf(" Invalid lenght recieved %0h", req.awlen))
    assert ( (l_awaddr%num_bytes) == 0) else
      `uvm_error("WRAP_ADDR_ERR", $sformatf(" the address  %0h was not aligned to awsize  %0h",l_awaddr,req.awsize ))
  end 
        
      axi_func_pkg::wrap_display( req.awid, l_awaddr,req.awsize,i);
 
  assert ( lower_byte_lane <= upper_byte_lane) 
	else `uvm_error(get_type_name, $sformatf(" lower_byte_lane  = %0d upper_byte_lane = %0d   ", lower_byte_lane, upper_byte_lane));
 vif.wid    <= req.awid;
 vif.wdata  <=  tmp_data[i] ;
 vif.wlast   <= (i==(length-1'b1) )? 1'b1: 1'b0 ;

  foreach(vif.wstrb[i]) begin
    if(  ($size(vif.wstrb)-1-i)  >=   lower_byte_lane  &&  ($size(vif.wstrb)-1-i)   <= upper_byte_lane)
        vif.wstrb[ $size(vif.wstrb)-1-i] <=   1'b1;
      else 
        vif.wstrb[ $size(vif.wstrb)-1-i] <=   1'b0;
      end  

  vif.wvalid <= 1'b1;
	@(posedge vif.clk);
`uvm_info(get_type_name," data phase waiting.. for   slave ready \n",UVM_HIGH)
  
  while (! vif.wready)  
 	@(posedge vif.clk);
 beat_count_ones += $countones(vif.wstrb); 

`uvm_info(get_type_name," Data phase Got  slave ready \n",UVM_HIGH)
  
vif.wlast <= 1'b0;
vif.wvalid <= 1'b0;
vif.wdata <= 'bx;
    
// @(posedge vif.clk); 
end //for

	assert (required_countones == beat_count_ones) else 
      `uvm_error(get_type_name,$sformatf(" required wstrb = %0d   , Got   = %0d for ID %0d  num_bytes = %0d lwaddr = %0d", required_countones,beat_count_ones,req.awid ,num_bytes,l_awaddr-num_bytes) )
  
endtask

endclass
