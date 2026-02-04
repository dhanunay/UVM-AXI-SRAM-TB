class axi_rd_tx extends uvm_sequence_item;
  rand logic [ID_WIDTH-1:0] arid;
  rand logic [ADDR_WIDTH-1:0] araddr;
  rand logic [2:0] arsize;
  rand logic [7:0] arlen;
  rand burst_t     arburst ;
  rand logic [0:0] arlock;
  rand logic [0:0] arprot;

  //response
  logic  [ID_WIDTH-1:0]  rid;
  logic [DATA_WIDTH-1:0] rdata[];
  logic rlast[];
  logic [1:0] rresp[];

  function new(string name = "axi_rd_tx");
	super.new(name);
endfunction
  
function void pre_ramdomize();
  `uvm_info("pre",$sformatf("   pre val  %p ",ar_s),UVM_LOW  )
endfunction
  
  constraint rd_c {
      arid    == ar_s.awid;
      araddr  == ar_s.awaddr;
      arlen  == ar_s.awlen;
      arsize == ar_s.awsize;
      arburst == ar_s.awburst;
  }


`uvm_object_utils_begin(axi_rd_tx)
  `uvm_field_int(arid,UVM_ALL_ON)
  `uvm_field_int(araddr,UVM_ALL_ON)
  `uvm_field_enum(burst_t,arburst,UVM_ALL_ON)
  `uvm_field_int(arlen,UVM_ALL_ON)
  `uvm_field_int(arsize,UVM_ALL_ON)
  `uvm_field_int(arlock,UVM_ALL_ON)
  `uvm_field_int(arprot,UVM_ALL_ON)
  `uvm_field_int(rid,UVM_ALL_ON)
  `uvm_field_array_int(rdata,UVM_ALL_ON) 
  `uvm_field_array_int(rresp,UVM_ALL_ON)
  `uvm_field_array_int(rlast,UVM_ALL_ON)
`uvm_object_utils_end
  

endclass
