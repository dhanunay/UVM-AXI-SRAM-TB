interface axi4_intf#(
    parameter ADDRESS_WIDTH=16,
	parameter DATA_WIDTH=32,
	parameter ID_WIDTH= 12)
(input logic clk, input logic rst);

// write address channels 

 logic [ID_WIDTH-1:0]  awid;
 logic [ADDRESS_WIDTH-1:0] awaddr;
 logic [7:0]  awlen;
 logic [2:0]   awsize;
 logic [1:0]  awburst;
 logic [0:0]  awlock;
 logic [2:0]  awprot;
 logic [0:0]  awvalid;
 logic [0:0]  awready;
 
 // write data channel
 
 logic [DATA_WIDTH-1:0] wdata;
 logic [(DATA_WIDTH/8)-1 :0] wstrb;
 logic [0:0] wlast;
 logic [0:0] wvalid;
 logic [0:0] wready;
 
 /// write response channel
 logic [ID_WIDTH-1:0] bid;
 logic [1:0] bresp;
 logic [0:0] bvalid;
 logic [0:0] bready;
 
 // Read address channel
 
 logic [ID_WIDTH-1:0]  arid;
 logic [ADDRESS_WIDTH-1:0] araddr;
 logic [7:0] arlen;
 logic [2:0] arsize;
 logic [1:0] arburst;
 logic [0:0] arlock;
 logic [2:0] arprot;
 logic [0:0] arvalid;
 logic [0:0] arready;
 
 // Read write channel
 
 logic [ID_WIDTH-1:0]  rid;
 logic [DATA_WIDTH-1:0] rdata;
 logic [1:0] rresp;
 logic [0:0] rlast;
 logic [0:0] rvalid;
 logic [0:0] rready;
 
 // addtional signals 
  
  logic four_4Kb_voilation;

assert property (@(posedge clk) disable iff(!rst)  (awvalid &&(!awready))  |=> $stable(awaddr) );
assert property (@(posedge clk) disable iff(!rst)  (awvalid &&(!awready))  |=> $stable(awlen) );
assert property (@(posedge clk) disable iff(!rst)  (awvalid &&(!awready))  |=> $stable(awsize) );
assert property (@(posedge clk) disable iff(!rst)  (awvalid &&(!awready))  |=> $stable(awburst));

assert property (@(posedge clk) disable iff(!rst)  (wvalid &&(!wready))  |=> $stable(wdata) );
assert property (@(posedge clk) disable iff(!rst)  (wvalid &&(!wready))  |=> $stable(wstrb) );
assert property (@(posedge clk) disable iff(!rst)  (wvalid &&(!wready))  |=> $stable(wlast) );

assert property (@(posedge clk) disable iff(!rst)  (bvalid &&(bready))  |=> $stable(bid) );
assert property (@(posedge clk) disable iff(!rst)  (bvalid &&(bready))  |=> $stable(bresp) );

assert property (@(posedge clk) disable iff(!rst)  (arvalid &&(!arready))  |=> $stable(araddr));
assert property (@(posedge clk) disable iff(!rst)  (arvalid &&(!arready))  |=> $stable(arlen) );
assert property (@(posedge clk) disable iff(!rst)  (arvalid &&(!arready))  |=> $stable(arsize));
assert property (@(posedge clk) disable iff(!rst)  (arvalid &&(!arready))  |=> $stable(arburst));
  
assert property (@(posedge clk) disable iff(!rst)  rvalid && (!rready)  |=> $stable(rid) );
assert property (@(posedge clk) disable iff(!rst)  rvalid && (!rready)  |=> $stable(rdata));
assert property (@(posedge clk) disable iff(!rst)  rvalid && (!rready)  |=> $stable(rresp));
assert property (@(posedge clk) disable iff(!rst)  rvalid && (!rready)  |=> $stable(rlast));



 endinterface

