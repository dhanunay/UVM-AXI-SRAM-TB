package axi_func_pkg;

parameter DATA_WIDTH = 32;
parameter ADDR_WIDTH = 16;
parameter ID_WIDTH   = 12;
parameter STROBE_WIDTH = (DATA_WIDTH>>3);

function  logic[ADDR_WIDTH-1:0] aligned_address(input logic[32-1:0] awaddr, input logic [7-1:0] num_bytes );
 return      (awaddr/num_bytes)* num_bytes;
endfunction

function  void byte_lane_o(input logic[ADDR_WIDTH-1:0] awaddr, input logic [7-1:0] num_bytes ,input logic [ (DATA_WIDTH>>3)-1:0]  data_bus_bytes,output logic [(DATA_WIDTH>>3)-1:0] lower_byte_lane,output logic [(DATA_WIDTH>>3)-1:0] upper_byte_lane );
  logic [ADDR_WIDTH-1:0] start_address , align_addr;
	start_address= awaddr;
     align_addr = aligned_address(awaddr,num_bytes);
    lower_byte_lane =  start_address -    (start_address/data_bus_bytes)* data_bus_bytes;
	upper_byte_lane =  align_addr  + (num_bytes-1) - (start_address/data_bus_bytes)* data_bus_bytes;
endfunction

  function  void byte_lane_n(input logic[ADDR_WIDTH-1:0] awaddr, input logic [7-1:0] num_bytes ,input logic [(DATA_WIDTH>>3)-1:0]  data_bus_bytes,output logic [(DATA_WIDTH>>3)-1:0] lower_byte_lane,output logic [(DATA_WIDTH>>3)-1:0] upper_byte_lane );
    logic [ADDR_WIDTH-1:0] start_address;
	start_address=  awaddr;
	lower_byte_lane = start_address -   (start_address/data_bus_bytes)* data_bus_bytes;

	upper_byte_lane = lower_byte_lane + num_bytes -1;
endfunction


function logic [ADDR_WIDTH-1:0] lower_wrap_boundry(input logic[ADDR_WIDTH-1:0] awaddr, input [2:0] awsize ,input logic [8-1:0] awlen );
  return (awaddr/((1'b1<<awsize)*(awlen+1'b1))) * ((1'b1<<awsize)*(awlen+1'b1));
endfunction


function logic [ADDR_WIDTH-1:0] upper_wrap_boundry(input logic[ADDR_WIDTH-1:0] awaddr, input [2:0] awsize,input logic [8-1:0] awlen );
  return   lower_wrap_boundry(awaddr,awsize,awlen)  +  ((1'b1<<awsize)*(awlen+1'b1));
endfunction

endpackage

