class axi_env extends uvm_env;
`uvm_component_utils(axi_env)
  axi_master_agent m_write_agent;
  axi_read_agent    m_read_agent;
  axi_sram_predictor  m_predict;
  axi_virtual_sequencer  m_virtual_sequencer;

function new(string name = "axi_env", uvm_component parent = null);
super.new(name,parent);
endfunction 
  
function void build_phase(uvm_phase phase);
  m_write_agent = axi_master_agent::type_id::create("m_write_agent",this);
  m_read_agent = axi_read_agent::type_id::create("m_read_agent",this);
  m_predict = axi_sram_predictor::type_id::create("m_predict",this);
  m_virtual_sequencer = axi_virtual_sequencer::type_id::create("m_virtual_sequencer",this);
endfunction

function void connect_phase(uvm_phase phase);    
  m_write_agent.wr_agent_ap.connect(m_predict.wr_export);
  m_read_agent.read_agent_ap.connect(m_predict.rd_export);
  m_virtual_sequencer.m_write_seqr = m_write_agent.m_seqr;
  m_virtual_sequencer.m_read_seqr = m_read_agent.m_seqr;
endfunction
  

endclass