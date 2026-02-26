covergroup wr_tx_fields(string my_name, ref axi_wr_tx tx) with function sample( logic[STROBE_WIDTH-1:0] wstrb);
  option.per_instance = 1;
  option.at_least =1;
  option.name = my_name;
  option.goal= 100;
  
  cp_awaddr : coverpoint tx.awaddr{
    bins b1 = {[0 :'hFF]};
    bins b2 = {['h100:'hFF_FF]};
  }
  
  cp_awsize : coverpoint tx.awsize {
  bins b1[$clog2(DATA_WIDTH >> 3)+1] = {[0:$clog2(DATA_WIDTH >> 3)]};  //    0, 1, 2  for 4 bytes Data bus 
  }
  
  cp_awlen : coverpoint tx.awlen {
    bins b1[] = {[0:10]};
  }
  
  cp_awburst :coverpoint tx.awburst {
  bins b1 = {INCR};
  bins b2 = {WRAP};
  ignore_bins b3 = {FIXED};
  }

  cp_wstrb : coverpoint wstrb {
    bins b1[$clog2(DATA_WIDTH >> 3)+1] = {[1:(DATA_WIDTH >> 3)]} with ( $onehot(item)) ; // 1 2 4 8 16 .... bytes
}
endgroup


class axi_coverage;
  
 wr_tx_fields  axi_fc_inst;
 
  function new(string name , ref axi_wr_tx transaction);
    axi_fc_inst = new(name, transaction);
  endfunction
  
  function void sample( logic[STROBE_WIDTH-1:0] wstrb );
    if(axi_fc_inst != null)
      axi_fc_inst.sample( wstrb);
   // `uvm_info("AXI coverage",  $sformatf("get_coverage   = %0.2f",axi_fc_inst.get_coverage()),UVM_LOW)
  endfunction
  
endclass
