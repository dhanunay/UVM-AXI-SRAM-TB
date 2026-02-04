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
 
 logic [ID_WIDTH-1:0] wid;
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

 endinterface