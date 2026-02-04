class axi_read_driver extends  uvm_driver#(axi_rd_tx);
`uvm_component_utils(axi_read_driver)
 virtual interface axi4_intf vif;
  
function new(string name="axi_read_driver",uvm_component parent =null);
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
axi_rd_txn(); 
join_none
endtask
  
task axi_rd_txn();
  fork 
    read_addr_phase();
    read_data_phase();
  join_none
endtask

task read_data_phase();
  forever begin 
    @(posedge vif.clk);
    if(vif.rst) 
      vif.rready <= 1'b0;
    else 
    vif.rready <= 1'b1;
  end 
endtask

  
task read_addr_phase();
  forever begin 
  seq_item_port.get_next_item(req);
	  `uvm_info(get_type_name,$sformatf("Got  Read Addr phase stimulus \n\t  %s",req.sprint),UVM_HIGH)
  vif.arid <= req.arid;
  vif.araddr  <= req.araddr;
  vif.arlen  <= req.arlen;
  vif.arsize <= req.arsize;
  vif.arburst <= req.arburst;
  vif.arlock <= req.arlock;
  vif.arprot <= req.arprot;
  vif.arvalid <=  1'b1;
  @(posedge vif.clk);
  `uvm_info(get_type_name," REad Addr phase waiting.. for  slave ready \n",UVM_HIGH)
  while(! vif.arready) 
  @(posedge vif.clk);
  vif.arvalid <=  1'b0;
  `uvm_info(get_type_name," REad Addr phase Got  slave ready \n",UVM_HIGH) 
  seq_item_port.item_done();
  end
endtask
endclass


  
