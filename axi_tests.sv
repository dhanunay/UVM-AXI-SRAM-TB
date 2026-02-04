class axi_write_read_test extends uvm_test;
`uvm_component_utils(axi_write_read_test)
  axi_env m_env;
  axi_virtual_sequence v_seq;

function new(string name = "axi_write_read_test", uvm_component parent = null);
super.new(name,parent);
endfunction

function void build_phase(uvm_phase phase);
m_env = axi_env::type_id::create("m_env",this);
endfunction

virtual task run_phase(uvm_phase phase);
v_seq = axi_virtual_sequence::type_id::create("v_seq");
phase.raise_objection(this);
  v_seq.start(m_env.m_virtual_sequencer);
phase.drop_objection(this);
  `uvm_info(" phase objection dropped", $sformatf("  phase objection dropped "),UVM_LOW)    

//  phase.phase_done.set_drain_time(this,500);

endtask
endclass
  
/////////////////////////////////New test/////////////////////////////////////////////////////////////////////////////


class aligned_transfer_test extends axi_write_read_test;
`uvm_component_utils(aligned_transfer_test)

function new(string name = "aligned_transfer_test", uvm_component parent = null);
super.new(name,parent);
endfunction  

function void build_phase(uvm_phase phase);
set_type_override_by_type(axi_wr_tx::get_type(), aligned_transfer::get_type());
super.build_phase(phase);

endfunction    

endclass

  
  