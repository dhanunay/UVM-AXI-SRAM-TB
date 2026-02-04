class  axi_wr_sequencer extends uvm_sequencer#(axi_wr_tx);
`uvm_component_utils(axi_wr_sequencer)

function new(string name = "axi_wr_sequencer", uvm_component parent = null);
super.new(name,parent);
endfunction
  
endclass
