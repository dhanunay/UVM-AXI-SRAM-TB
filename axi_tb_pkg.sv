package axi_tb_pkg;
import uvm_pkg::*;
`include "uvm_macros.svh"

import axi_func_pkg::*;

`include "axi_wr_tx.sv"
`include "axi_wr_sequencer.sv"
`include "axi_master_driver.sv"
`include "axi_wr_monitor.sv"
`include "axi_master_agent.sv"


`include "axi_rd_tx.sv"
`include "axi_rd_sequencer.sv"
`include "axi_read_driver.sv"
`include "axi_read_monitor.sv"
`include "axi_read_agent.sv"


`include "axi_virtual_sequencer.sv"
`include "axi_virtual_sequence.sv"
`include "axi_sram_predictor.sv"

`include "axi_env.sv"
`include "axi_tests.sv"







endpackage