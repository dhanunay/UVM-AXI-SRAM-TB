typedef enum bit[1:0]{FIXED,INCR,WRAP} burst_t;

typedef struct packed{
  logic [8-1:0] awid;
  logic [15:0] awaddr;
  logic [7:0] awlen;
  logic [2:0] awsize ; 
  burst_t  awburst ;
} axi_wr_s;

 axi_wr_s axi_wr_qu[$];
axi_wr_s  ar_s;  


class axi_wr_tx extends uvm_sequence_item;
  `uvm_object_utils(axi_wr_tx)
  
static bit [ID_WIDTH-1:0] p_awid;
static bit[ADDR_WIDTH:0] p_awaddr;
  bit [ADDR_WIDTH-1:0]    end_addr;
axi_wr_s  axi_wr;
rand logic [ID_WIDTH-1:0]  awid;
rand logic [2:0]		 	 awsize;
rand logic [7:0] 			 awlen;
rand burst_t  			    awburst ;
rand logic [ADDR_WIDTH-1:0] awaddr;
rand logic [0:0] 			 awlock;
rand logic [0:0] 			 awprot;
rand logic [7:0]          wdata[][];
  
logic [(DATA_WIDTH >> 3)-1:0] wstrb[]; // DATA_WITDH/8
  logic                   wlast[];
  time                    m_time;


  
function void do_print(uvm_printer printer);
  super.do_print(printer);
  printer.print_field_int("awid",awid, $bits(awid), UVM_HEX);
  printer.print_field_int("awaddr",awaddr, $bits(awaddr), UVM_HEX);
  printer.print_string("awburst", awburst.name());
  printer.print_field_int("awlen",awlen , $bits(awlen), UVM_HEX);
  printer.print_field_int("awsize",awsize , $bits(awsize), UVM_HEX);
  printer.print_field_int("awlock",awlock , $bits(awlock), UVM_HEX);
  printer.print_field_int("awprot", awprot, $bits(awprot), UVM_HEX);
  printer.print_time("m_time",m_time);

  printer.print_array_header("wdata", wdata.size());
    foreach (wdata[i]) begin
  printer.print_array_header($sformatf("wdata[%0d]", i), wdata[i].size());
      foreach (wdata[i][j]) begin
    printer.print_field_int( $sformatf("[%0d][%0d]", i, j), wdata[i][j], DATA_WIDTH, UVM_HEX);
      end
  printer.print_array_footer();
   end
  printer.print_array_footer();

   printer.print_array_header("wstrb", wstrb.size());
    foreach (wstrb[i]) begin
      printer.print_field_int($sformatf("wstrb[%0d]", i), wstrb[i], (DATA_WIDTH >> 3),UVM_BIN);
    end
  printer.print_array_footer();

  printer.print_array_header("wlast", wlast.size());
   foreach(wlast[i]) begin
     printer.print_field_int($sformatf("wlast[%0d]",i), wlast[i], 1'b1, UVM_BIN);
  end
  printer.print_array_footer();
endfunction
  
  
  
virtual function void do_copy(uvm_object rhs);
axi_wr_tx  rhs_;
  super.do_copy(rhs);
if (!$cast(rhs_, rhs)) begin
  `uvm_fatal("DO_COPY", "Cast failed in do_copy")
end
  awid    = rhs_.awid;
  awlen   = rhs_.awlen; 
  awsize  = rhs_.awsize;
  awburst = rhs_.awburst;
  awaddr  = rhs_.awaddr;
  awlock  = rhs_.awlock;
  awprot  = rhs_.awprot;
  wdata = new[rhs_.wdata.size()];
  foreach(wdata[i]) begin
    wdata[i] = new[rhs_.wdata[i].size()];
    foreach (rhs_.wdata[i][j]) begin
      wdata[i][j] = rhs_.wdata[i][j]; 
    end 
  end
  wstrb   = rhs_.wstrb;
  wlast   = rhs_.wlast;
endfunction


function new(string name = "axi_wr_tx");
  super.new(name);
endfunction
  

constraint id_c{
   awid == p_awid+ 1'b1; 
  }
  
  
constraint addr_c{
  solve awlen before wdata;
  solve awsize,awlen before wdata;
  solve awburst before awaddr,awlen;
  awburst== WRAP ->  (awaddr%(1<<awsize)) == 0; 
  awburst== WRAP -> awlen inside { 1,3,7,15};
  awsize  inside {[0: $clog2(DATA_WIDTH>>3)  ]};   // Because DATA BUS width is 4 bytes
  awburst inside {INCR,WRAP};
  awlen inside {[1:10]};
}
    
constraint data_c{
  wdata.size == awlen+1;
  foreach(wdata[i]) {
  wdata[i].size() == 1<<awsize;
  }
    
  foreach(wdata[i]){
    foreach(wdata[i][j])
       wdata[i][j] != 0;
    }
}

function void post_randomize();
 axi_wr =  {awid,awaddr,awlen,awsize,awburst} ;
 axi_wr_qu.push_back( axi_wr);
 p_awid = awid;
 p_awaddr = awaddr;
 end_addr = (awaddr%4096) + ((1<<awsize)*(awlen+1)); 
 assert(! (end_addr > 4096 ) )    else `uvm_error(  get_type_name,  $sformatf("crossed 4 KB boundry  0x%0h - 0x%0h ", awaddr,end_addr))

endfunction

endclass
  
  
class aligned_transfer extends axi_wr_tx;
`uvm_object_utils(aligned_transfer)
  
function new(string name = "aligned_transfer");
super.new(name);
endfunction
  
constraint addr_c{
solve awlen before wdata;
solve awsize before wdata;  
 awsize <=2 ; //data bus width is 4 bytes
//awsize  inside {0}; 

awburst inside {INCR};
  awaddr[1:0] == 0 ; // aligned to 4 bytes
  awlen inside {[0:10]};
}
  
  endclass
  
  

  
  