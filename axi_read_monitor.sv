class axi_read_monitor extends uvm_monitor;
 `uvm_component_utils(axi_read_monitor)
  virtual interface axi4_intf mif;
  uvm_analysis_port#(axi_rd_tx)  mon_ap;
  int unsigned tx_count;
  axi_rd_tx tx;

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
  
task  read_ar_channel( input axi_rd_tx tx);
  @(posedge mif.clk iff(mif.arvalid && mif.arready)); 
  tx.arid = mif.arid;
  tx.araddr  = mif.araddr;
  tx.arlen  = mif.arlen;
  tx.arsize = mif.arsize;
  tx.arburst = burst_t'(mif.arburst);
  tx.arlock = mif.arlock;
  tx.arprot = mif.arprot;
endtask

task read_data_channel( input axi_rd_tx tx);
int unsigned length;
  @(posedge mif.clk iff(mif.arvalid && mif.arready));
   length = tx.arlen+1'b1;
   tx.rdata = new[length];
   tx.rresp= new[length];
   tx.rlast = new[length];
  `uvm_info(get_type_name, $sformatf("Addr: %h, ARLEN: %0d, Calculated Length: %0d",tx.araddr, tx.arlen, length), UVM_LOW)

for(int unsigned i =0;i< length ;i++) begin
  @(negedge mif.clk iff(mif.rvalid && mif.rready));
  tx.rid     =  mif.rid;
  tx.rdata[i] = mif.rdata;
  tx.rresp[i] = mif.rresp;
  tx.rlast[i] = mif.rlast;
end

endtask

virtual task run_phase(uvm_phase phase);
handle_reset();
  `uvm_info(get_type_name, " REad MOnitor Out of reset", UVM_LOW)
@(posedge mif.clk); 
 fork 
   read_monitor();
 join_none
endtask   
  
task read_monitor();
  forever begin 
   tx = axi_rd_tx::type_id::create($sformatf("read_mon_tx_%0d",tx_count));
    fork    
      read_ar_channel( tx);
      read_data_channel(tx);
    join
    mon_ap.write(tx);
    tx_count++;
  end 
endtask 
  
endclass

    
