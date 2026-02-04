class axi_master_agent extends uvm_agent;
 `uvm_component_utils(axi_master_agent)
  axi_wr_sequencer   m_seqr;
  axi_master_driver  m_driver;
  axi_wr_monitor     m_monitor;
  uvm_analysis_port#(axi_wr_tx) wr_agent_ap;


function new(string name="axi_driver",uvm_component parent =null);
super.new(name,parent);
endfunction

function void build_phase(uvm_phase phase);
  wr_agent_ap = new("wr_agent_ap",this);
  m_seqr = axi_wr_sequencer::type_id::create("m_seqr",this);
  m_driver = axi_master_driver::type_id::create("m_driver",this);
  m_monitor = axi_wr_monitor::type_id::create("m_monitor",this);
endfunction

function void connect_phase(uvm_phase phase);
  m_driver.seq_item_port.connect(m_seqr.seq_item_export);
  m_monitor.mon_ap.connect(wr_agent_ap);
endfunction

endclass