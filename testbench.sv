

// import uvm_pkg::*;
// `include "uvm_macros.svh"
`include "axi4_intf.sv"
import axi_tb_pkg::*;


module tb_top;

logic clk,rst;
  
initial begin 
clk = 1'b0;
forever  #5 clk = ~clk;
end 

initial begin 
	rst = 1'b1;
	#25 rst = 1'b0;
end 
  
 axi4_intf   intf_(clk,rst);

 axi_dut DUT(
    .clk(clk),
    .rst(rst),    
   .s_axi_awid(intf_.awid),
   .s_axi_awaddr(intf_.awaddr),
   .s_axi_awlen(intf_.awlen),
   .s_axi_awsize(intf_.awsize),
   .s_axi_awburst(intf_.awburst),
   .s_axi_awlock(intf_.awlock),
   .s_axi_awcache(),
   .s_axi_awprot(),
   .s_axi_awvalid(intf_.awvalid),
   .s_axi_awready(intf_.awready),

   .s_axi_wdata(intf_.wdata),
   .s_axi_wstrb(intf_.wstrb),
   .s_axi_wlast(intf_.wlast),
   .s_axi_wvalid(intf_.wvalid),
   .s_axi_wready(intf_.wready),

   .s_axi_bid(intf_.bid),
   .s_axi_bresp(intf_.bresp),
   .s_axi_bvalid(intf_.bvalid),
   .s_axi_bready(intf_.bready),
   .s_axi_arid(intf_.arid),

   .s_axi_araddr(intf_.araddr),
   .s_axi_arlen(intf_.arlen),
   .s_axi_arsize(intf_.arsize),
   .s_axi_arburst(intf_.arburst),
   .s_axi_arlock(intf_.arlock),
   .s_axi_arcache(),
   .s_axi_arprot(),
   .s_axi_arvalid(intf_.arvalid),
   .s_axi_arready(intf_.arready),
   
   .s_axi_rid(intf_.rid),
   .s_axi_rdata(intf_.rdata),
   .s_axi_rresp(intf_.rresp),
   .s_axi_rlast(intf_.rlast),
   .s_axi_rvalid(intf_.rvalid),
   .s_axi_rready(intf_.rready)
);





initial begin
$dumpfile("axi_sram.vcd");
$dumpvars;
uvm_config_db#(virtual axi4_intf) ::set(null,"*","axi_intf",intf_);
run_test("axi_write_read_test");
end 

endmodule


