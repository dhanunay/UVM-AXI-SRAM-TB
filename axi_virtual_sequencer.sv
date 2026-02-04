    
class axi_virtual_sequencer extends uvm_sequencer;
 `uvm_component_utils(axi_virtual_sequencer)
  axi_wr_sequencer      m_write_seqr;
  axi_rd_sequencer      m_read_seqr;

function new(string name = "axi_virtual_sequencer", uvm_component parent = null);
 super.new(name,parent);
endfunction

endclass