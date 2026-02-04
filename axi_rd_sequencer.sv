class  axi_rd_sequencer extends uvm_sequencer #(axi_rd_tx);
`uvm_component_utils(axi_rd_sequencer)

function new(string name = "axi_rd_sequencer", uvm_component parent = null);
 super.new(name,parent);
endfunction
  
endclass