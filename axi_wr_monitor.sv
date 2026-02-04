class axi_wr_monitor extends uvm_monitor;
`uvm_component_utils(axi_wr_monitor)
  
  virtual interface axi4_intf mif;
  uvm_analysis_port#(axi_wr_tx)  mon_ap;
  axi_wr_tx tx,tx_copy;
  event aw_done, w_done;
  int unsigned tx_count;

function new(string name="axi_wr_monitor",uvm_component parent =null);
 super.new(name,parent);
endfunction
    
function void build_phase(uvm_phase phase);
  mon_ap = new("mon_ap",this);
  if(! uvm_config_db#(virtual axi4_intf)::get(this, "", "axi_intf",mif ))
	`uvm_fatal(get_type_name,{"unable to get virtual iintetface for",get_full_name})
endfunction
  
task handle_reset();
  wait(mif.rst);
  wait(!mif.rst);

endtask

virtual task run_phase(uvm_phase phase);
handle_reset();
  `uvm_info(get_type_name, " MOnitor Out of reset", UVM_LOW)
  @(posedge mif.clk);
fork 
axi_wr_txn(); 
join_none
endtask
  
  task axi_wr_txn(); 
 forever begin
     tx = axi_wr_tx::type_id::create($sformatf("monitor_wr_tx_%0d",tx_count));
  fork 
      monitor_aw_channel();
      monitor_w_channel();
  join
   `uvm_info(get_type_name,$sformatf("monitor_wr_tx_  %s", tx.sprint()),UVM_HIGH)
  // $cast(tx_copy, tx.clone()); 
   mon_ap.write(tx);
   tx_count++;
 end 
endtask
  
task monitor_aw_channel();
  @(posedge mif.clk iff(mif.awvalid  && mif.awready));
  tx.awid = mif.awid;
  tx.awaddr  = mif.awaddr;
  tx.awlen  = mif.awlen;
  tx.awsize = mif.awsize;
  tx.awburst = burst_t'(mif.awburst);
  tx.awlock = mif.awlock;
  tx.awprot = mif.awprot;
  tx.m_time = $time;
endtask
  
                                    
task monitor_w_channel();
  int unsigned lenght,size;
  @(posedge mif.clk );
  lenght = mif.awlen+1'b1;
  size  =  mif.awsize;

  tx.wdata = new[lenght];
  foreach(tx.wdata[i]) 
    tx.wdata[i] = new[$size(mif.wstrb)];
  tx.wstrb = new[lenght];
  tx.wlast = new[lenght];
                 //3   0 1 2
  for(int unsigned i=0;i<lenght;i++) begin
  @(posedge mif.clk iff(mif.wvalid  && mif.wready));

  	for(int unsigned j=0 ; j<$size(mif.wstrb); j++) begin
      if(mif.wstrb[j] == 1'b1)
      tx.wdata[i][j]  = mif.wdata[8*j +: 8];
      tx.wstrb[i]  = mif.wstrb;
      tx.wlast[i]  = mif.wlast;
      end
  end 
  endtask  
  
endclass


