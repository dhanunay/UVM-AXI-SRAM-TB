class axi_wr_seq extends uvm_sequence#(axi_wr_tx);
`uvm_object_utils(axi_wr_seq)

function new(string name = "axi_wr_seq");
 super.new(name);
endfunction

virtual task body();
  axi_wr_tx req;
  repeat(40) begin 
    req = axi_wr_tx::type_id::create("req");
    start_item(req);
    if(! req.randomize())
     `uvm_error(get_type_name, "Randomization failed ")
    finish_item(req);
  end 
 endtask
  
endclass

class axi_rd_seq extends uvm_sequence#(axi_rd_tx);

`uvm_object_utils(axi_rd_seq)

function new(string name = "axi_rd_seq");
  super.new(name);
endfunction

virtual task body();
  axi_rd_tx req;
  repeat(40) begin 
    req = axi_rd_tx::type_id::create("req");
    wait (axi_wr_qu.size()>0) ; 
    ar_s =   axi_wr_qu.pop_front(); 
    `uvm_info(" qu_size",  $sformatf("Popped val: %p", ar_s),UVM_LOW)
    start_item(req);
    if(! req.randomize())
     `uvm_error(get_type_name, "Randomization failed ")
    finish_item(req);
    `uvm_info(" qu_size _finish ","",UVM_LOW)
  end 
endtask
  
endclass
    
class axi_virtual_sequence extends uvm_sequence;
`uvm_object_utils(axi_virtual_sequence)

axi_wr_seq 			  m_wr_seq;
axi_rd_seq  	      m_rd_seq;
axi_wr_sequencer      m_write_seqr;
axi_rd_sequencer      m_read_seqr;
  
 `uvm_declare_p_sequencer(axi_virtual_sequencer)
  
  
function new(string name = "axi_virtual_sequence");
	super.new(name);
endfunction

virtual function void build_phase(uvm_phase);
endfunction

virtual task body();
  m_wr_seq = axi_wr_seq::type_id::create("m_wr_seq");
  m_rd_seq = axi_rd_seq::type_id::create("m_rd_seq");
  
      m_wr_seq.start(p_sequencer.m_write_seqr);
      m_rd_seq.start(p_sequencer.m_read_seqr);

endtask
  
endclass

    
