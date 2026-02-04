class axi_read_agent extends uvm_agent ;
`uvm_component_utils(axi_read_agent)
   
  axi_read_driver  m_driver;
  axi_rd_sequencer m_seqr;
  axi_read_monitor m_monitor;
  uvm_analysis_port#(axi_rd_tx) read_agent_ap;
  axi_rd_tx rd_txn;
  
function new(string name="axi_read_driver",uvm_component parent =null);
super.new(name,parent);
endfunction

virtual function void build_phase(uvm_phase phase);
  read_agent_ap = new("read_agent_ap",this);
  m_driver = axi_read_driver::type_id::create("m_driver",this);
  m_monitor = axi_read_monitor::type_id::create("m_monitor",this);
  m_seqr = axi_rd_sequencer::type_id::create("m_seqr",this);
endfunction
   
virtual function void connect_phase(uvm_phase phase);
  m_driver.seq_item_port.connect(m_seqr.seq_item_export);
  m_monitor.mon_ap.connect(read_agent_ap);
endfunction
   
 endclass