Design source : https://github.com/alexforencich

Axi sram with OUT outstanding transactions 

supports INCR and WRAP Burst
<img width="930" height="661" alt="Screenshot from 2026-07-02 11-50-01" src="https://github.com/user-attachments/assets/90d9d5ab-075d-4a44-8cac-6bb451c89486" />


Predictor uses AI generated wstsrb calculations ("predict_wstrb" function)to comapare Manually  written driver wstrb calculations

'''
waveform
'''
<img width="1707" height="1015" alt="Screenshot 2026-07-16 at 12 35 02 PM" src="https://github.com/user-attachments/assets/013ed52c-1347-4cac-b6ce-65d9f8e800ef" />


''' 
run log '''

1//etc/uvm-1.2/src/seq/uvm_seq.svh'.


Compiler version X-2025.06-SP1_Full64; Runtime version X-2025.06-SP1_Full64;  Jul 16 02:54 2026
NOTE: automatic random seed used: 1412403931
UVM_INFO /apps/vcsmx/vcs/X-2025.06-SP1//etc/uvm-1.2/src/base/uvm_root.svh(407) @ 0: reporter [UVM/RELNOTES] 
----------------------------------------------------------------
UVM-1.2.Synopsys
(C) 2007-2014 Mentor Graphics Corporation
(C) 2007-2014 Cadence Design Systems, Inc.
(C) 2006-2014 Synopsys, Inc.
(C) 2011-2013 Cypress Semiconductor Corp.
(C) 2013-2014 NVIDIA Corporation
----------------------------------------------------------------

  ***********       IMPORTANT RELEASE NOTES         ************

  You are using a version of the UVM library that has been compiled
  with `UVM_NO_DEPRECATED undefined.
  See http://www.eda.org/svdb/view.php?id=3313 for more details.

  You are using a version of the UVM library that has been compiled
  with `UVM_OBJECT_DO_NOT_NEED_CONSTRUCTOR undefined.
  See http://www.eda.org/svdb/view.php?id=3770 for more details.

      (Specify +UVM_NO_RELNOTES to turn off this notice)

UVM_INFO @ 0: reporter [RNTST] Running test axi_write_read_test...
UVM_INFO axi_read_driver.sv(21) @ 25: uvm_test_top.m_env.m_read_agent.m_driver [axi_read_driver] Out of reset
UVM_INFO axi_read_monitor.sv(56) @ 25: uvm_test_top.m_env.m_read_agent.m_monitor [axi_read_monitor]  REad MOnitor Out of reset
UVM_INFO axi_master_driver.sv(23) @ 25: uvm_test_top.m_env.m_write_agent.m_driver [axi_master_driver] Out of reset
UVM_INFO axi_wr_monitor.sv(29) @ 25: uvm_test_top.m_env.m_write_agent.m_monitor [axi_wr_monitor]  MOnitor Out of reset
UVM_INFO axi_sram_predictor.sv(87) @ 125: uvm_test_top.m_env.m_predict [axi_sram_predictor]  Write_agent    
   ----------------------------------------
Name             Type       Size  Value 
----------------------------------------
monitor_wr_tx_0  axi_wr_tx  -     @1062 
  awid           integral   12    'h1   
  awaddr         integral   16    'h7450
  awburst        string     4     WRAP  
  awlen          integral   8     'h7   
  awsize         integral   3     'h2   
  awlock         integral   1     'h1   
  awprot         integral   1     'h0   
  m_time         time       64    0     
  wdata          array      8     -     
    wdata[0]     array      4     -     
      [0][0]     integral   32    'h7   
      [0][1]     integral   32    'h80  
      [0][2]     integral   32    'hcf  
      [0][3]     integral   32    'hb   
    wdata[1]     array      4     -     
      [1][0]     integral   32    'h60  
      [1][1]     integral   32    'hfd  
      [1][2]     integral   32    'hf9  
      [1][3]     integral   32    'h2a  
    wdata[2]     array      4     -     
      [2][0]     integral   32    'hfa  
      [2][1]     integral   32    'h1b  
      [2][2]     integral   32    'h8b  
      [2][3]     integral   32    'h2c  
    wdata[3]     array      4     -     
      [3][0]     integral   32    'hae  
      [3][1]     integral   32    'h4f  
      [3][2]     integral   32    'h5   
      [3][3]     integral   32    'hb6  
    wdata[4]     array      4     -     
      [4][0]     integral   32    'he2  
      [4][1]     integral   32    'h2a  
      [4][2]     integral   32    'ha5  
      [4][3]     integral   32    'ha4  
    wdata[5]     array      4     -     
      [5][0]     integral   32    'hcf  
      [5][1]     integral   32    'h1c  
      [5][2]     integral   32    'hc5  
      [5][3]     integral   32    'hd8  
    wdata[6]     array      4     -     
      [6][0]     integral   32    'he8  
      [6][1]     integral   32    'hf0  
      [6][2]     integral   32    'h69  
      [6][3]     integral   32    'h8b  
    wdata[7]     array      4     -     
      [7][0]     integral   32    'h31  
      [7][1]     integral   32    'hf3  
      [7][2]     integral   32    'h19  
      [7][3]     integral   32    'hbb  
  wstrb          array      8     -     
    wstrb[0]     integral   4     'b1111
    wstrb[1]     integral   4     'b1111
    wstrb[2]     integral   4     'b1111
    wstrb[3]     integral   4     'b1111
    wstrb[4]     integral   4     'b1111
    wstrb[5]     integral   4     'b1111
    wstrb[6]     integral   4     'b1111
    wstrb[7]     integral   4     'b1111
  wlast          array      8     -     
    wlast[0]     integral   1     'b0   
    wlast[1]     integral   1     'b0   
    wlast[2]     integral   1     'b0   
    wlast[3]     integral   1     'b0   
    wlast[4]     integral   1     'b0   
    wlast[5]     integral   1     'b0   
    wlast[6]     integral   1     'b0   
    wlast[7]     integral   1     'b1   
----------------------------------------
 
UVM_INFO axi_sram_predictor.sv(181) @ 125: uvm_test_top.m_env.m_predict [task write] 
UVM_INFO axi_sram_predictor.sv(87) @ 215: uvm_test_top.m_env.m_predict [axi_sram_predictor]  Write_agent    
   ----------------------------------------
Name             Type       Size  Value 
----------------------------------------
monitor_wr_tx_1  axi_wr_tx  -     @1079 
  awid           integral   12    'h2   
  awaddr         integral   16    'hdb94
  awburst        string     4     WRAP  
  awlen          integral   8     'h7   
  awsize         integral   3     'h2   
  awlock         integral   1     'h0   
  awprot         integral   1     'h0   
  m_time         time       64    0     
  wdata          array      8     -     
    wdata[0]     array      4     -     
      [0][0]     integral   32    'he2  
      [0][1]     integral   32    'h4   
      [0][2]     integral   32    'h9   
      [0][3]     integral   32    'hcc  
    wdata[1]     array      4     -     
      [1][0]     integral   32    'hba  
      [1][1]     integral   32    'h7b  
      [1][2]     integral   32    'hf   
      [1][3]     integral   32    'h89  
    wdata[2]     array      4     -     
      [2][0]     integral   32    'h23  
      [2][1]     integral   32    'h13  
      [2][2]     integral   32    'hf0  
      [2][3]     integral   32    'h1d  
    wdata[3]     array      4     -     
      [3][0]     integral   32    'h26  
      [3][1]     integral   32    'ha0  
      [3][2]     integral   32    'hcd  
      [3][3]     integral   32    'haf  
    wdata[4]     array      4     -     
      [4][0]     integral   32    'hfc  
      [4][1]     integral   32    'h5f  
      [4][2]     integral   32    'h25  
      [4][3]     integral   32    'h6f  
    wdata[5]     array      4     -     
      [5][0]     integral   32    'h8   
      [5][1]     integral   32    'hc6  
      [5][2]     integral   32    'ha7  
      [5][3]     integral   32    'hd0  
    wdata[6]     array      4     -     
      [6][0]     integral   32    'hf9  
      [6][1]     integral   32    'hc5  
      [6][2]     integral   32    'had  
      [6][3]     integral   32    'h1f  
    wdata[7]     array      4     -     
      [7][0]     integral   32    'h81  
      [7][1]     integral   32    'h74  
      [7][2]     integral   32    'h31  
      [7][3]     integral   32    'hea  
  wstrb          array      8     -     
    wstrb[0]     integral   4     'b1111
    wstrb[1]     integral   4     'b1111
    wstrb[2]     integral   4     'b1111
    wstrb[3]     integral   4     'b1111
    wstrb[4]     integral   4     'b1111
    wstrb[5]     integral   4     'b1111
    wstrb[6]     integral   4     'b1111
    wstrb[7]     integral   4     'b1111
  wlast          array      8     -     
    wlast[0]     integral   1     'b0   
    wlast[1]     integral   1     'b0   
    wlast[2]     integral   1     'b0   
    wlast[3]     integral   1     'b0   
    wlast[4]     integral   1     'b0   
    wlast[5]     integral   1     'b0   
    wlast[6]     integral   1     'b0   
    wlast[7]     integral   1     'b1   
----------------------------------------
 
UVM_INFO axi_sram_predictor.sv(181) @ 215: uvm_test_top.m_env.m_predict [task write] 
UVM_INFO axi_sram_predictor.sv(87) @ 325: uvm_test_top.m_env.m_predict [axi_sram_predictor]  Write_agent    
   ----------------------------------------
Name             Type       Size  Value 
----------------------------------------
monitor_wr_tx_2  axi_wr_tx  -     @1095 
  awid           integral   12    'h3   
  awaddr         integral   16    'hc3ef
  awburst        string     4     INCR  
  awlen          integral   8     'h9   
  awsize         integral   3     'h1   
  awlock         integral   1     'h0   
  awprot         integral   1     'h0   
  m_time         time       64    0     
  wdata          array      10    -     
    wdata[0]     array      4     -     
      [0][0]     integral   32    'hxx  
      [0][1]     integral   32    'hxx  
      [0][2]     integral   32    'hxx  
      [0][3]     integral   32    'h0   
    wdata[1]     array      4     -     
      [1][0]     integral   32    'h7f  
      [1][1]     integral   32    'h76  
      [1][2]     integral   32    'hxx  
      [1][3]     integral   32    'hxx  
    wdata[2]     array      4     -     
      [2][0]     integral   32    'hxx  
      [2][1]     integral   32    'hxx  
      [2][2]     integral   32    'h0   
      [2][3]     integral   32    'h0   
    wdata[3]     array      4     -     
      [3][0]     integral   32    'h22  
      [3][1]     integral   32    'h2c  
      [3][2]     integral   32    'hxx  
      [3][3]     integral   32    'hxx  
    wdata[4]     array      4     -     
      [4][0]     integral   32    'hxx  
      [4][1]     integral   32    'hxx  
      [4][2]     integral   32    'h0   
      [4][3]     integral   32    'h0   
    wdata[5]     array      4     -     
      [5][0]     integral   32    'h5f  
      [5][1]     integral   32    'ha6  
      [5][2]     integral   32    'hxx  
      [5][3]     integral   32    'hxx  
    wdata[6]     array      4     -     
      [6][0]     integral   32    'hxx  
      [6][1]     integral   32    'hxx  
      [6][2]     integral   32    'h0   
      [6][3]     integral   32    'h0   
    wdata[7]     array      4     -     
      [7][0]     integral   32    'h3   
      [7][1]     integral   32    'he5  
      [7][2]     integral   32    'hxx  
      [7][3]     integral   32    'hxx  
    wdata[8]     array      4     -     
      [8][0]     integral   32    'hxx  
      [8][1]     integral   32    'hxx  
      [8][2]     integral   32    'h0   
      [8][3]     integral   32    'h0   
    wdata[9]     array      4     -     
      [9][0]     integral   32    'hf0  
      [9][1]     integral   32    'h10  
      [9][2]     integral   32    'hxx  
      [9][3]     integral   32    'hxx  
  wstrb          array      10    -     
    wstrb[0]     integral   4     'b1000
    wstrb[1]     integral   4     'b11  
    wstrb[2]     integral   4     'b1100
    wstrb[3]     integral   4     'b11  
    wstrb[4]     integral   4     'b1100
    wstrb[5]     integral   4     'b11  
    wstrb[6]     integral   4     'b1100
    wstrb[7]     integral   4     'b11  
    wstrb[8]     integral   4     'b1100
    wstrb[9]     integral   4     'b11  
  wlast          array      10    -     
    wlast[0]     integral   1     'b0   
    wlast[1]     integral   1     'b0   
    wlast[2]     integral   1     'b0   
    wlast[3]     integral   1     'b0   
    wlast[4]     integral   1     'b0   
    wlast[5]     integral   1     'b0   
    wlast[6]     integral   1     'b0   
    wlast[7]     integral   1     'b0   
    wlast[8]     integral   1     'b0   
    wlast[9]     integral   1     'b1   
----------------------------------------
 
UVM_INFO axi_sram_predictor.sv(181) @ 325: uvm_test_top.m_env.m_predict [task write] 
UVM_INFO axi_sram_predictor.sv(87) @ 355: uvm_test_top.m_env.m_predict [axi_sram_predictor]  Write_agent    
   ----------------------------------------
Name             Type       Size  Value 
----------------------------------------
monitor_wr_tx_3  axi_wr_tx  -     @1111 
  awid           integral   12    'h4   
  awaddr         integral   16    'h9528
  awburst        string     4     WRAP  
  awlen          integral   8     'h1   
  awsize         integral   3     'h2   
  awlock         integral   1     'h0   
  awprot         integral   1     'h0   
  m_time         time       64    0     
  wdata          array      2     -     
    wdata[0]     array      4     -     
      [0][0]     integral   32    'ha3  
      [0][1]     integral   32    'hf4  
      [0][2]     integral   32    'h9f  
      [0][3]     integral   32    'hc5  
    wdata[1]     array      4     -     
      [1][0]     integral   32    'ha9  
      [1][1]     integral   32    'h7f  
      [1][2]     integral   32    'h8e  
      [1][3]     integral   32    'h34  
  wstrb          array      2     -     
    wstrb[0]     integral   4     'b1111
    wstrb[1]     integral   4     'b1111
  wlast          array      2     -     
    wlast[0]     integral   1     'b0   
    wlast[1]     integral   1     'b1   
----------------------------------------
 
UVM_INFO axi_sram_predictor.sv(181) @ 355: uvm_test_top.m_env.m_predict [task write] 
UVM_INFO axi_sram_predictor.sv(87) @ 465: uvm_test_top.m_env.m_predict [axi_sram_predictor]  Write_agent    
   ----------------------------------------
Name             Type       Size  Value 
----------------------------------------
monitor_wr_tx_4  axi_wr_tx  -     @1127 
  awid           integral   12    'h5   
  awaddr         integral   16    'hb22 
  awburst        string     4     INCR  
  awlen          integral   8     'h9   
  awsize         integral   3     'h0   
  awlock         integral   1     'h0   
  awprot         integral   1     'h1   
  m_time         time       64    0     
  wdata          array      10    -     
    wdata[0]     array      4     -     
      [0][0]     integral   32    'hxx  
      [0][1]     integral   32    'hxx  
      [0][2]     integral   32    'h0   
      [0][3]     integral   32    'hxx  
    wdata[1]     array      4     -     
      [1][0]     integral   32    'hxx  
      [1][1]     integral   32    'hxx  
      [1][2]     integral   32    'hxx  
      [1][3]     integral   32    'h0   
    wdata[2]     array      4     -     
      [2][0]     integral   32    'h11  
      [2][1]     integral   32    'hxx  
      [2][2]     integral   32    'hxx  
      [2][3]     integral   32    'hxx  
    wdata[3]     array      4     -     
      [3][0]     integral   32    'hxx  
      [3][1]     integral   32    'h0   
      [3][2]     integral   32    'hxx  
      [3][3]     integral   32    'hxx  
    wdata[4]     array      4     -     
      [4][0]     integral   32    'hxx  
      [4][1]     integral   32    'hxx  
      [4][2]     integral   32    'h0   
      [4][3]     integral   32    'hxx  
    wdata[5]     array      4     -     
      [5][0]     integral   32    'hxx  
      [5][1]     integral   32    'hxx  
      [5][2]     integral   32    'hxx  
      [5][3]     integral   32    'h0   
    wdata[6]     array      4     -     
      [6][0]     integral   32    'h11  
      [6][1]     integral   32    'hxx  
      [6][2]     integral   32    'hxx  
      [6][3]     integral   32    'hxx  
    wdata[7]     array      4     -     
      [7][0]     integral   32    'hxx  
      [7][1]     integral   32    'h0   
      [7][2]     integral   32    'hxx  
      [7][3]     integral   32    'hxx  
    wdata[8]     array      4     -     
      [8][0]     integral   32    'hxx  
      [8][1]     integral   32    'hxx  
      [8][2]     integral   32    'h0   
      [8][3]     integral   32    'hxx  
    wdata[9]     array      4     -     
      [9][0]     integral   32    'hxx  
      [9][1]     integral   32    'hxx  
      [9][2]     integral   32    'hxx  
      [9][3]     integral   32    'h0   
  wstrb          array      10    -     
    wstrb[0]     integral   4     'b100 
    wstrb[1]     integral   4     'b1000
    wstrb[2]     integral   4     'b1   
    wstrb[3]     integral   4     'b10  
    wstrb[4]     integral   4     'b100 
    wstrb[5]     integral   4     'b1000
    wstrb[6]     integral   4     'b1   
    wstrb[7]     integral   4     'b10  
    wstrb[8]     integral   4     'b100 
    wstrb[9]     integral   4     'b1000
  wlast          array      10    -     
    wlast[0]     integral   1     'b0   
    wlast[1]     integral   1     'b0   
    wlast[2]     integral   1     'b0   
    wlast[3]     integral   1     'b0   
    wlast[4]     integral   1     'b0   
    wlast[5]     integral   1     'b0   
    wlast[6]     integral   1     'b0   
    wlast[7]     integral   1     'b0   
    wlast[8]     integral   1     'b0   
    wlast[9]     integral   1     'b1   
----------------------------------------
 
UVM_INFO axi_sram_predictor.sv(181) @ 465: uvm_test_top.m_env.m_predict [task write] 
UVM_INFO axi_sram_predictor.sv(87) @ 555: uvm_test_top.m_env.m_predict [axi_sram_predictor]  Write_agent    
   ----------------------------------------
Name             Type       Size  Value 
----------------------------------------
monitor_wr_tx_5  axi_wr_tx  -     @1143 
  awid           integral   12    'h6   
  awaddr         integral   16    'h49cc
  awburst        string     4     WRAP  
  awlen          integral   8     'h7   
  awsize         integral   3     'h2   
  awlock         integral   1     'h1   
  awprot         integral   1     'h1   
  m_time         time       64    0     
  wdata          array      8     -     
    wdata[0]     array      4     -     
      [0][0]     integral   32    'h5b  
      [0][1]     integral   32    'h39  
      [0][2]     integral   32    'h9   
      [0][3]     integral   32    'h4b  
    wdata[1]     array      4     -     
      [1][0]     integral   32    'hd   
      [1][1]     integral   32    'h1a  
      [1][2]     integral   32    'h21  
      [1][3]     integral   32    'hbd  
    wdata[2]     array      4     -     
      [2][0]     integral   32    'hf2  
      [2][1]     integral   32    'h17  
      [2][2]     integral   32    'hd1  
      [2][3]     integral   32    'hd6  
    wdata[3]     array      4     -     
      [3][0]     integral   32    'hfe  
      [3][1]     integral   32    'h3a  
      [3][2]     integral   32    'h54  
      [3][3]     integral   32    'h76  
    wdata[4]     array      4     -     
      [4][0]     integral   32    'h1   
      [4][1]     integral   32    'h1a  
      [4][2]     integral   32    'h51  
      [4][3]     integral   32    'h8   
    wdata[5]     array      4     -     
      [5][0]     integral   32    'h32  
      [5][1]     integral   32    'h6d  
      [5][2]     integral   32    'hbd  
      [5][3]     integral   32    'h42  
    wdata[6]     array      4     -     
      [6][0]     integral   32    'h8e  
      [6][1]     integral   32    'h14  
      [6][2]     integral   32    'he2  
      [6][3]     integral   32    'hb3  
    wdata[7]     array      4     -     
      [7][0]     integral   32    'h49  
      [7][1]     integral   32    'hd3  
      [7][2]     integral   32    'h7f  
      [7][3]     integral   32    'h45  
  wstrb          array      8     -     
    wstrb[0]     integral   4     'b1111
    wstrb[1]     integral   4     'b1111
    wstrb[2]     integral   4     'b1111
    wstrb[3]     integral   4     'b1111
    wstrb[4]     integral   4     'b1111
    wstrb[5]     integral   4     'b1111
    wstrb[6]     integral   4     'b1111
    wstrb[7]     integral   4     'b1111
  wlast          array      8     -     
    wlast[0]     integral   1     'b0   
    wlast[1]     integral   1     'b0   
    wlast[2]     integral   1     'b0   
    wlast[3]     integral   1     'b0   
    wlast[4]     integral   1     'b0   
    wlast[5]     integral   1     'b0   
    wlast[6]     integral   1     'b0   
    wlast[7]     integral   1     'b1   
----------------------------------------
 
UVM_INFO axi_sram_predictor.sv(181) @ 555: uvm_test_top.m_env.m_predict [task write] 
UVM_INFO axi_sram_predictor.sv(87) @ 605: uvm_test_top.m_env.m_predict [axi_sram_predictor]  Write_agent    
   ----------------------------------------
Name             Type       Size  Value 
----------------------------------------
monitor_wr_tx_6  axi_wr_tx  -     @1159 
  awid           integral   12    'h7   
  awaddr         integral   16    'h4c40
  awburst        string     4     WRAP  
  awlen          integral   8     'h3   
  awsize         integral   3     'h2   
  awlock         integral   1     'h1   
  awprot         integral   1     'h0   
  m_time         time       64    0     
  wdata          array      4     -     
    wdata[0]     array      4     -     
      [0][0]     integral   32    'hcf  
      [0][1]     integral   32    'hdf  
      [0][2]     integral   32    'h47  
      [0][3]     integral   32    'hf7  
    wdata[1]     array      4     -     
      [1][0]     integral   32    'h75  
      [1][1]     integral   32    'hd7  
      [1][2]     integral   32    'ha9  
      [1][3]     integral   32    'hb2  
    wdata[2]     array      4     -     
      [2][0]     integral   32    'h6   
      [2][1]     integral   32    'h83  
      [2][2]     integral   32    'hd4  
      [2][3]     integral   32    'h7c  
    wdata[3]     array      4     -     
      [3][0]     integral   32    'h49  
      [3][1]     integral   32    'hb3  
      [3][2]     integral   32    'hd4  
      [3][3]     integral   32    'h18  
  wstrb          array      4     -     
    wstrb[0]     integral   4     'b1111
    wstrb[1]     integral   4     'b1111
    wstrb[2]     integral   4     'b1111
    wstrb[3]     integral   4     'b1111
  wlast          array      4     -     
    wlast[0]     integral   1     'b0   
    wlast[1]     integral   1     'b0   
    wlast[2]     integral   1     'b0   
    wlast[3]     integral   1     'b1   
----------------------------------------
 
UVM_INFO axi_sram_predictor.sv(181) @ 605: uvm_test_top.m_env.m_predict [task write] 
UVM_INFO axi_sram_predictor.sv(87) @ 645: uvm_test_top.m_env.m_predict [axi_sram_predictor]  Write_agent    
   ----------------------------------------
Name             Type       Size  Value 
----------------------------------------
monitor_wr_tx_7  axi_wr_tx  -     @1175 
  awid           integral   12    'h8   
  awaddr         integral   16    'h9428
  awburst        string     4     INCR  
  awlen          integral   8     'h2   
  awsize         integral   3     'h1   
  awlock         integral   1     'h1   
  awprot         integral   1     'h0   
  m_time         time       64    0     
  wdata          array      3     -     
    wdata[0]     array      4     -     
      [0][0]     integral   32    'h8f  
      [0][1]     integral   32    'hbe  
      [0][2]     integral   32    'hxx  
      [0][3]     integral   32    'hxx  
    wdata[1]     array      4     -     
      [1][0]     integral   32    'hxx  
      [1][1]     integral   32    'hxx  
      [1][2]     integral   32    'h0   
      [1][3]     integral   32    'h0   
    wdata[2]     array      4     -     
      [2][0]     integral   32    'hde  
      [2][1]     integral   32    'hc7  
      [2][2]     integral   32    'hxx  
      [2][3]     integral   32    'hxx  
  wstrb          array      3     -     
    wstrb[0]     integral   4     'b11  
    wstrb[1]     integral   4     'b1100
    wstrb[2]     integral   4     'b11  
  wlast          array      3     -     
    wlast[0]     integral   1     'b0   
    wlast[1]     integral   1     'b0   
    wlast[2]     integral   1     'b1   
----------------------------------------
 
UVM_INFO axi_sram_predictor.sv(181) @ 645: uvm_test_top.m_env.m_predict [task write] 
UVM_INFO axi_sram_predictor.sv(87) @ 675: uvm_test_top.m_env.m_predict [axi_sram_predictor]  Write_agent    
   ----------------------------------------
Name             Type       Size  Value 
----------------------------------------
monitor_wr_tx_8  axi_wr_tx  -     @1191 
  awid           integral   12    'h9   
  awaddr         integral   16    'h9e90
  awburst        string     4     WRAP  
  awlen          integral   8     'h1   
  awsize         integral   3     'h2   
  awlock         integral   1     'h1   
  awprot         integral   1     'h1   
  m_time         time       64    0     
  wdata          array      2     -     
    wdata[0]     array      4     -     
      [0][0]     integral   32    'h42  
      [0][1]     integral   32    'had  
      [0][2]     integral   32    'ha7  
      [0][3]     integral   32    'hb6  
    wdata[1]     array      4     -     
      [1][0]     integral   32    'heb  
      [1][1]     integral   32    'h25  
      [1][2]     integral   32    'h45  
      [1][3]     integral   32    'h3e  
  wstrb          array      2     -     
    wstrb[0]     integral   4     'b1111
    wstrb[1]     integral   4     'b1111
  wlast          array      2     -     
    wlast[0]     integral   1     'b0   
    wlast[1]     integral   1     'b1   
----------------------------------------
 
UVM_INFO axi_sram_predictor.sv(181) @ 675: uvm_test_top.m_env.m_predict [task write] 
UVM_INFO axi_sram_predictor.sv(87) @ 705: uvm_test_top.m_env.m_predict [axi_sram_predictor]  Write_agent    
   ----------------------------------------
Name             Type       Size  Value 
----------------------------------------
monitor_wr_tx_9  axi_wr_tx  -     @1207 
  awid           integral   12    'ha   
  awaddr         integral   16    'hc713
  awburst        string     4     INCR  
  awlen          integral   8     'h1   
  awsize         integral   3     'h0   
  awlock         integral   1     'h0   
  awprot         integral   1     'h0   
  m_time         time       64    0     
  wdata          array      2     -     
    wdata[0]     array      4     -     
      [0][0]     integral   32    'hxx  
      [0][1]     integral   32    'hxx  
      [0][2]     integral   32    'hxx  
      [0][3]     integral   32    'h0   
    wdata[1]     array      4     -     
      [1][0]     integral   32    'hba  
      [1][1]     integral   32    'hxx  
      [1][2]     integral   32    'hxx  
      [1][3]     integral   32    'hxx  
  wstrb          array      2     -     
    wstrb[0]     integral   4     'b1000
    wstrb[1]     integral   4     'b1   
  wlast          array      2     -     
    wlast[0]     integral   1     'b0   
    wlast[1]     integral   1     'b1   
----------------------------------------
 
UVM_INFO axi_sram_predictor.sv(181) @ 705: uvm_test_top.m_env.m_predict [task write] 
UVM_INFO axi_sram_predictor.sv(87) @ 765: uvm_test_top.m_env.m_predict [axi_sram_predictor]  Write_agent    
   -----------------------------------------
Name              Type       Size  Value 
-----------------------------------------
monitor_wr_tx_10  axi_wr_tx  -     @1223 
  awid            integral   12    'hb   
  awaddr          integral   16    'hd91a
  awburst         string     4     INCR  
  awlen           integral   8     'h4   
  awsize          integral   3     'h1   
  awlock          integral   1     'h1   
  awprot          integral   1     'h1   
  m_time          time       64    0     
  wdata           array      5     -     
    wdata[0]      array      4     -     
      [0][0]      integral   32    'hxx  
      [0][1]      integral   32    'hxx  
      [0][2]      integral   32    'h0   
      [0][3]      integral   32    'h0   
    wdata[1]      array      4     -     
      [1][0]      integral   32    'h12  
      [1][1]      integral   32    'h92  
      [1][2]      integral   32    'hxx  
      [1][3]      integral   32    'hxx  
    wdata[2]      array      4     -     
      [2][0]      integral   32    'hxx  
      [2][1]      integral   32    'hxx  
      [2][2]      integral   32    'h0   
      [2][3]      integral   32    'h0   
    wdata[3]      array      4     -     
      [3][0]      integral   32    'hf5  
      [3][1]      integral   32    'hef  
      [3][2]      integral   32    'hxx  
      [3][3]      integral   32    'hxx  
    wdata[4]      array      4     -     
      [4][0]      integral   32    'hxx  
      [4][1]      integral   32    'hxx  
      [4][2]      integral   32    'h0   
      [4][3]      integral   32    'h0   
  wstrb           array      5     -     
    wstrb[0]      integral   4     'b1100
    wstrb[1]      integral   4     'b11  
    wstrb[2]      integral   4     'b1100
    wstrb[3]      integral   4     'b11  
    wstrb[4]      integral   4     'b1100
  wlast           array      5     -     
    wlast[0]      integral   1     'b0   
    wlast[1]      integral   1     'b0   
    wlast[2]      integral   1     'b0   
    wlast[3]      integral   1     'b0   
    wlast[4]      integral   1     'b1   
-----------------------------------------
 
UVM_INFO axi_sram_predictor.sv(181) @ 765: uvm_test_top.m_env.m_predict [task write] 
UVM_INFO axi_sram_predictor.sv(87) @ 795: uvm_test_top.m_env.m_predict [axi_sram_predictor]  Write_agent    
   -----------------------------------------
Name              Type       Size  Value 
-----------------------------------------
monitor_wr_tx_11  axi_wr_tx  -     @1239 
  awid            integral   12    'hc   
  awaddr          integral   16    'h1424
  awburst         string     4     WRAP  
  awlen           integral   8     'h1   
  awsize          integral   3     'h2   
  awlock          integral   1     'h1   
  awprot          integral   1     'h1   
  m_time          time       64    0     
  wdata           array      2     -     
    wdata[0]      array      4     -     
      [0][0]      integral   32    'hec  
      [0][1]      integral   32    'hee  
      [0][2]      integral   32    'ha7  
      [0][3]      integral   32    'h5a  
    wdata[1]      array      4     -     
      [1][0]      integral   32    'h36  
      [1][1]      integral   32    'h37  
      [1][2]      integral   32    'hd5  
      [1][3]      integral   32    'hec  
  wstrb           array      2     -     
    wstrb[0]      integral   4     'b1111
    wstrb[1]      integral   4     'b1111
  wlast           array      2     -     
    wlast[0]      integral   1     'b0   
    wlast[1]      integral   1     'b1   
-----------------------------------------
 
UVM_INFO axi_sram_predictor.sv(181) @ 795: uvm_test_top.m_env.m_predict [task write] 
UVM_INFO axi_sram_predictor.sv(87) @ 825: uvm_test_top.m_env.m_predict [axi_sram_predictor]  Write_agent    
   -----------------------------------------
Name              Type       Size  Value 
-----------------------------------------
monitor_wr_tx_12  axi_wr_tx  -     @1255 
  awid            integral   12    'hd   
  awaddr          integral   16    'h179d
  awburst         string     4     INCR  
  awlen           integral   8     'h1   
  awsize          integral   3     'h0   
  awlock          integral   1     'h1   
  awprot          integral   1     'h0   
  m_time          time       64    0     
  wdata           array      2     -     
    wdata[0]      array      4     -     
      [0][0]      integral   32    'hxx  
      [0][1]      integral   32    'h0   
      [0][2]      integral   32    'hxx  
      [0][3]      integral   32    'hxx  
    wdata[1]      array      4     -     
      [1][0]      integral   32    'hxx  
      [1][1]      integral   32    'hxx  
      [1][2]      integral   32    'h0   
      [1][3]      integral   32    'hxx  
  wstrb           array      2     -     
    wstrb[0]      integral   4     'b10  
    wstrb[1]      integral   4     'b100 
  wlast           array      2     -     
    wlast[0]      integral   1     'b0   
    wlast[1]      integral   1     'b1   
-----------------------------------------
 
UVM_INFO axi_sram_predictor.sv(181) @ 825: uvm_test_top.m_env.m_predict [task write] 
UVM_INFO axi_sram_predictor.sv(87) @ 875: uvm_test_top.m_env.m_predict [axi_sram_predictor]  Write_agent    
   -----------------------------------------
Name              Type       Size  Value 
-----------------------------------------
monitor_wr_tx_13  axi_wr_tx  -     @1271 
  awid            integral   12    'he   
  awaddr          integral   16    'h44bc
  awburst         string     4     WRAP  
  awlen           integral   8     'h3   
  awsize          integral   3     'h2   
  awlock          integral   1     'h0   
  awprot          integral   1     'h1   
  m_time          time       64    0     
  wdata           array      4     -     
    wdata[0]      array      4     -     
      [0][0]      integral   32    'he5  
      [0][1]      integral   32    'h25  
      [0][2]      integral   32    'h52  
      [0][3]      integral   32    'h5   
    wdata[1]      array      4     -     
      [1][0]      integral   32    'hde  
      [1][1]      integral   32    'h9b  
      [1][2]      integral   32    'hf5  
      [1][3]      integral   32    'hcd  
    wdata[2]      array      4     -     
      [2][0]      integral   32    'ha4  
      [2][1]      integral   32    'h84  
      [2][2]      integral   32    'ha2  
      [2][3]      integral   32    'ha7  
    wdata[3]      array      4     -     
      [3][0]      integral   32    'hc8  
      [3][1]      integral   32    'hac  
      [3][2]      integral   32    'h3f  
      [3][3]      integral   32    'hb3  
  wstrb           array      4     -     
    wstrb[0]      integral   4     'b1111
    wstrb[1]      integral   4     'b1111
    wstrb[2]      integral   4     'b1111
    wstrb[3]      integral   4     'b1111
  wlast           array      4     -     
    wlast[0]      integral   1     'b0   
    wlast[1]      integral   1     'b0   
    wlast[2]      integral   1     'b0   
    wlast[3]      integral   1     'b1   
-----------------------------------------
 
UVM_INFO axi_sram_predictor.sv(181) @ 875: uvm_test_top.m_env.m_predict [task write] 
UVM_INFO axi_sram_predictor.sv(87) @ 905: uvm_test_top.m_env.m_predict [axi_sram_predictor]  Write_agent    
   -----------------------------------------
Name              Type       Size  Value 
-----------------------------------------
monitor_wr_tx_14  axi_wr_tx  -     @1287 
  awid            integral   12    'hf   
  awaddr          integral   16    'h32c3
  awburst         string     4     WRAP  
  awlen           integral   8     'h1   
  awsize          integral   3     'h0   
  awlock          integral   1     'h1   
  awprot          integral   1     'h0   
  m_time          time       64    0     
  wdata           array      2     -     
    wdata[0]      array      4     -     
      [0][0]      integral   32    'hxx  
      [0][1]      integral   32    'hxx  
      [0][2]      integral   32    'hxx  
      [0][3]      integral   32    'h0   
    wdata[1]      array      4     -     
      [1][0]      integral   32    'hxx  
      [1][1]      integral   32    'hxx  
      [1][2]      integral   32    'h0   
      [1][3]      integral   32    'hxx  
  wstrb           array      2     -     
    wstrb[0]      integral   4     'b1000
    wstrb[1]      integral   4     'b100 
  wlast           array      2     -     
    wlast[0]      integral   1     'b0   
    wlast[1]      integral   1     'b1   
-----------------------------------------
 
UVM_INFO axi_sram_predictor.sv(181) @ 905: uvm_test_top.m_env.m_predict [task write] 
UVM_INFO axi_sram_predictor.sv(87) @ 985: uvm_test_top.m_env.m_predict [axi_sram_predictor]  Write_agent    
   -----------------------------------------
Name              Type       Size  Value 
-----------------------------------------
monitor_wr_tx_15  axi_wr_tx  -     @1303 
  awid            integral   12    'h10  
  awaddr          integral   16    'hed33
  awburst         string     4     INCR  
  awlen           integral   8     'h6   
  awsize          integral   3     'h0   
  awlock          integral   1     'h0   
  awprot          integral   1     'h0   
  m_time          time       64    0     
  wdata           array      7     -     
    wdata[0]      array      4     -     
      [0][0]      integral   32    'hxx  
      [0][1]      integral   32    'hxx  
      [0][2]      integral   32    'hxx  
      [0][3]      integral   32    'h0   
    wdata[1]      array      4     -     
      [1][0]      integral   32    'h77  
      [1][1]      integral   32    'hxx  
      [1][2]      integral   32    'hxx  
      [1][3]      integral   32    'hxx  
    wdata[2]      array      4     -     
      [2][0]      integral   32    'hxx  
      [2][1]      integral   32    'h0   
      [2][2]      integral   32    'hxx  
      [2][3]      integral   32    'hxx  
    wdata[3]      array      4     -     
      [3][0]      integral   32    'hxx  
      [3][1]      integral   32    'hxx  
      [3][2]      integral   32    'h0   
      [3][3]      integral   32    'hxx  
    wdata[4]      array      4     -     
      [4][0]      integral   32    'hxx  
      [4][1]      integral   32    'hxx  
      [4][2]      integral   32    'hxx  
      [4][3]      integral   32    'h0   
    wdata[5]      array      4     -     
      [5][0]      integral   32    'h49  
      [5][1]      integral   32    'hxx  
      [5][2]      integral   32    'hxx  
      [5][3]      integral   32    'hxx  
    wdata[6]      array      4     -     
      [6][0]      integral   32    'hxx  
      [6][1]      integral   32    'h0   
      [6][2]      integral   32    'hxx  
      [6][3]      integral   32    'hxx  
  wstrb           array      7     -     
    wstrb[0]      integral   4     'b1000
    wstrb[1]      integral   4     'b1   
    wstrb[2]      integral   4     'b10  
    wstrb[3]      integral   4     'b100 
    wstrb[4]      integral   4     'b1000
    wstrb[5]      integral   4     'b1   
    wstrb[6]      integral   4     'b10  
  wlast           array      7     -     
    wlast[0]      integral   1     'b0   
    wlast[1]      integral   1     'b0   
    wlast[2]      integral   1     'b0   
    wlast[3]      integral   1     'b0   
    wlast[4]      integral   1     'b0   
    wlast[5]      integral   1     'b0   
    wlast[6]      integral   1     'b1   
-----------------------------------------
 
UVM_INFO axi_sram_predictor.sv(181) @ 985: uvm_test_top.m_env.m_predict [task write] 
UVM_INFO axi_sram_predictor.sv(87) @ 1095: uvm_test_top.m_env.m_predict [axi_sram_predictor]  Write_agent    
   -----------------------------------------
Name              Type       Size  Value 
-----------------------------------------
monitor_wr_tx_16  axi_wr_tx  -     @1319 
  awid            integral   12    'h11  
  awaddr          integral   16    'h8c96
  awburst         string     4     INCR  
  awlen           integral   8     'h9   
  awsize          integral   3     'h0   
  awlock          integral   1     'h1   
  awprot          integral   1     'h1   
  m_time          time       64    0     
  wdata           array      10    -     
    wdata[0]      array      4     -     
      [0][0]      integral   32    'hxx  
      [0][1]      integral   32    'hxx  
      [0][2]      integral   32    'h0   
      [0][3]      integral   32    'hxx  
    wdata[1]      array      4     -     
      [1][0]      integral   32    'hxx  
      [1][1]      integral   32    'hxx  
      [1][2]      integral   32    'hxx  
      [1][3]      integral   32    'h0   
    wdata[2]      array      4     -     
      [2][0]      integral   32    'hef  
      [2][1]      integral   32    'hxx  
      [2][2]      integral   32    'hxx  
      [2][3]      integral   32    'hxx  
    wdata[3]      array      4     -     
      [3][0]      integral   32    'hxx  
      [3][1]      integral   32    'h0   
      [3][2]      integral   32    'hxx  
      [3][3]      integral   32    'hxx  
    wdata[4]      array      4     -     
      [4][0]      integral   32    'hxx  
      [4][1]      integral   32    'hxx  
      [4][2]      integral   32    'h0   
      [4][3]      integral   32    'hxx  
    wdata[5]      array      4     -     
      [5][0]      integral   32    'hxx  
      [5][1]      integral   32    'hxx  
      [5][2]      integral   32    'hxx  
      [5][3]      integral   32    'h0   
    wdata[6]      array      4     -     
      [6][0]      integral   32    'h81  
      [6][1]      integral   32    'hxx  
      [6][2]      integral   32    'hxx  
      [6][3]      integral   32    'hxx  
    wdata[7]      array      4     -     
      [7][0]      integral   32    'hxx  
      [7][1]      integral   32    'h0   
      [7][2]      integral   32    'hxx  
      [7][3]      integral   32    'hxx  
    wdata[8]      array      4     -     
      [8][0]      integral   32    'hxx  
      [8][1]      integral   32    'hxx  
      [8][2]      integral   32    'h0   
      [8][3]      integral   32    'hxx  
    wdata[9]      array      4     -     
      [9][0]      integral   32    'hxx  
      [9][1]      integral   32    'hxx  
      [9][2]      integral   32    'hxx  
      [9][3]      integral   32    'h0   
  wstrb           array      10    -     
    wstrb[0]      integral   4     'b100 
    wstrb[1]      integral   4     'b1000
    wstrb[2]      integral   4     'b1   
    wstrb[3]      integral   4     'b10  
    wstrb[4]      integral   4     'b100 
    wstrb[5]      integral   4     'b1000
    wstrb[6]      integral   4     'b1   
    wstrb[7]      integral   4     'b10  
    wstrb[8]      integral   4     'b100 
    wstrb[9]      integral   4     'b1000
  wlast           array      10    -     
    wlast[0]      integral   1     'b0   
    wlast[1]      integral   1     'b0   
    wlast[2]      integral   1     'b0   
    wlast[3]      integral   1     'b0   
    wlast[4]      integral   1     'b0   
    wlast[5]      integral   1     'b0   
    wlast[6]      integral   1     'b0   
    wlast[7]      integral   1     'b0   
    wlast[8]      integral   1     'b0   
    wlast[9]      integral   1     'b1   
-----------------------------------------
 
UVM_INFO axi_sram_predictor.sv(181) @ 1095: uvm_test_top.m_env.m_predict [task write] 
UVM_INFO axi_sram_predictor.sv(87) @ 1145: uvm_test_top.m_env.m_predict [axi_sram_predictor]  Write_agent    
   -----------------------------------------
Name              Type       Size  Value 
-----------------------------------------
monitor_wr_tx_17  axi_wr_tx  -     @1335 
  awid            integral   12    'h12  
  awaddr          integral   16    'he300
  awburst         string     4     WRAP  
  awlen           integral   8     'h3   
  awsize          integral   3     'h2   
  awlock          integral   1     'h0   
  awprot          integral   1     'h0   
  m_time          time       64    0     
  wdata           array      4     -     
    wdata[0]      array      4     -     
      [0][0]      integral   32    'h6c  
      [0][1]      integral   32    'hc4  
      [0][2]      integral   32    'h99  
      [0][3]      integral   32    'h39  
    wdata[1]      array      4     -     
      [1][0]      integral   32    'h3a  
      [1][1]      integral   32    'hbb  
      [1][2]      integral   32    'h46  
      [1][3]      integral   32    'hdd  
    wdata[2]      array      4     -     
      [2][0]      integral   32    'h3d  
      [2][1]      integral   32    'h2e  
      [2][2]      integral   32    'ha9  
      [2][3]      integral   32    'hd9  
    wdata[3]      array      4     -     
      [3][0]      integral   32    'hf7  
      [3][1]      integral   32    'h97  
      [3][2]      integral   32    'hd   
      [3][3]      integral   32    'ha2  
  wstrb           array      4     -     
    wstrb[0]      integral   4     'b1111
    wstrb[1]      integral   4     'b1111
    wstrb[2]      integral   4     'b1111
    wstrb[3]      integral   4     'b1111
  wlast           array      4     -     
    wlast[0]      integral   1     'b0   
    wlast[1]      integral   1     'b0   
    wlast[2]      integral   1     'b0   
    wlast[3]      integral   1     'b1   
-----------------------------------------
 
UVM_INFO axi_sram_predictor.sv(181) @ 1145: uvm_test_top.m_env.m_predict [task write] 
UVM_INFO axi_sram_predictor.sv(87) @ 1175: uvm_test_top.m_env.m_predict [axi_sram_predictor]  Write_agent    
   -----------------------------------------
Name              Type       Size  Value 
-----------------------------------------
monitor_wr_tx_18  axi_wr_tx  -     @1351 
  awid            integral   12    'h13  
  awaddr          integral   16    'h853a
  awburst         string     4     WRAP  
  awlen           integral   8     'h1   
  awsize          integral   3     'h1   
  awlock          integral   1     'h1   
  awprot          integral   1     'h1   
  m_time          time       64    0     
  wdata           array      2     -     
    wdata[0]      array      4     -     
      [0][0]      integral   32    'hxx  
      [0][1]      integral   32    'hxx  
      [0][2]      integral   32    'h0   
      [0][3]      integral   32    'h0   
    wdata[1]      array      4     -     
      [1][0]      integral   32    'hc0  
      [1][1]      integral   32    'h94  
      [1][2]      integral   32    'hxx  
      [1][3]      integral   32    'hxx  
  wstrb           array      2     -     
    wstrb[0]      integral   4     'b1100
    wstrb[1]      integral   4     'b11  
  wlast           array      2     -     
    wlast[0]      integral   1     'b0   
    wlast[1]      integral   1     'b1   
-----------------------------------------
 
UVM_INFO axi_sram_predictor.sv(181) @ 1175: uvm_test_top.m_env.m_predict [task write] 
UVM_INFO axi_sram_predictor.sv(87) @ 1205: uvm_test_top.m_env.m_predict [axi_sram_predictor]  Write_agent    
   -----------------------------------------
Name              Type       Size  Value 
-----------------------------------------
monitor_wr_tx_19  axi_wr_tx  -     @1367 
  awid            integral   12    'h14  
  awaddr          integral   16    'h178 
  awburst         string     4     WRAP  
  awlen           integral   8     'h1   
  awsize          integral   3     'h2   
  awlock          integral   1     'h1   
  awprot          integral   1     'h1   
  m_time          time       64    0     
  wdata           array      2     -     
    wdata[0]      array      4     -     
      [0][0]      integral   32    'h96  
      [0][1]      integral   32    'h43  
      [0][2]      integral   32    'h96  
      [0][3]      integral   32    'he6  
    wdata[1]      array      4     -     
      [1][0]      integral   32    'hb6  
      [1][1]      integral   32    'hb4  
      [1][2]      integral   32    'he0  
      [1][3]      integral   32    'h89  
  wstrb           array      2     -     
    wstrb[0]      integral   4     'b1111
    wstrb[1]      integral   4     'b1111
  wlast           array      2     -     
    wlast[0]      integral   1     'b0   
    wlast[1]      integral   1     'b1   
-----------------------------------------
 
UVM_INFO axi_sram_predictor.sv(181) @ 1205: uvm_test_top.m_env.m_predict [task write] 
UVM_INFO axi_sram_predictor.sv(87) @ 1315: uvm_test_top.m_env.m_predict [axi_sram_predictor]  Write_agent    
   -----------------------------------------
Name              Type       Size  Value 
-----------------------------------------
monitor_wr_tx_20  axi_wr_tx  -     @1383 
  awid            integral   12    'h15  
  awaddr          integral   16    'hff53
  awburst         string     4     INCR  
  awlen           integral   8     'h9   
  awsize          integral   3     'h2   
  awlock          integral   1     'h0   
  awprot          integral   1     'h0   
  m_time          time       64    0     
  wdata           array      10    -     
    wdata[0]      array      4     -     
      [0][0]      integral   32    'hxx  
      [0][1]      integral   32    'hxx  
      [0][2]      integral   32    'hxx  
      [0][3]      integral   32    'hdf  
    wdata[1]      array      4     -     
      [1][0]      integral   32    'h21  
      [1][1]      integral   32    'h66  
      [1][2]      integral   32    'h1e  
      [1][3]      integral   32    'haa  
    wdata[2]      array      4     -     
      [2][0]      integral   32    'h3   
      [2][1]      integral   32    'heb  
      [2][2]      integral   32    'h91  
      [2][3]      integral   32    'ha4  
    wdata[3]      array      4     -     
      [3][0]      integral   32    'h22  
      [3][1]      integral   32    'h7a  
      [3][2]      integral   32    'h4d  
      [3][3]      integral   32    'h42  
    wdata[4]      array      4     -     
      [4][0]      integral   32    'h15  
      [4][1]      integral   32    'he4  
      [4][2]      integral   32    'h6b  
      [4][3]      integral   32    'h44  
    wdata[5]      array      4     -     
      [5][0]      integral   32    'h12  
      [5][1]      integral   32    'h8   
      [5][2]      integral   32    'ha3  
      [5][3]      integral   32    'he2  
    wdata[6]      array      4     -     
      [6][0]      integral   32    'hf5  
      [6][1]      integral   32    'h4e  
      [6][2]      integral   32    'h95  
      [6][3]      integral   32    'h3d  
    wdata[7]      array      4     -     
      [7][0]      integral   32    'h50  
      [7][1]      integral   32    'hfe  
      [7][2]      integral   32    'h4f  
      [7][3]      integral   32    'h88  
    wdata[8]      array      4     -     
      [8][0]      integral   32    'hd0  
      [8][1]      integral   32    'hc6  
      [8][2]      integral   32    'h48  
      [8][3]      integral   32    'h33  
    wdata[9]      array      4     -     
      [9][0]      integral   32    'h91  
      [9][1]      integral   32    'hb0  
      [9][2]      integral   32    'h5a  
      [9][3]      integral   32    'h9a  
  wstrb           array      10    -     
    wstrb[0]      integral   4     'b1000
    wstrb[1]      integral   4     'b1111
    wstrb[2]      integral   4     'b1111
    wstrb[3]      integral   4     'b1111
    wstrb[4]      integral   4     'b1111
    wstrb[5]      integral   4     'b1111
    wstrb[6]      integral   4     'b1111
    wstrb[7]      integral   4     'b1111
    wstrb[8]      integral   4     'b1111
    wstrb[9]      integral   4     'b1111
  wlast           array      10    -     
    wlast[0]      integral   1     'b0   
    wlast[1]      integral   1     'b0   
    wlast[2]      integral   1     'b0   
    wlast[3]      integral   1     'b0   
    wlast[4]      integral   1     'b0   
    wlast[5]      integral   1     'b0   
    wlast[6]      integral   1     'b0   
    wlast[7]      integral   1     'b0   
    wlast[8]      integral   1     'b0   
    wlast[9]      integral   1     'b1   
-----------------------------------------
 
UVM_INFO axi_sram_predictor.sv(181) @ 1315: uvm_test_top.m_env.m_predict [task write] 
UVM_INFO axi_sram_predictor.sv(87) @ 1405: uvm_test_top.m_env.m_predict [axi_sram_predictor]  Write_agent    
   -----------------------------------------
Name              Type       Size  Value 
-----------------------------------------
monitor_wr_tx_21  axi_wr_tx  -     @1399 
  awid            integral   12    'h16  
  awaddr          integral   16    'h79d4
  awburst         string     4     WRAP  
  awlen           integral   8     'h7   
  awsize          integral   3     'h1   
  awlock          integral   1     'h1   
  awprot          integral   1     'h0   
  m_time          time       64    0     
  wdata           array      8     -     
    wdata[0]      array      4     -     
      [0][0]      integral   32    'h4c  
      [0][1]      integral   32    'h19  
      [0][2]      integral   32    'hxx  
      [0][3]      integral   32    'hxx  
    wdata[1]      array      4     -     
      [1][0]      integral   32    'hxx  
      [1][1]      integral   32    'hxx  
      [1][2]      integral   32    'h0   
      [1][3]      integral   32    'h0   
    wdata[2]      array      4     -     
      [2][0]      integral   32    'h55  
      [2][1]      integral   32    'h21  
      [2][2]      integral   32    'hxx  
      [2][3]      integral   32    'hxx  
    wdata[3]      array      4     -     
      [3][0]      integral   32    'hxx  
      [3][1]      integral   32    'hxx  
      [3][2]      integral   32    'h0   
      [3][3]      integral   32    'h0   
    wdata[4]      array      4     -     
      [4][0]      integral   32    'h30  
      [4][1]      integral   32    'h1d  
      [4][2]      integral   32    'hxx  
      [4][3]      integral   32    'hxx  
    wdata[5]      array      4     -     
      [5][0]      integral   32    'hxx  
      [5][1]      integral   32    'hxx  
      [5][2]      integral   32    'h0   
      [5][3]      integral   32    'h0   
    wdata[6]      array      4     -     
      [6][0]      integral   32    'hef  
      [6][1]      integral   32    'hbf  
      [6][2]      integral   32    'hxx  
      [6][3]      integral   32    'hxx  
    wdata[7]      array      4     -     
      [7][0]      integral   32    'hxx  
      [7][1]      integral   32    'hxx  
      [7][2]      integral   32    'h0   
      [7][3]      integral   32    'h0   
  wstrb           array      8     -     
    wstrb[0]      integral   4     'b11  
    wstrb[1]      integral   4     'b1100
    wstrb[2]      integral   4     'b11  
    wstrb[3]      integral   4     'b1100
    wstrb[4]      integral   4     'b11  
    wstrb[5]      integral   4     'b1100
    wstrb[6]      integral   4     'b11  
    wstrb[7]      integral   4     'b1100
  wlast           array      8     -     
    wlast[0]      integral   1     'b0   
    wlast[1]      integral   1     'b0   
    wlast[2]      integral   1     'b0   
    wlast[3]      integral   1     'b0   
    wlast[4]      integral   1     'b0   
    wlast[5]      integral   1     'b0   
    wlast[6]      integral   1     'b0   
    wlast[7]      integral   1     'b1   
-----------------------------------------
 
UVM_INFO axi_sram_predictor.sv(181) @ 1405: uvm_test_top.m_env.m_predict [task write] 
UVM_INFO axi_sram_predictor.sv(87) @ 1455: uvm_test_top.m_env.m_predict [axi_sram_predictor]  Write_agent    
   -----------------------------------------
Name              Type       Size  Value 
-----------------------------------------
monitor_wr_tx_22  axi_wr_tx  -     @1415 
  awid            integral   12    'h17  
  awaddr          integral   16    'h17f 
  awburst         string     4     WRAP  
  awlen           integral   8     'h3   
  awsize          integral   3     'h0   
  awlock          integral   1     'h0   
  awprot          integral   1     'h0   
  m_time          time       64    0     
  wdata           array      4     -     
    wdata[0]      array      4     -     
      [0][0]      integral   32    'hxx  
      [0][1]      integral   32    'hxx  
      [0][2]      integral   32    'hxx  
      [0][3]      integral   32    'h0   
    wdata[1]      array      4     -     
      [1][0]      integral   32    'h16  
      [1][1]      integral   32    'hxx  
      [1][2]      integral   32    'hxx  
      [1][3]      integral   32    'hxx  
    wdata[2]      array      4     -     
      [2][0]      integral   32    'hxx  
      [2][1]      integral   32    'h0   
      [2][2]      integral   32    'hxx  
      [2][3]      integral   32    'hxx  
    wdata[3]      array      4     -     
      [3][0]      integral   32    'hxx  
      [3][1]      integral   32    'hxx  
      [3][2]      integral   32    'h0   
      [3][3]      integral   32    'hxx  
  wstrb           array      4     -     
    wstrb[0]      integral   4     'b1000
    wstrb[1]      integral   4     'b1   
    wstrb[2]      integral   4     'b10  
    wstrb[3]      integral   4     'b100 
  wlast           array      4     -     
    wlast[0]      integral   1     'b0   
    wlast[1]      integral   1     'b0   
    wlast[2]      integral   1     'b0   
    wlast[3]      integral   1     'b1   
-----------------------------------------
 
UVM_INFO axi_sram_predictor.sv(181) @ 1455: uvm_test_top.m_env.m_predict [task write] 
UVM_INFO axi_sram_predictor.sv(87) @ 1505: uvm_test_top.m_env.m_predict [axi_sram_predictor]  Write_agent    
   -----------------------------------------
Name              Type       Size  Value 
-----------------------------------------
monitor_wr_tx_23  axi_wr_tx  -     @1431 
  awid            integral   12    'h18  
  awaddr          integral   16    'hf9d 
  awburst         string     4     WRAP  
  awlen           integral   8     'h3   
  awsize          integral   3     'h0   
  awlock          integral   1     'h0   
  awprot          integral   1     'h0   
  m_time          time       64    0     
  wdata           array      4     -     
    wdata[0]      array      4     -     
      [0][0]      integral   32    'hxx  
      [0][1]      integral   32    'h0   
      [0][2]      integral   32    'hxx  
      [0][3]      integral   32    'hxx  
    wdata[1]      array      4     -     
      [1][0]      integral   32    'hxx  
      [1][1]      integral   32    'hxx  
      [1][2]      integral   32    'h0   
      [1][3]      integral   32    'hxx  
    wdata[2]      array      4     -     
      [2][0]      integral   32    'hxx  
      [2][1]      integral   32    'hxx  
      [2][2]      integral   32    'hxx  
      [2][3]      integral   32    'h0   
    wdata[3]      array      4     -     
      [3][0]      integral   32    'h4c  
      [3][1]      integral   32    'hxx  
      [3][2]      integral   32    'hxx  
      [3][3]      integral   32    'hxx  
  wstrb           array      4     -     
    wstrb[0]      integral   4     'b10  
    wstrb[1]      integral   4     'b100 
    wstrb[2]      integral   4     'b1000
    wstrb[3]      integral   4     'b1   
  wlast           array      4     -     
    wlast[0]      integral   1     'b0   
    wlast[1]      integral   1     'b0   
    wlast[2]      integral   1     'b0   
    wlast[3]      integral   1     'b1   
-----------------------------------------
 
UVM_INFO axi_sram_predictor.sv(181) @ 1505: uvm_test_top.m_env.m_predict [task write] 
UVM_INFO axi_sram_predictor.sv(87) @ 1545: uvm_test_top.m_env.m_predict [axi_sram_predictor]  Write_agent    
   -----------------------------------------
Name              Type       Size  Value 
-----------------------------------------
monitor_wr_tx_24  axi_wr_tx  -     @1447 
  awid            integral   12    'h19  
  awaddr          integral   16    'hb1dd
  awburst         string     4     INCR  
  awlen           integral   8     'h2   
  awsize          integral   3     'h2   
  awlock          integral   1     'h1   
  awprot          integral   1     'h1   
  m_time          time       64    0     
  wdata           array      3     -     
    wdata[0]      array      4     -     
      [0][0]      integral   32    'hxx  
      [0][1]      integral   32    'h45  
      [0][2]      integral   32    'h33  
      [0][3]      integral   32    'hd3  
    wdata[1]      array      4     -     
      [1][0]      integral   32    'hd3  
      [1][1]      integral   32    'h77  
      [1][2]      integral   32    'h62  
      [1][3]      integral   32    'hae  
    wdata[2]      array      4     -     
      [2][0]      integral   32    'h92  
      [2][1]      integral   32    'h6   
      [2][2]      integral   32    'h31  
      [2][3]      integral   32    'he5  
  wstrb           array      3     -     
    wstrb[0]      integral   4     'b1110
    wstrb[1]      integral   4     'b1111
    wstrb[2]      integral   4     'b1111
  wlast           array      3     -     
    wlast[0]      integral   1     'b0   
    wlast[1]      integral   1     'b0   
    wlast[2]      integral   1     'b1   
-----------------------------------------
 
UVM_INFO axi_sram_predictor.sv(181) @ 1545: uvm_test_top.m_env.m_predict [task write] 
UVM_INFO axi_sram_predictor.sv(87) @ 1635: uvm_test_top.m_env.m_predict [axi_sram_predictor]  Write_agent    
   -----------------------------------------
Name              Type       Size  Value 
-----------------------------------------
monitor_wr_tx_25  axi_wr_tx  -     @1463 
  awid            integral   12    'h1a  
  awaddr          integral   16    'hf788
  awburst         string     4     WRAP  
  awlen           integral   8     'h7   
  awsize          integral   3     'h1   
  awlock          integral   1     'h0   
  awprot          integral   1     'h0   
  m_time          time       64    0     
  wdata           array      8     -     
    wdata[0]      array      4     -     
      [0][0]      integral   32    'h7e  
      [0][1]      integral   32    'h38  
      [0][2]      integral   32    'hxx  
      [0][3]      integral   32    'hxx  
    wdata[1]      array      4     -     
      [1][0]      integral   32    'hxx  
      [1][1]      integral   32    'hxx  
      [1][2]      integral   32    'h0   
      [1][3]      integral   32    'h0   
    wdata[2]      array      4     -     
      [2][0]      integral   32    'h6   
      [2][1]      integral   32    'h97  
      [2][2]      integral   32    'hxx  
      [2][3]      integral   32    'hxx  
    wdata[3]      array      4     -     
      [3][0]      integral   32    'hxx  
      [3][1]      integral   32    'hxx  
      [3][2]      integral   32    'h0   
      [3][3]      integral   32    'h0   
    wdata[4]      array      4     -     
      [4][0]      integral   32    'hf8  
      [4][1]      integral   32    'hc4  
      [4][2]      integral   32    'hxx  
      [4][3]      integral   32    'hxx  
    wdata[5]      array      4     -     
      [5][0]      integral   32    'hxx  
      [5][1]      integral   32    'hxx  
      [5][2]      integral   32    'h0   
      [5][3]      integral   32    'h0   
    wdata[6]      array      4     -     
      [6][0]      integral   32    'h93  
      [6][1]      integral   32    'ha   
      [6][2]      integral   32    'hxx  
      [6][3]      integral   32    'hxx  
    wdata[7]      array      4     -     
      [7][0]      integral   32    'hxx  
      [7][1]      integral   32    'hxx  
      [7][2]      integral   32    'h0   
      [7][3]      integral   32    'h0   
  wstrb           array      8     -     
    wstrb[0]      integral   4     'b11  
    wstrb[1]      integral   4     'b1100
    wstrb[2]      integral   4     'b11  
    wstrb[3]      integral   4     'b1100
    wstrb[4]      integral   4     'b11  
    wstrb[5]      integral   4     'b1100
    wstrb[6]      integral   4     'b11  
    wstrb[7]      integral   4     'b1100
  wlast           array      8     -     
    wlast[0]      integral   1     'b0   
    wlast[1]      integral   1     'b0   
    wlast[2]      integral   1     'b0   
    wlast[3]      integral   1     'b0   
    wlast[4]      integral   1     'b0   
    wlast[5]      integral   1     'b0   
    wlast[6]      integral   1     'b0   
    wlast[7]      integral   1     'b1   
-----------------------------------------
 
UVM_INFO axi_sram_predictor.sv(181) @ 1635: uvm_test_top.m_env.m_predict [task write] 
UVM_INFO axi_sram_predictor.sv(87) @ 1695: uvm_test_top.m_env.m_predict [axi_sram_predictor]  Write_agent    
   -----------------------------------------
Name              Type       Size  Value 
-----------------------------------------
monitor_wr_tx_26  axi_wr_tx  -     @1479 
  awid            integral   12    'h1b  
  awaddr          integral   16    'h3b73
  awburst         string     4     INCR  
  awlen           integral   8     'h4   
  awsize          integral   3     'h2   
  awlock          integral   1     'h0   
  awprot          integral   1     'h0   
  m_time          time       64    0     
  wdata           array      5     -     
    wdata[0]      array      4     -     
      [0][0]      integral   32    'hxx  
      [0][1]      integral   32    'hxx  
      [0][2]      integral   32    'hxx  
      [0][3]      integral   32    'h86  
    wdata[1]      array      4     -     
      [1][0]      integral   32    'hdf  
      [1][1]      integral   32    'h3d  
      [1][2]      integral   32    'h4d  
      [1][3]      integral   32    'h33  
    wdata[2]      array      4     -     
      [2][0]      integral   32    'h69  
      [2][1]      integral   32    'h39  
      [2][2]      integral   32    'h9f  
      [2][3]      integral   32    'hd1  
    wdata[3]      array      4     -     
      [3][0]      integral   32    'h36  
      [3][1]      integral   32    'hde  
      [3][2]      integral   32    'hae  
      [3][3]      integral   32    'hfb  
    wdata[4]      array      4     -     
      [4][0]      integral   32    'haf  
      [4][1]      integral   32    'h7e  
      [4][2]      integral   32    'h41  
      [4][3]      integral   32    'hc8  
  wstrb           array      5     -     
    wstrb[0]      integral   4     'b1000
    wstrb[1]      integral   4     'b1111
    wstrb[2]      integral   4     'b1111
    wstrb[3]      integral   4     'b1111
    wstrb[4]      integral   4     'b1111
  wlast           array      5     -     
    wlast[0]      integral   1     'b0   
    wlast[1]      integral   1     'b0   
    wlast[2]      integral   1     'b0   
    wlast[3]      integral   1     'b0   
    wlast[4]      integral   1     'b1   
-----------------------------------------
 
UVM_INFO axi_sram_predictor.sv(181) @ 1695: uvm_test_top.m_env.m_predict [task write] 
UVM_INFO axi_sram_predictor.sv(87) @ 1775: uvm_test_top.m_env.m_predict [axi_sram_predictor]  Write_agent    
   -----------------------------------------
Name              Type       Size  Value 
-----------------------------------------
monitor_wr_tx_27  axi_wr_tx  -     @1495 
  awid            integral   12    'h1c  
  awaddr          integral   16    'h7fcb
  awburst         string     4     INCR  
  awlen           integral   8     'h6   
  awsize          integral   3     'h0   
  awlock          integral   1     'h1   
  awprot          integral   1     'h0   
  m_time          time       64    0     
  wdata           array      7     -     
    wdata[0]      array      4     -     
      [0][0]      integral   32    'hxx  
      [0][1]      integral   32    'hxx  
      [0][2]      integral   32    'hxx  
      [0][3]      integral   32    'h0   
    wdata[1]      array      4     -     
      [1][0]      integral   32    'h68  
      [1][1]      integral   32    'hxx  
      [1][2]      integral   32    'hxx  
      [1][3]      integral   32    'hxx  
    wdata[2]      array      4     -     
      [2][0]      integral   32    'hxx  
      [2][1]      integral   32    'h0   
      [2][2]      integral   32    'hxx  
      [2][3]      integral   32    'hxx  
    wdata[3]      array      4     -     
      [3][0]      integral   32    'hxx  
      [3][1]      integral   32    'hxx  
      [3][2]      integral   32    'h0   
      [3][3]      integral   32    'hxx  
    wdata[4]      array      4     -     
      [4][0]      integral   32    'hxx  
      [4][1]      integral   32    'hxx  
      [4][2]      integral   32    'hxx  
      [4][3]      integral   32    'h0   
    wdata[5]      array      4     -     
      [5][0]      integral   32    'hc6  
      [5][1]      integral   32    'hxx  
      [5][2]      integral   32    'hxx  
      [5][3]      integral   32    'hxx  
    wdata[6]      array      4     -     
      [6][0]      integral   32    'hxx  
      [6][1]      integral   32    'h0   
      [6][2]      integral   32    'hxx  
      [6][3]      integral   32    'hxx  
  wstrb           array      7     -     
    wstrb[0]      integral   4     'b1000
    wstrb[1]      integral   4     'b1   
    wstrb[2]      integral   4     'b10  
    wstrb[3]      integral   4     'b100 
    wstrb[4]      integral   4     'b1000
    wstrb[5]      integral   4     'b1   
    wstrb[6]      integral   4     'b10  
  wlast           array      7     -     
    wlast[0]      integral   1     'b0   
    wlast[1]      integral   1     'b0   
    wlast[2]      integral   1     'b0   
    wlast[3]      integral   1     'b0   
    wlast[4]      integral   1     'b0   
    wlast[5]      integral   1     'b0   
    wlast[6]      integral   1     'b1   
-----------------------------------------
 
UVM_INFO axi_sram_predictor.sv(181) @ 1775: uvm_test_top.m_env.m_predict [task write] 
UVM_INFO axi_sram_predictor.sv(87) @ 1895: uvm_test_top.m_env.m_predict [axi_sram_predictor]  Write_agent    
   -----------------------------------------
Name              Type       Size  Value 
-----------------------------------------
monitor_wr_tx_28  axi_wr_tx  -     @1511 
  awid            integral   12    'h1d  
  awaddr          integral   16    'h284 
  awburst         string     4     INCR  
  awlen           integral   8     'ha   
  awsize          integral   3     'h0   
  awlock          integral   1     'h1   
  awprot          integral   1     'h0   
  m_time          time       64    0     
  wdata           array      11    -     
    wdata[0]      array      4     -     
      [0][0]      integral   32    'h29  
      [0][1]      integral   32    'hxx  
      [0][2]      integral   32    'hxx  
      [0][3]      integral   32    'hxx  
    wdata[1]      array      4     -     
      [1][0]      integral   32    'hxx  
      [1][1]      integral   32    'h0   
      [1][2]      integral   32    'hxx  
      [1][3]      integral   32    'hxx  
    wdata[2]      array      4     -     
      [2][0]      integral   32    'hxx  
      [2][1]      integral   32    'hxx  
      [2][2]      integral   32    'h0   
      [2][3]      integral   32    'hxx  
    wdata[3]      array      4     -     
      [3][0]      integral   32    'hxx  
      [3][1]      integral   32    'hxx  
      [3][2]      integral   32    'hxx  
      [3][3]      integral   32    'h0   
    wdata[4]      array      4     -     
      [4][0]      integral   32    'h84  
      [4][1]      integral   32    'hxx  
      [4][2]      integral   32    'hxx  
      [4][3]      integral   32    'hxx  
    wdata[5]      array      4     -     
      [5][0]      integral   32    'hxx  
      [5][1]      integral   32    'h0   
      [5][2]      integral   32    'hxx  
      [5][3]      integral   32    'hxx  
    wdata[6]      array      4     -     
      [6][0]      integral   32    'hxx  
      [6][1]      integral   32    'hxx  
      [6][2]      integral   32    'h0   
      [6][3]      integral   32    'hxx  
    wdata[7]      array      4     -     
      [7][0]      integral   32    'hxx  
      [7][1]      integral   32    'hxx  
      [7][2]      integral   32    'hxx  
      [7][3]      integral   32    'h0   
    wdata[8]      array      4     -     
      [8][0]      integral   32    'h9d  
      [8][1]      integral   32    'hxx  
      [8][2]      integral   32    'hxx  
      [8][3]      integral   32    'hxx  
    wdata[9]      array      4     -     
      [9][0]      integral   32    'hxx  
      [9][1]      integral   32    'h0   
      [9][2]      integral   32    'hxx  
      [9][3]      integral   32    'hxx  
    wdata[10]     array      4     -     
      [10][0]     integral   32    'hxx  
      [10][1]     integral   32    'hxx  
      [10][2]     integral   32    'h0   
      [10][3]     integral   32    'hxx  
  wstrb           array      11    -     
    wstrb[0]      integral   4     'b1   
    wstrb[1]      integral   4     'b10  
    wstrb[2]      integral   4     'b100 
    wstrb[3]      integral   4     'b1000
    wstrb[4]      integral   4     'b1   
    wstrb[5]      integral   4     'b10  
    wstrb[6]      integral   4     'b100 
    wstrb[7]      integral   4     'b1000
    wstrb[8]      integral   4     'b1   
    wstrb[9]      integral   4     'b10  
    wstrb[10]     integral   4     'b100 
  wlast           array      11    -     
    wlast[0]      integral   1     'b0   
    wlast[1]      integral   1     'b0   
    wlast[2]      integral   1     'b0   
    wlast[3]      integral   1     'b0   
    wlast[4]      integral   1     'b0   
    wlast[5]      integral   1     'b0   
    wlast[6]      integral   1     'b0   
    wlast[7]      integral   1     'b0   
    wlast[8]      integral   1     'b0   
    wlast[9]      integral   1     'b0   
    wlast[10]     integral   1     'b1   
-----------------------------------------
 
UVM_INFO axi_sram_predictor.sv(181) @ 1895: uvm_test_top.m_env.m_predict [task write] 
UVM_INFO axi_sram_predictor.sv(87) @ 1945: uvm_test_top.m_env.m_predict [axi_sram_predictor]  Write_agent    
   -----------------------------------------
Name              Type       Size  Value 
-----------------------------------------
monitor_wr_tx_29  axi_wr_tx  -     @1527 
  awid            integral   12    'h1e  
  awaddr          integral   16    'h7a3f
  awburst         string     4     WRAP  
  awlen           integral   8     'h3   
  awsize          integral   3     'h0   
  awlock          integral   1     'h1   
  awprot          integral   1     'h0   
  m_time          time       64    0     
  wdata           array      4     -     
    wdata[0]      array      4     -     
      [0][0]      integral   32    'hxx  
      [0][1]      integral   32    'hxx  
      [0][2]      integral   32    'hxx  
      [0][3]      integral   32    'h0   
    wdata[1]      array      4     -     
      [1][0]      integral   32    'h97  
      [1][1]      integral   32    'hxx  
      [1][2]      integral   32    'hxx  
      [1][3]      integral   32    'hxx  
    wdata[2]      array      4     -     
      [2][0]      integral   32    'hxx  
      [2][1]      integral   32    'h0   
      [2][2]      integral   32    'hxx  
      [2][3]      integral   32    'hxx  
    wdata[3]      array      4     -     
      [3][0]      integral   32    'hxx  
      [3][1]      integral   32    'hxx  
      [3][2]      integral   32    'h0   
      [3][3]      integral   32    'hxx  
  wstrb           array      4     -     
    wstrb[0]      integral   4     'b1000
    wstrb[1]      integral   4     'b1   
    wstrb[2]      integral   4     'b10  
    wstrb[3]      integral   4     'b100 
  wlast           array      4     -     
    wlast[0]      integral   1     'b0   
    wlast[1]      integral   1     'b0   
    wlast[2]      integral   1     'b0   
    wlast[3]      integral   1     'b1   
-----------------------------------------
 
UVM_INFO axi_sram_predictor.sv(181) @ 1945: uvm_test_top.m_env.m_predict [task write] 
UVM_INFO axi_sram_predictor.sv(87) @ 1975: uvm_test_top.m_env.m_predict [axi_sram_predictor]  Write_agent    
   ----------------------------------------
Name              Type       Size  Value
----------------------------------------
monitor_wr_tx_30  axi_wr_tx  -     @1543
  awid            integral   12    'h1f 
  awaddr          integral   16    'h108
  awburst         string     4     INCR 
  awlen           integral   8     'h1  
  awsize          integral   3     'h0  
  awlock          integral   1     'h0  
  awprot          integral   1     'h1  
  m_time          time       64    0    
  wdata           array      2     -    
    wdata[0]      array      4     -    
      [0][0]      integral   32    'hd  
      [0][1]      integral   32    'hxx 
      [0][2]      integral   32    'hxx 
      [0][3]      integral   32    'hxx 
    wdata[1]      array      4     -    
      [1][0]      integral   32    'hxx 
      [1][1]      integral   32    'h0  
      [1][2]      integral   32    'hxx 
      [1][3]      integral   32    'hxx 
  wstrb           array      2     -    
    wstrb[0]      integral   4     'b1  
    wstrb[1]      integral   4     'b10 
  wlast           array      2     -    
    wlast[0]      integral   1     'b0  
    wlast[1]      integral   1     'b1  
----------------------------------------
 
UVM_INFO axi_sram_predictor.sv(181) @ 1975: uvm_test_top.m_env.m_predict [task write] 
UVM_INFO axi_sram_predictor.sv(87) @ 2065: uvm_test_top.m_env.m_predict [axi_sram_predictor]  Write_agent    
   -----------------------------------------
Name              Type       Size  Value 
-----------------------------------------
monitor_wr_tx_31  axi_wr_tx  -     @1559 
  awid            integral   12    'h20  
  awaddr          integral   16    'h7798
  awburst         string     4     WRAP  
  awlen           integral   8     'h7   
  awsize          integral   3     'h2   
  awlock          integral   1     'h0   
  awprot          integral   1     'h1   
  m_time          time       64    0     
  wdata           array      8     -     
    wdata[0]      array      4     -     
      [0][0]      integral   32    'h33  
      [0][1]      integral   32    'h60  
      [0][2]      integral   32    'h35  
      [0][3]      integral   32    'h72  
    wdata[1]      array      4     -     
      [1][0]      integral   32    'h54  
      [1][1]      integral   32    'h1a  
      [1][2]      integral   32    'hf9  
      [1][3]      integral   32    'h15  
    wdata[2]      array      4     -     
      [2][0]      integral   32    'h3d  
      [2][1]      integral   32    'hcb  
      [2][2]      integral   32    'h55  
      [2][3]      integral   32    'h95  
    wdata[3]      array      4     -     
      [3][0]      integral   32    'h6f  
      [3][1]      integral   32    'h2a  
      [3][2]      integral   32    'h49  
      [3][3]      integral   32    'hc   
    wdata[4]      array      4     -     
      [4][0]      integral   32    'h29  
      [4][1]      integral   32    'hfc  
      [4][2]      integral   32    'hb4  
      [4][3]      integral   32    'hfd  
    wdata[5]      array      4     -     
      [5][0]      integral   32    'hbe  
      [5][1]      integral   32    'h6f  
      [5][2]      integral   32    'h46  
      [5][3]      integral   32    'h29  
    wdata[6]      array      4     -     
      [6][0]      integral   32    'h21  
      [6][1]      integral   32    'hd5  
      [6][2]      integral   32    'h8c  
      [6][3]      integral   32    'ha4  
    wdata[7]      array      4     -     
      [7][0]      integral   32    'he   
      [7][1]      integral   32    'h9b  
      [7][2]      integral   32    'h4b  
      [7][3]      integral   32    'hdc  
  wstrb           array      8     -     
    wstrb[0]      integral   4     'b1111
    wstrb[1]      integral   4     'b1111
    wstrb[2]      integral   4     'b1111
    wstrb[3]      integral   4     'b1111
    wstrb[4]      integral   4     'b1111
    wstrb[5]      integral   4     'b1111
    wstrb[6]      integral   4     'b1111
    wstrb[7]      integral   4     'b1111
  wlast           array      8     -     
    wlast[0]      integral   1     'b0   
    wlast[1]      integral   1     'b0   
    wlast[2]      integral   1     'b0   
    wlast[3]      integral   1     'b0   
    wlast[4]      integral   1     'b0   
    wlast[5]      integral   1     'b0   
    wlast[6]      integral   1     'b0   
    wlast[7]      integral   1     'b1   
-----------------------------------------
 
UVM_INFO axi_sram_predictor.sv(181) @ 2065: uvm_test_top.m_env.m_predict [task write] 
UVM_INFO axi_sram_predictor.sv(87) @ 2145: uvm_test_top.m_env.m_predict [axi_sram_predictor]  Write_agent    
   -----------------------------------------
Name              Type       Size  Value 
-----------------------------------------
monitor_wr_tx_32  axi_wr_tx  -     @1575 
  awid            integral   12    'h21  
  awaddr          integral   16    'hda91
  awburst         string     4     INCR  
  awlen           integral   8     'h6   
  awsize          integral   3     'h0   
  awlock          integral   1     'h1   
  awprot          integral   1     'h1   
  m_time          time       64    0     
  wdata           array      7     -     
    wdata[0]      array      4     -     
      [0][0]      integral   32    'hxx  
      [0][1]      integral   32    'h0   
      [0][2]      integral   32    'hxx  
      [0][3]      integral   32    'hxx  
    wdata[1]      array      4     -     
      [1][0]      integral   32    'hxx  
      [1][1]      integral   32    'hxx  
      [1][2]      integral   32    'h0   
      [1][3]      integral   32    'hxx  
    wdata[2]      array      4     -     
      [2][0]      integral   32    'hxx  
      [2][1]      integral   32    'hxx  
      [2][2]      integral   32    'hxx  
      [2][3]      integral   32    'h0   
    wdata[3]      array      4     -     
      [3][0]      integral   32    'h5d  
      [3][1]      integral   32    'hxx  
      [3][2]      integral   32    'hxx  
      [3][3]      integral   32    'hxx  
    wdata[4]      array      4     -     
      [4][0]      integral   32    'hxx  
      [4][1]      integral   32    'h0   
      [4][2]      integral   32    'hxx  
      [4][3]      integral   32    'hxx  
    wdata[5]      array      4     -     
      [5][0]      integral   32    'hxx  
      [5][1]      integral   32    'hxx  
      [5][2]      integral   32    'h0   
      [5][3]      integral   32    'hxx  
    wdata[6]      array      4     -     
      [6][0]      integral   32    'hxx  
      [6][1]      integral   32    'hxx  
      [6][2]      integral   32    'hxx  
      [6][3]      integral   32    'h0   
  wstrb           array      7     -     
    wstrb[0]      integral   4     'b10  
    wstrb[1]      integral   4     'b100 
    wstrb[2]      integral   4     'b1000
    wstrb[3]      integral   4     'b1   
    wstrb[4]      integral   4     'b10  
    wstrb[5]      integral   4     'b100 
    wstrb[6]      integral   4     'b1000
  wlast           array      7     -     
    wlast[0]      integral   1     'b0   
    wlast[1]      integral   1     'b0   
    wlast[2]      integral   1     'b0   
    wlast[3]      integral   1     'b0   
    wlast[4]      integral   1     'b0   
    wlast[5]      integral   1     'b0   
    wlast[6]      integral   1     'b1   
-----------------------------------------
 
UVM_INFO axi_sram_predictor.sv(181) @ 2145: uvm_test_top.m_env.m_predict [task write] 
UVM_INFO axi_sram_predictor.sv(87) @ 2245: uvm_test_top.m_env.m_predict [axi_sram_predictor]  Write_agent    
   -----------------------------------------
Name              Type       Size  Value 
-----------------------------------------
monitor_wr_tx_33  axi_wr_tx  -     @1591 
  awid            integral   12    'h22  
  awaddr          integral   16    'h8c9a
  awburst         string     4     INCR  
  awlen           integral   8     'h8   
  awsize          integral   3     'h1   
  awlock          integral   1     'h1   
  awprot          integral   1     'h1   
  m_time          time       64    0     
  wdata           array      9     -     
    wdata[0]      array      4     -     
      [0][0]      integral   32    'hxx  
      [0][1]      integral   32    'hxx  
      [0][2]      integral   32    'h0   
      [0][3]      integral   32    'h0   
    wdata[1]      array      4     -     
      [1][0]      integral   32    'hc6  
      [1][1]      integral   32    'h79  
      [1][2]      integral   32    'hxx  
      [1][3]      integral   32    'hxx  
    wdata[2]      array      4     -     
      [2][0]      integral   32    'hxx  
      [2][1]      integral   32    'hxx  
      [2][2]      integral   32    'h0   
      [2][3]      integral   32    'h0   
    wdata[3]      array      4     -     
      [3][0]      integral   32    'hae  
      [3][1]      integral   32    'he2  
      [3][2]      integral   32    'hxx  
      [3][3]      integral   32    'hxx  
    wdata[4]      array      4     -     
      [4][0]      integral   32    'hxx  
      [4][1]      integral   32    'hxx  
      [4][2]      integral   32    'h0   
      [4][3]      integral   32    'h0   
    wdata[5]      array      4     -     
      [5][0]      integral   32    'h10  
      [5][1]      integral   32    'h4e  
      [5][2]      integral   32    'hxx  
      [5][3]      integral   32    'hxx  
    wdata[6]      array      4     -     
      [6][0]      integral   32    'hxx  
      [6][1]      integral   32    'hxx  
      [6][2]      integral   32    'h0   
      [6][3]      integral   32    'h0   
    wdata[7]      array      4     -     
      [7][0]      integral   32    'hb8  
      [7][1]      integral   32    'hca  
      [7][2]      integral   32    'hxx  
      [7][3]      integral   32    'hxx  
    wdata[8]      array      4     -     
      [8][0]      integral   32    'hxx  
      [8][1]      integral   32    'hxx  
      [8][2]      integral   32    'h0   
      [8][3]      integral   32    'h0   
  wstrb           array      9     -     
    wstrb[0]      integral   4     'b1100
    wstrb[1]      integral   4     'b11  
    wstrb[2]      integral   4     'b1100
    wstrb[3]      integral   4     'b11  
    wstrb[4]      integral   4     'b1100
    wstrb[5]      integral   4     'b11  
    wstrb[6]      integral   4     'b1100
    wstrb[7]      integral   4     'b11  
    wstrb[8]      integral   4     'b1100
  wlast           array      9     -     
    wlast[0]      integral   1     'b0   
    wlast[1]      integral   1     'b0   
    wlast[2]      integral   1     'b0   
    wlast[3]      integral   1     'b0   
    wlast[4]      integral   1     'b0   
    wlast[5]      integral   1     'b0   
    wlast[6]      integral   1     'b0   
    wlast[7]      integral   1     'b0   
    wlast[8]      integral   1     'b1   
-----------------------------------------
 
UVM_INFO axi_sram_predictor.sv(181) @ 2245: uvm_test_top.m_env.m_predict [task write] 
UVM_INFO axi_sram_predictor.sv(87) @ 2335: uvm_test_top.m_env.m_predict [axi_sram_predictor]  Write_agent    
   -----------------------------------------
Name              Type       Size  Value 
-----------------------------------------
monitor_wr_tx_34  axi_wr_tx  -     @1607 
  awid            integral   12    'h23  
  awaddr          integral   16    'hb10 
  awburst         string     4     WRAP  
  awlen           integral   8     'h7   
  awsize          integral   3     'h2   
  awlock          integral   1     'h0   
  awprot          integral   1     'h1   
  m_time          time       64    0     
  wdata           array      8     -     
    wdata[0]      array      4     -     
      [0][0]      integral   32    'hd3  
      [0][1]      integral   32    'h30  
      [0][2]      integral   32    'he4  
      [0][3]      integral   32    'hea  
    wdata[1]      array      4     -     
      [1][0]      integral   32    'h8   
      [1][1]      integral   32    'h65  
      [1][2]      integral   32    'hb8  
      [1][3]      integral   32    'h1c  
    wdata[2]      array      4     -     
      [2][0]      integral   32    'h9e  
      [2][1]      integral   32    'ha0  
      [2][2]      integral   32    'h61  
      [2][3]      integral   32    'h49  
    wdata[3]      array      4     -     
      [3][0]      integral   32    'hc5  
      [3][1]      integral   32    'h90  
      [3][2]      integral   32    'h2   
      [3][3]      integral   32    'h90  
    wdata[4]      array      4     -     
      [4][0]      integral   32    'h30  
      [4][1]      integral   32    'hbd  
      [4][2]      integral   32    'h59  
      [4][3]      integral   32    'h20  
    wdata[5]      array      4     -     
      [5][0]      integral   32    'h4b  
      [5][1]      integral   32    'h27  
      [5][2]      integral   32    'h53  
      [5][3]      integral   32    'h2f  
    wdata[6]      array      4     -     
      [6][0]      integral   32    'h8e  
      [6][1]      integral   32    'h66  
      [6][2]      integral   32    'h50  
      [6][3]      integral   32    'h6   
    wdata[7]      array      4     -     
      [7][0]      integral   32    'h72  
      [7][1]      integral   32    'ha7  
      [7][2]      integral   32    'h18  
      [7][3]      integral   32    'hab  
  wstrb           array      8     -     
    wstrb[0]      integral   4     'b1111
    wstrb[1]      integral   4     'b1111
    wstrb[2]      integral   4     'b1111
    wstrb[3]      integral   4     'b1111
    wstrb[4]      integral   4     'b1111
    wstrb[5]      integral   4     'b1111
    wstrb[6]      integral   4     'b1111
    wstrb[7]      integral   4     'b1111
  wlast           array      8     -     
    wlast[0]      integral   1     'b0   
    wlast[1]      integral   1     'b0   
    wlast[2]      integral   1     'b0   
    wlast[3]      integral   1     'b0   
    wlast[4]      integral   1     'b0   
    wlast[5]      integral   1     'b0   
    wlast[6]      integral   1     'b0   
    wlast[7]      integral   1     'b1   
-----------------------------------------
 
UVM_INFO axi_sram_predictor.sv(181) @ 2335: uvm_test_top.m_env.m_predict [task write] 
UVM_INFO axi_sram_predictor.sv(87) @ 2435: uvm_test_top.m_env.m_predict [axi_sram_predictor]  Write_agent    
   -----------------------------------------
Name              Type       Size  Value 
-----------------------------------------
monitor_wr_tx_35  axi_wr_tx  -     @1623 
  awid            integral   12    'h24  
  awaddr          integral   16    'h17e1
  awburst         string     4     INCR  
  awlen           integral   8     'h8   
  awsize          integral   3     'h0   
  awlock          integral   1     'h1   
  awprot          integral   1     'h0   
  m_time          time       64    0     
  wdata           array      9     -     
    wdata[0]      array      4     -     
      [0][0]      integral   32    'hxx  
      [0][1]      integral   32    'h0   
      [0][2]      integral   32    'hxx  
      [0][3]      integral   32    'hxx  
    wdata[1]      array      4     -     
      [1][0]      integral   32    'hxx  
      [1][1]      integral   32    'hxx  
      [1][2]      integral   32    'h0   
      [1][3]      integral   32    'hxx  
    wdata[2]      array      4     -     
      [2][0]      integral   32    'hxx  
      [2][1]      integral   32    'hxx  
      [2][2]      integral   32    'hxx  
      [2][3]      integral   32    'h0   
    wdata[3]      array      4     -     
      [3][0]      integral   32    'h39  
      [3][1]      integral   32    'hxx  
      [3][2]      integral   32    'hxx  
      [3][3]      integral   32    'hxx  
    wdata[4]      array      4     -     
      [4][0]      integral   32    'hxx  
      [4][1]      integral   32    'h0   
      [4][2]      integral   32    'hxx  
      [4][3]      integral   32    'hxx  
    wdata[5]      array      4     -     
      [5][0]      integral   32    'hxx  
      [5][1]      integral   32    'hxx  
      [5][2]      integral   32    'h0   
      [5][3]      integral   32    'hxx  
    wdata[6]      array      4     -     
      [6][0]      integral   32    'hxx  
      [6][1]      integral   32    'hxx  
      [6][2]      integral   32    'hxx  
      [6][3]      integral   32    'h0   
    wdata[7]      array      4     -     
      [7][0]      integral   32    'hfa  
      [7][1]      integral   32    'hxx  
      [7][2]      integral   32    'hxx  
      [7][3]      integral   32    'hxx  
    wdata[8]      array      4     -     
      [8][0]      integral   32    'hxx  
      [8][1]      integral   32    'h0   
      [8][2]      integral   32    'hxx  
      [8][3]      integral   32    'hxx  
  wstrb           array      9     -     
    wstrb[0]      integral   4     'b10  
    wstrb[1]      integral   4     'b100 
    wstrb[2]      integral   4     'b1000
    wstrb[3]      integral   4     'b1   
    wstrb[4]      integral   4     'b10  
    wstrb[5]      integral   4     'b100 
    wstrb[6]      integral   4     'b1000
    wstrb[7]      integral   4     'b1   
    wstrb[8]      integral   4     'b10  
  wlast           array      9     -     
    wlast[0]      integral   1     'b0   
    wlast[1]      integral   1     'b0   
    wlast[2]      integral   1     'b0   
    wlast[3]      integral   1     'b0   
    wlast[4]      integral   1     'b0   
    wlast[5]      integral   1     'b0   
    wlast[6]      integral   1     'b0   
    wlast[7]      integral   1     'b0   
    wlast[8]      integral   1     'b1   
-----------------------------------------
 
UVM_INFO axi_sram_predictor.sv(181) @ 2435: uvm_test_top.m_env.m_predict [task write] 
UVM_INFO axi_sram_predictor.sv(87) @ 2475: uvm_test_top.m_env.m_predict [axi_sram_predictor]  Write_agent    
   -----------------------------------------
Name              Type       Size  Value 
-----------------------------------------
monitor_wr_tx_36  axi_wr_tx  -     @1639 
  awid            integral   12    'h25  
  awaddr          integral   16    'h2830
  awburst         string     4     INCR  
  awlen           integral   8     'h2   
  awsize          integral   3     'h0   
  awlock          integral   1     'h1   
  awprot          integral   1     'h1   
  m_time          time       64    0     
  wdata           array      3     -     
    wdata[0]      array      4     -     
      [0][0]      integral   32    'h90  
      [0][1]      integral   32    'hxx  
      [0][2]      integral   32    'hxx  
      [0][3]      integral   32    'hxx  
    wdata[1]      array      4     -     
      [1][0]      integral   32    'hxx  
      [1][1]      integral   32    'h0   
      [1][2]      integral   32    'hxx  
      [1][3]      integral   32    'hxx  
    wdata[2]      array      4     -     
      [2][0]      integral   32    'hxx  
      [2][1]      integral   32    'hxx  
      [2][2]      integral   32    'h0   
      [2][3]      integral   32    'hxx  
  wstrb           array      3     -     
    wstrb[0]      integral   4     'b1   
    wstrb[1]      integral   4     'b10  
    wstrb[2]      integral   4     'b100 
  wlast           array      3     -     
    wlast[0]      integral   1     'b0   
    wlast[1]      integral   1     'b0   
    wlast[2]      integral   1     'b1   
-----------------------------------------
 
UVM_INFO axi_sram_predictor.sv(181) @ 2475: uvm_test_top.m_env.m_predict [task write] 
UVM_INFO axi_sram_predictor.sv(87) @ 2525: uvm_test_top.m_env.m_predict [axi_sram_predictor]  Write_agent    
   -----------------------------------------
Name              Type       Size  Value 
-----------------------------------------
monitor_wr_tx_37  axi_wr_tx  -     @1655 
  awid            integral   12    'h26  
  awaddr          integral   16    'hbad0
  awburst         string     4     WRAP  
  awlen           integral   8     'h3   
  awsize          integral   3     'h2   
  awlock          integral   1     'h1   
  awprot          integral   1     'h0   
  m_time          time       64    0     
  wdata           array      4     -     
    wdata[0]      array      4     -     
      [0][0]      integral   32    'he7  
      [0][1]      integral   32    'h84  
      [0][2]      integral   32    'h9e  
      [0][3]      integral   32    'hdd  
    wdata[1]      array      4     -     
      [1][0]      integral   32    'h12  
      [1][1]      integral   32    'h64  
      [1][2]      integral   32    'hf1  
      [1][3]      integral   32    'h1e  
    wdata[2]      array      4     -     
      [2][0]      integral   32    'h35  
      [2][1]      integral   32    'h7a  
      [2][2]      integral   32    'hd1  
      [2][3]      integral   32    'h34  
    wdata[3]      array      4     -     
      [3][0]      integral   32    'hdd  
      [3][1]      integral   32    'hdb  
      [3][2]      integral   32    'haa  
      [3][3]      integral   32    'h32  
  wstrb           array      4     -     
    wstrb[0]      integral   4     'b1111
    wstrb[1]      integral   4     'b1111
    wstrb[2]      integral   4     'b1111
    wstrb[3]      integral   4     'b1111
  wlast           array      4     -     
    wlast[0]      integral   1     'b0   
    wlast[1]      integral   1     'b0   
    wlast[2]      integral   1     'b0   
    wlast[3]      integral   1     'b1   
-----------------------------------------
 
UVM_INFO axi_sram_predictor.sv(181) @ 2525: uvm_test_top.m_env.m_predict [task write] 
UVM_INFO axi_sram_predictor.sv(87) @ 2575: uvm_test_top.m_env.m_predict [axi_sram_predictor]  Write_agent    
   -----------------------------------------
Name              Type       Size  Value 
-----------------------------------------
monitor_wr_tx_38  axi_wr_tx  -     @1671 
  awid            integral   12    'h27  
  awaddr          integral   16    'hf7b1
  awburst         string     4     WRAP  
  awlen           integral   8     'h3   
  awsize          integral   3     'h0   
  awlock          integral   1     'h1   
  awprot          integral   1     'h1   
  m_time          time       64    0     
  wdata           array      4     -     
    wdata[0]      array      4     -     
      [0][0]      integral   32    'hxx  
      [0][1]      integral   32    'h0   
      [0][2]      integral   32    'hxx  
      [0][3]      integral   32    'hxx  
    wdata[1]      array      4     -     
      [1][0]      integral   32    'hxx  
      [1][1]      integral   32    'hxx  
      [1][2]      integral   32    'h0   
      [1][3]      integral   32    'hxx  
    wdata[2]      array      4     -     
      [2][0]      integral   32    'hxx  
      [2][1]      integral   32    'hxx  
      [2][2]      integral   32    'hxx  
      [2][3]      integral   32    'h0   
    wdata[3]      array      4     -     
      [3][0]      integral   32    'h2a  
      [3][1]      integral   32    'hxx  
      [3][2]      integral   32    'hxx  
      [3][3]      integral   32    'hxx  
  wstrb           array      4     -     
    wstrb[0]      integral   4     'b10  
    wstrb[1]      integral   4     'b100 
    wstrb[2]      integral   4     'b1000
    wstrb[3]      integral   4     'b1   
  wlast           array      4     -     
    wlast[0]      integral   1     'b0   
    wlast[1]      integral   1     'b0   
    wlast[2]      integral   1     'b0   
    wlast[3]      integral   1     'b1   
-----------------------------------------
 
UVM_INFO axi_sram_predictor.sv(181) @ 2575: uvm_test_top.m_env.m_predict [task write] 
UVM_INFO axi_sram_predictor.sv(87) @ 2675: uvm_test_top.m_env.m_predict [axi_sram_predictor]  Write_agent    
   -----------------------------------------
Name              Type       Size  Value 
-----------------------------------------
monitor_wr_tx_39  axi_wr_tx  -     @1687 
  awid            integral   12    'h28  
  awaddr          integral   16    'hedcf
  awburst         string     4     INCR  
  awlen           integral   8     'h8   
  awsize          integral   3     'h2   
  awlock          integral   1     'h1   
  awprot          integral   1     'h0   
  m_time          time       64    0     
  wdata           array      9     -     
    wdata[0]      array      4     -     
      [0][0]      integral   32    'hxx  
      [0][1]      integral   32    'hxx  
      [0][2]      integral   32    'hxx  
      [0][3]      integral   32    'h71  
    wdata[1]      array      4     -     
      [1][0]      integral   32    'hb4  
      [1][1]      integral   32    'h98  
      [1][2]      integral   32    'h44  
      [1][3]      integral   32    'h8   
    wdata[2]      array      4     -     
      [2][0]      integral   32    'h81  
      [2][1]      integral   32    'h45  
      [2][2]      integral   32    'h67  
      [2][3]      integral   32    'h8   
    wdata[3]      array      4     -     
      [3][0]      integral   32    'h45  
      [3][1]      integral   32    'h72  
      [3][2]      integral   32    'he4  
      [3][3]      integral   32    'ha4  
    wdata[4]      array      4     -     
      [4][0]      integral   32    'hd0  
      [4][1]      integral   32    'ha   
      [4][2]      integral   32    'hdf  
      [4][3]      integral   32    'h83  
    wdata[5]      array      4     -     
      [5][0]      integral   32    'hf7  
      [5][1]      integral   32    'hac  
      [5][2]      integral   32    'hc3  
      [5][3]      integral   32    'ha7  
    wdata[6]      array      4     -     
      [6][0]      integral   32    'he3  
      [6][1]      integral   32    'h1d  
      [6][2]      integral   32    'h9a  
      [6][3]      integral   32    'h2b  
    wdata[7]      array      4     -     
      [7][0]      integral   32    'h15  
      [7][1]      integral   32    'h85  
      [7][2]      integral   32    'h8d  
      [7][3]      integral   32    'h88  
    wdata[8]      array      4     -     
      [8][0]      integral   32    'h6f  
      [8][1]      integral   32    'he3  
      [8][2]      integral   32    'h5d  
      [8][3]      integral   32    'h94  
  wstrb           array      9     -     
    wstrb[0]      integral   4     'b1000
    wstrb[1]      integral   4     'b1111
    wstrb[2]      integral   4     'b1111
    wstrb[3]      integral   4     'b1111
    wstrb[4]      integral   4     'b1111
    wstrb[5]      integral   4     'b1111
    wstrb[6]      integral   4     'b1111
    wstrb[7]      integral   4     'b1111
    wstrb[8]      integral   4     'b1111
  wlast           array      9     -     
    wlast[0]      integral   1     'b0   
    wlast[1]      integral   1     'b0   
    wlast[2]      integral   1     'b0   
    wlast[3]      integral   1     'b0   
    wlast[4]      integral   1     'b0   
    wlast[5]      integral   1     'b0   
    wlast[6]      integral   1     'b0   
    wlast[7]      integral   1     'b0   
    wlast[8]      integral   1     'b1   
-----------------------------------------
 
UVM_INFO axi_sram_predictor.sv(181) @ 2675: uvm_test_top.m_env.m_predict [task write] 
UVM_INFO axi_virtual_sequence.sv(35) @ 2675: uvm_test_top.m_env.m_read_agent.m_seqr@@m_rd_seq [ qu_size] Popped val: '{awid:'h1, awaddr:'h7450, awlen:'h7, awsize:'h2, awburst:WRAP}
UVM_INFO axi_read_monitor.sv(42) @ 2685: uvm_test_top.m_env.m_read_agent.m_monitor [axi_read_monitor] Addr: 7450, ARLEN: 7, Calculated Length: 8
UVM_INFO axi_virtual_sequence.sv(40) @ 2685: uvm_test_top.m_env.m_read_agent.m_seqr@@m_rd_seq [ qu_size _finish ] 
UVM_INFO axi_virtual_sequence.sv(35) @ 2685: uvm_test_top.m_env.m_read_agent.m_seqr@@m_rd_seq [ qu_size] Popped val: '{awid:'h2, awaddr:'hdb94, awlen:'h7, awsize:'h2, awburst:WRAP}
UVM_INFO axi_sram_predictor.sv(97) @ 2770: uvm_test_top.m_env.m_predict [axi_sram_predictor]  _REad_agent    
   ---------------------------------------------
Name           Type          Size  Value     
---------------------------------------------
read_mon_tx_0  axi_rd_tx     -     @1721     
  arid         integral      12    'h1       
  araddr       integral      16    'h7450    
  arburst      burst_t       2     WRAP      
  arlen        integral      8     'h7       
  arsize       integral      3     'h2       
  arlock       integral      1     'h0       
  arprot       integral      1     'h0       
  rid          integral      12    'h1       
  rdata        da(integral)  8     -         
    [0]        integral      32    'hbcf8007 
    [1]        integral      32    'h2af9fd60
    [2]        integral      32    'h2c8b1bfa
    [3]        integral      32    'hb6054fae
    [4]        integral      32    'ha4a52ae2
    [5]        integral      32    'hd8c51ccf
    [6]        integral      32    'h8b69f0e8
    [7]        integral      32    'hbb19f331
  rresp        da(integral)  8     -         
    [0]        integral      2     'h0       
    [1]        integral      2     'h0       
    [2]        integral      2     'h0       
    [3]        integral      2     'h0       
    [4]        integral      2     'h0       
    [5]        integral      2     'h0       
    [6]        integral      2     'h0       
    [7]        integral      2     'h0       
  rlast        da(integral)  8     -         
    [0]        integral      1     'h0       
    [1]        integral      1     'h0       
    [2]        integral      1     'h0       
    [3]        integral      1     'h0       
    [4]        integral      1     'h0       
    [5]        integral      1     'h0       
    [6]        integral      1     'h0       
    [7]        integral      1     'h1       
---------------------------------------------
 
UVM_INFO axi_read_monitor.sv(42) @ 2775: uvm_test_top.m_env.m_read_agent.m_monitor [axi_read_monitor] Addr: db94, ARLEN: 7, Calculated Length: 8
UVM_INFO axi_virtual_sequence.sv(40) @ 2775: uvm_test_top.m_env.m_read_agent.m_seqr@@m_rd_seq [ qu_size _finish ] 
UVM_INFO axi_virtual_sequence.sv(35) @ 2775: uvm_test_top.m_env.m_read_agent.m_seqr@@m_rd_seq [ qu_size] Popped val: '{awid:'h3, awaddr:'hc3ef, awlen:'h9, awsize:'h1, awburst:INCR}
UVM_INFO axi_sram_predictor.sv(97) @ 2860: uvm_test_top.m_env.m_predict [axi_sram_predictor]  _REad_agent    
   ---------------------------------------------
Name           Type          Size  Value     
---------------------------------------------
read_mon_tx_1  axi_rd_tx     -     @1741     
  arid         integral      12    'h2       
  araddr       integral      16    'hdb94    
  arburst      burst_t       2     WRAP      
  arlen        integral      8     'h7       
  arsize       integral      3     'h2       
  arlock       integral      1     'h0       
  arprot       integral      1     'h0       
  rid          integral      12    'h2       
  rdata        da(integral)  8     -         
    [0]        integral      32    'hcc0904e2
    [1]        integral      32    'h890f7bba
    [2]        integral      32    'h1df01323
    [3]        integral      32    'hafcda026
    [4]        integral      32    'h6f255ffc
    [5]        integral      32    'hd0a7c608
    [6]        integral      32    'h1fadc5f9
    [7]        integral      32    'hea317481
  rresp        da(integral)  8     -         
    [0]        integral      2     'h0       
    [1]        integral      2     'h0       
    [2]        integral      2     'h0       
    [3]        integral      2     'h0       
    [4]        integral      2     'h0       
    [5]        integral      2     'h0       
    [6]        integral      2     'h0       
    [7]        integral      2     'h0       
  rlast        da(integral)  8     -         
    [0]        integral      1     'h0       
    [1]        integral      1     'h0       
    [2]        integral      1     'h0       
    [3]        integral      1     'h0       
    [4]        integral      1     'h0       
    [5]        integral      1     'h0       
    [6]        integral      1     'h0       
    [7]        integral      1     'h1       
---------------------------------------------
 
UVM_INFO axi_read_monitor.sv(42) @ 2865: uvm_test_top.m_env.m_read_agent.m_monitor [axi_read_monitor] Addr: c3ef, ARLEN: 9, Calculated Length: 10
UVM_INFO axi_virtual_sequence.sv(40) @ 2865: uvm_test_top.m_env.m_read_agent.m_seqr@@m_rd_seq [ qu_size _finish ] 
UVM_INFO axi_virtual_sequence.sv(35) @ 2865: uvm_test_top.m_env.m_read_agent.m_seqr@@m_rd_seq [ qu_size] Popped val: '{awid:'h4, awaddr:'h9528, awlen:'h1, awsize:'h2, awburst:WRAP}
UVM_INFO axi_sram_predictor.sv(97) @ 2970: uvm_test_top.m_env.m_predict [axi_sram_predictor]  _REad_agent    
   -----------------------------------------
Name           Type          Size  Value 
-----------------------------------------
read_mon_tx_2  axi_rd_tx     -     @1761 
  arid         integral      12    'h3   
  araddr       integral      16    'hc3ef
  arburst      burst_t       2     INCR  
  arlen        integral      8     'h9   
  arsize       integral      3     'h1   
  arlock       integral      1     'h0   
  arprot       integral      1     'h1   
  rid          integral      12    'h3   
  rdata        da(integral)  10    -     
    [0]        integral      32    'h0   
    [1]        integral      32    'h767f
    [2]        integral      32    'h767f
    [3]        integral      32    'h2c22
    [4]        integral      32    'h2c22
    [5]        integral      32    'ha65f
    [6]        integral      32    'ha65f
    [7]        integral      32    'he503
    [8]        integral      32    'he503
    [9]        integral      32    'h10f0
  rresp        da(integral)  10    -     
    [0]        integral      2     'h0   
    [1]        integral      2     'h0   
    [2]        integral      2     'h0   
    [3]        integral      2     'h0   
    [4]        integral      2     'h0   
    [5]        integral      2     'h0   
    [6]        integral      2     'h0   
    [7]        integral      2     'h0   
    [8]        integral      2     'h0   
    [9]        integral      2     'h0   
  rlast        da(integral)  10    -     
    [0]        integral      1     'h0   
    [1]        integral      1     'h0   
    [2]        integral      1     'h0   
    [3]        integral      1     'h0   
    [4]        integral      1     'h0   
    [5]        integral      1     'h0   
    [6]        integral      1     'h0   
    [7]        integral      1     'h0   
    [8]        integral      1     'h0   
    [9]        integral      1     'h1   
-----------------------------------------
 
UVM_INFO axi_read_monitor.sv(42) @ 2975: uvm_test_top.m_env.m_read_agent.m_monitor [axi_read_monitor] Addr: 9528, ARLEN: 1, Calculated Length: 2
UVM_INFO axi_virtual_sequence.sv(40) @ 2975: uvm_test_top.m_env.m_read_agent.m_seqr@@m_rd_seq [ qu_size _finish ] 
UVM_INFO axi_virtual_sequence.sv(35) @ 2975: uvm_test_top.m_env.m_read_agent.m_seqr@@m_rd_seq [ qu_size] Popped val: '{awid:'h5, awaddr:'hb22, awlen:'h9, awsize:'h0, awburst:INCR}
UVM_INFO axi_sram_predictor.sv(97) @ 3000: uvm_test_top.m_env.m_predict [axi_sram_predictor]  _REad_agent    
   ---------------------------------------------
Name           Type          Size  Value     
---------------------------------------------
read_mon_tx_3  axi_rd_tx     -     @1781     
  arid         integral      12    'h4       
  araddr       integral      16    'h9528    
  arburst      burst_t       2     WRAP      
  arlen        integral      8     'h1       
  arsize       integral      3     'h2       
  arlock       integral      1     'h1       
  arprot       integral      1     'h1       
  rid          integral      12    'h4       
  rdata        da(integral)  2     -         
    [0]        integral      32    'hc59ff4a3
    [1]        integral      32    'h348e7fa9
  rresp        da(integral)  2     -         
    [0]        integral      2     'h0       
    [1]        integral      2     'h0       
  rlast        da(integral)  2     -         
    [0]        integral      1     'h0       
    [1]        integral      1     'h1       
---------------------------------------------
 
UVM_INFO axi_read_monitor.sv(42) @ 3005: uvm_test_top.m_env.m_read_agent.m_monitor [axi_read_monitor] Addr: 0b22, ARLEN: 9, Calculated Length: 10
UVM_INFO axi_virtual_sequence.sv(40) @ 3005: uvm_test_top.m_env.m_read_agent.m_seqr@@m_rd_seq [ qu_size _finish ] 
UVM_INFO axi_virtual_sequence.sv(35) @ 3005: uvm_test_top.m_env.m_read_agent.m_seqr@@m_rd_seq [ qu_size] Popped val: '{awid:'h6, awaddr:'h49cc, awlen:'h7, awsize:'h2, awburst:WRAP}
UVM_INFO axi_sram_predictor.sv(97) @ 3110: uvm_test_top.m_env.m_predict [axi_sram_predictor]  _REad_agent    
   ---------------------------------------------
Name           Type          Size  Value     
---------------------------------------------
read_mon_tx_4  axi_rd_tx     -     @1801     
  arid         integral      12    'h5       
  araddr       integral      16    'hb22     
  arburst      burst_t       2     INCR      
  arlen        integral      8     'h9       
  arsize       integral      3     'h0       
  arlock       integral      1     'h0       
  arprot       integral      1     'h1       
  rid          integral      12    'h5       
  rdata        da(integral)  10    -         
    [0]        integral      32    'h2059bd30
    [1]        integral      32    'h2059bd30
    [2]        integral      32    'h2f53274b
    [3]        integral      32    'h2f53274b
    [4]        integral      32    'h2f53274b
    [5]        integral      32    'h2f53274b
    [6]        integral      32    'h650668e 
    [7]        integral      32    'h650668e 
    [8]        integral      32    'h650668e 
    [9]        integral      32    'h650668e 
  rresp        da(integral)  10    -         
    [0]        integral      2     'h0       
    [1]        integral      2     'h0       
    [2]        integral      2     'h0       
    [3]        integral      2     'h0       
    [4]        integral      2     'h0       
    [5]        integral      2     'h0       
    [6]        integral      2     'h0       
    [7]        integral      2     'h0       
    [8]        integral      2     'h0       
    [9]        integral      2     'h0       
  rlast        da(integral)  10    -         
    [0]        integral      1     'h0       
    [1]        integral      1     'h0       
    [2]        integral      1     'h0       
    [3]        integral      1     'h0       
    [4]        integral      1     'h0       
    [5]        integral      1     'h0       
    [6]        integral      1     'h0       
    [7]        integral      1     'h0       
    [8]        integral      1     'h0       
    [9]        integral      1     'h1       
---------------------------------------------
 
UVM_INFO axi_read_monitor.sv(42) @ 3115: uvm_test_top.m_env.m_read_agent.m_monitor [axi_read_monitor] Addr: 49cc, ARLEN: 7, Calculated Length: 8
UVM_INFO axi_virtual_sequence.sv(40) @ 3115: uvm_test_top.m_env.m_read_agent.m_seqr@@m_rd_seq [ qu_size _finish ] 
UVM_INFO axi_virtual_sequence.sv(35) @ 3115: uvm_test_top.m_env.m_read_agent.m_seqr@@m_rd_seq [ qu_size] Popped val: '{awid:'h7, awaddr:'h4c40, awlen:'h3, awsize:'h2, awburst:WRAP}
UVM_INFO axi_sram_predictor.sv(97) @ 3200: uvm_test_top.m_env.m_predict [axi_sram_predictor]  _REad_agent    
   ---------------------------------------------
Name           Type          Size  Value     
---------------------------------------------
read_mon_tx_5  axi_rd_tx     -     @1821     
  arid         integral      12    'h6       
  araddr       integral      16    'h49cc    
  arburst      burst_t       2     WRAP      
  arlen        integral      8     'h7       
  arsize       integral      3     'h2       
  arlock       integral      1     'h0       
  arprot       integral      1     'h0       
  rid          integral      12    'h6       
  rdata        da(integral)  8     -         
    [0]        integral      32    'h4b09395b
    [1]        integral      32    'hbd211a0d
    [2]        integral      32    'hd6d117f2
    [3]        integral      32    'h76543afe
    [4]        integral      32    'h8511a01 
    [5]        integral      32    'h42bd6d32
    [6]        integral      32    'hb3e2148e
    [7]        integral      32    'h457fd349
  rresp        da(integral)  8     -         
    [0]        integral      2     'h0       
    [1]        integral      2     'h0       
    [2]        integral      2     'h0       
    [3]        integral      2     'h0       
    [4]        integral      2     'h0       
    [5]        integral      2     'h0       
    [6]        integral      2     'h0       
    [7]        integral      2     'h0       
  rlast        da(integral)  8     -         
    [0]        integral      1     'h0       
    [1]        integral      1     'h0       
    [2]        integral      1     'h0       
    [3]        integral      1     'h0       
    [4]        integral      1     'h0       
    [5]        integral      1     'h0       
    [6]        integral      1     'h0       
    [7]        integral      1     'h1       
---------------------------------------------
 
UVM_INFO axi_read_monitor.sv(42) @ 3205: uvm_test_top.m_env.m_read_agent.m_monitor [axi_read_monitor] Addr: 4c40, ARLEN: 3, Calculated Length: 4
UVM_INFO axi_virtual_sequence.sv(40) @ 3205: uvm_test_top.m_env.m_read_agent.m_seqr@@m_rd_seq [ qu_size _finish ] 
UVM_INFO axi_virtual_sequence.sv(35) @ 3205: uvm_test_top.m_env.m_read_agent.m_seqr@@m_rd_seq [ qu_size] Popped val: '{awid:'h8, awaddr:'h9428, awlen:'h2, awsize:'h1, awburst:INCR}
UVM_INFO axi_sram_predictor.sv(97) @ 3250: uvm_test_top.m_env.m_predict [axi_sram_predictor]  _REad_agent    
   ---------------------------------------------
Name           Type          Size  Value     
---------------------------------------------
read_mon_tx_6  axi_rd_tx     -     @1841     
  arid         integral      12    'h7       
  araddr       integral      16    'h4c40    
  arburst      burst_t       2     WRAP      
  arlen        integral      8     'h3       
  arsize       integral      3     'h2       
  arlock       integral      1     'h0       
  arprot       integral      1     'h1       
  rid          integral      12    'h7       
  rdata        da(integral)  4     -         
    [0]        integral      32    'hf747dfcf
    [1]        integral      32    'hb2a9d775
    [2]        integral      32    'h7cd48306
    [3]        integral      32    'h18d4b349
  rresp        da(integral)  4     -         
    [0]        integral      2     'h0       
    [1]        integral      2     'h0       
    [2]        integral      2     'h0       
    [3]        integral      2     'h0       
  rlast        da(integral)  4     -         
    [0]        integral      1     'h0       
    [1]        integral      1     'h0       
    [2]        integral      1     'h0       
    [3]        integral      1     'h1       
---------------------------------------------
 
UVM_INFO axi_read_monitor.sv(42) @ 3255: uvm_test_top.m_env.m_read_agent.m_monitor [axi_read_monitor] Addr: 9428, ARLEN: 2, Calculated Length: 3
UVM_INFO axi_virtual_sequence.sv(40) @ 3255: uvm_test_top.m_env.m_read_agent.m_seqr@@m_rd_seq [ qu_size _finish ] 
UVM_INFO axi_virtual_sequence.sv(35) @ 3255: uvm_test_top.m_env.m_read_agent.m_seqr@@m_rd_seq [ qu_size] Popped val: '{awid:'h9, awaddr:'h9e90, awlen:'h1, awsize:'h2, awburst:WRAP}
UVM_INFO axi_sram_predictor.sv(97) @ 3290: uvm_test_top.m_env.m_predict [axi_sram_predictor]  _REad_agent    
   -----------------------------------------
Name           Type          Size  Value 
-----------------------------------------
read_mon_tx_7  axi_rd_tx     -     @1861 
  arid         integral      12    'h8   
  araddr       integral      16    'h9428
  arburst      burst_t       2     INCR  
  arlen        integral      8     'h2   
  arsize       integral      3     'h1   
  arlock       integral      1     'h1   
  arprot       integral      1     'h1   
  rid          integral      12    'h8   
  rdata        da(integral)  3     -     
    [0]        integral      32    'hbe8f
    [1]        integral      32    'hbe8f
    [2]        integral      32    'hc7de
  rresp        da(integral)  3     -     
    [0]        integral      2     'h0   
    [1]        integral      2     'h0   
    [2]        integral      2     'h0   
  rlast        da(integral)  3     -     
    [0]        integral      1     'h0   
    [1]        integral      1     'h0   
    [2]        integral      1     'h1   
-----------------------------------------
 
UVM_INFO axi_read_monitor.sv(42) @ 3295: uvm_test_top.m_env.m_read_agent.m_monitor [axi_read_monitor] Addr: 9e90, ARLEN: 1, Calculated Length: 2
UVM_INFO axi_virtual_sequence.sv(40) @ 3295: uvm_test_top.m_env.m_read_agent.m_seqr@@m_rd_seq [ qu_size _finish ] 
UVM_INFO axi_virtual_sequence.sv(35) @ 3295: uvm_test_top.m_env.m_read_agent.m_seqr@@m_rd_seq [ qu_size] Popped val: '{awid:'ha, awaddr:'hc713, awlen:'h1, awsize:'h0, awburst:INCR}
UVM_INFO axi_sram_predictor.sv(97) @ 3320: uvm_test_top.m_env.m_predict [axi_sram_predictor]  _REad_agent    
   ---------------------------------------------
Name           Type          Size  Value     
---------------------------------------------
read_mon_tx_8  axi_rd_tx     -     @1881     
  arid         integral      12    'h9       
  araddr       integral      16    'h9e90    
  arburst      burst_t       2     WRAP      
  arlen        integral      8     'h1       
  arsize       integral      3     'h2       
  arlock       integral      1     'h1       
  arprot       integral      1     'h0       
  rid          integral      12    'h9       
  rdata        da(integral)  2     -         
    [0]        integral      32    'hb6a7ad42
    [1]        integral      32    'h3e4525eb
  rresp        da(integral)  2     -         
    [0]        integral      2     'h0       
    [1]        integral      2     'h0       
  rlast        da(integral)  2     -         
    [0]        integral      1     'h0       
    [1]        integral      1     'h1       
---------------------------------------------
 
UVM_INFO axi_read_monitor.sv(42) @ 3325: uvm_test_top.m_env.m_read_agent.m_monitor [axi_read_monitor] Addr: c713, ARLEN: 1, Calculated Length: 2
UVM_INFO axi_virtual_sequence.sv(40) @ 3325: uvm_test_top.m_env.m_read_agent.m_seqr@@m_rd_seq [ qu_size _finish ] 
UVM_INFO axi_virtual_sequence.sv(35) @ 3325: uvm_test_top.m_env.m_read_agent.m_seqr@@m_rd_seq [ qu_size] Popped val: '{awid:'hb, awaddr:'hd91a, awlen:'h4, awsize:'h1, awburst:INCR}
UVM_INFO axi_sram_predictor.sv(97) @ 3350: uvm_test_top.m_env.m_predict [axi_sram_predictor]  _REad_agent    
   -----------------------------------------
Name           Type          Size  Value 
-----------------------------------------
read_mon_tx_9  axi_rd_tx     -     @1901 
  arid         integral      12    'ha   
  araddr       integral      16    'hc713
  arburst      burst_t       2     INCR  
  arlen        integral      8     'h1   
  arsize       integral      3     'h0   
  arlock       integral      1     'h1   
  arprot       integral      1     'h1   
  rid          integral      12    'ha   
  rdata        da(integral)  2     -     
    [0]        integral      32    'h0   
    [1]        integral      32    'hba  
  rresp        da(integral)  2     -     
    [0]        integral      2     'h0   
    [1]        integral      2     'h0   
  rlast        da(integral)  2     -     
    [0]        integral      1     'h0   
    [1]        integral      1     'h1   
-----------------------------------------
 
UVM_INFO axi_read_monitor.sv(42) @ 3355: uvm_test_top.m_env.m_read_agent.m_monitor [axi_read_monitor] Addr: d91a, ARLEN: 4, Calculated Length: 5
UVM_INFO axi_virtual_sequence.sv(40) @ 3355: uvm_test_top.m_env.m_read_agent.m_seqr@@m_rd_seq [ qu_size _finish ] 
UVM_INFO axi_virtual_sequence.sv(35) @ 3355: uvm_test_top.m_env.m_read_agent.m_seqr@@m_rd_seq [ qu_size] Popped val: '{awid:'hc, awaddr:'h1424, awlen:'h1, awsize:'h2, awburst:WRAP}
UVM_INFO axi_sram_predictor.sv(97) @ 3410: uvm_test_top.m_env.m_predict [axi_sram_predictor]  _REad_agent    
   ------------------------------------------
Name            Type          Size  Value 
------------------------------------------
read_mon_tx_10  axi_rd_tx     -     @1921 
  arid          integral      12    'hb   
  araddr        integral      16    'hd91a
  arburst       burst_t       2     INCR  
  arlen         integral      8     'h4   
  arsize        integral      3     'h1   
  arlock        integral      1     'h0   
  arprot        integral      1     'h1   
  rid           integral      12    'hb   
  rdata         da(integral)  5     -     
    [0]         integral      32    'h0   
    [1]         integral      32    'h9212
    [2]         integral      32    'h9212
    [3]         integral      32    'heff5
    [4]         integral      32    'heff5
  rresp         da(integral)  5     -     
    [0]         integral      2     'h0   
    [1]         integral      2     'h0   
    [2]         integral      2     'h0   
    [3]         integral      2     'h0   
    [4]         integral      2     'h0   
  rlast         da(integral)  5     -     
    [0]         integral      1     'h0   
    [1]         integral      1     'h0   
    [2]         integral      1     'h0   
    [3]         integral      1     'h0   
    [4]         integral      1     'h1   
------------------------------------------
 
UVM_INFO axi_read_monitor.sv(42) @ 3415: uvm_test_top.m_env.m_read_agent.m_monitor [axi_read_monitor] Addr: 1424, ARLEN: 1, Calculated Length: 2
UVM_INFO axi_virtual_sequence.sv(40) @ 3415: uvm_test_top.m_env.m_read_agent.m_seqr@@m_rd_seq [ qu_size _finish ] 
UVM_INFO axi_virtual_sequence.sv(35) @ 3415: uvm_test_top.m_env.m_read_agent.m_seqr@@m_rd_seq [ qu_size] Popped val: '{awid:'hd, awaddr:'h179d, awlen:'h1, awsize:'h0, awburst:INCR}
UVM_INFO axi_sram_predictor.sv(97) @ 3440: uvm_test_top.m_env.m_predict [axi_sram_predictor]  _REad_agent    
   ----------------------------------------------
Name            Type          Size  Value     
----------------------------------------------
read_mon_tx_11  axi_rd_tx     -     @1941     
  arid          integral      12    'hc       
  araddr        integral      16    'h1424    
  arburst       burst_t       2     WRAP      
  arlen         integral      8     'h1       
  arsize        integral      3     'h2       
  arlock        integral      1     'h0       
  arprot        integral      1     'h1       
  rid           integral      12    'hc       
  rdata         da(integral)  2     -         
    [0]         integral      32    'h5aa7eeec
    [1]         integral      32    'hecd53736
  rresp         da(integral)  2     -         
    [0]         integral      2     'h0       
    [1]         integral      2     'h0       
  rlast         da(integral)  2     -         
    [0]         integral      1     'h0       
    [1]         integral      1     'h1       
----------------------------------------------
 
UVM_INFO axi_read_monitor.sv(42) @ 3445: uvm_test_top.m_env.m_read_agent.m_monitor [axi_read_monitor] Addr: 179d, ARLEN: 1, Calculated Length: 2
UVM_INFO axi_virtual_sequence.sv(40) @ 3445: uvm_test_top.m_env.m_read_agent.m_seqr@@m_rd_seq [ qu_size _finish ] 
UVM_INFO axi_virtual_sequence.sv(35) @ 3445: uvm_test_top.m_env.m_read_agent.m_seqr@@m_rd_seq [ qu_size] Popped val: '{awid:'he, awaddr:'h44bc, awlen:'h3, awsize:'h2, awburst:WRAP}
UVM_INFO axi_sram_predictor.sv(97) @ 3470: uvm_test_top.m_env.m_predict [axi_sram_predictor]  _REad_agent    
   ------------------------------------------
Name            Type          Size  Value 
------------------------------------------
read_mon_tx_12  axi_rd_tx     -     @1961 
  arid          integral      12    'hd   
  araddr        integral      16    'h179d
  arburst       burst_t       2     INCR  
  arlen         integral      8     'h1   
  arsize        integral      3     'h0   
  arlock        integral      1     'h0   
  arprot        integral      1     'h0   
  rid           integral      12    'hd   
  rdata         da(integral)  2     -     
    [0]         integral      32    'h0   
    [1]         integral      32    'h0   
  rresp         da(integral)  2     -     
    [0]         integral      2     'h0   
    [1]         integral      2     'h0   
  rlast         da(integral)  2     -     
    [0]         integral      1     'h0   
    [1]         integral      1     'h1   
------------------------------------------
 
UVM_INFO axi_read_monitor.sv(42) @ 3475: uvm_test_top.m_env.m_read_agent.m_monitor [axi_read_monitor] Addr: 44bc, ARLEN: 3, Calculated Length: 4
UVM_INFO axi_virtual_sequence.sv(40) @ 3475: uvm_test_top.m_env.m_read_agent.m_seqr@@m_rd_seq [ qu_size _finish ] 
UVM_INFO axi_virtual_sequence.sv(35) @ 3475: uvm_test_top.m_env.m_read_agent.m_seqr@@m_rd_seq [ qu_size] Popped val: '{awid:'hf, awaddr:'h32c3, awlen:'h1, awsize:'h0, awburst:WRAP}
UVM_INFO axi_sram_predictor.sv(97) @ 3520: uvm_test_top.m_env.m_predict [axi_sram_predictor]  _REad_agent    
   ----------------------------------------------
Name            Type          Size  Value     
----------------------------------------------
read_mon_tx_13  axi_rd_tx     -     @1981     
  arid          integral      12    'he       
  araddr        integral      16    'h44bc    
  arburst       burst_t       2     WRAP      
  arlen         integral      8     'h3       
  arsize        integral      3     'h2       
  arlock        integral      1     'h0       
  arprot        integral      1     'h1       
  rid           integral      12    'he       
  rdata         da(integral)  4     -         
    [0]         integral      32    'h55225e5 
    [1]         integral      32    'hcdf59bde
    [2]         integral      32    'ha7a284a4
    [3]         integral      32    'hb33facc8
  rresp         da(integral)  4     -         
    [0]         integral      2     'h0       
    [1]         integral      2     'h0       
    [2]         integral      2     'h0       
    [3]         integral      2     'h0       
  rlast         da(integral)  4     -         
    [0]         integral      1     'h0       
    [1]         integral      1     'h0       
    [2]         integral      1     'h0       
    [3]         integral      1     'h1       
----------------------------------------------
 
UVM_INFO axi_read_monitor.sv(42) @ 3525: uvm_test_top.m_env.m_read_agent.m_monitor [axi_read_monitor] Addr: 32c3, ARLEN: 1, Calculated Length: 2
UVM_INFO axi_virtual_sequence.sv(40) @ 3525: uvm_test_top.m_env.m_read_agent.m_seqr@@m_rd_seq [ qu_size _finish ] 
UVM_INFO axi_virtual_sequence.sv(35) @ 3525: uvm_test_top.m_env.m_read_agent.m_seqr@@m_rd_seq [ qu_size] Popped val: '{awid:'h10, awaddr:'hed33, awlen:'h6, awsize:'h0, awburst:INCR}
UVM_INFO axi_sram_predictor.sv(97) @ 3550: uvm_test_top.m_env.m_predict [axi_sram_predictor]  _REad_agent    
   ------------------------------------------
Name            Type          Size  Value 
------------------------------------------
read_mon_tx_14  axi_rd_tx     -     @2001 
  arid          integral      12    'hf   
  araddr        integral      16    'h32c3
  arburst       burst_t       2     WRAP  
  arlen         integral      8     'h1   
  arsize        integral      3     'h0   
  arlock        integral      1     'h0   
  arprot        integral      1     'h1   
  rid           integral      12    'hf   
  rdata         da(integral)  2     -     
    [0]         integral      32    'h0   
    [1]         integral      32    'h0   
  rresp         da(integral)  2     -     
    [0]         integral      2     'h0   
    [1]         integral      2     'h0   
  rlast         da(integral)  2     -     
    [0]         integral      1     'h0   
    [1]         integral      1     'h1   
------------------------------------------
 
UVM_INFO axi_read_monitor.sv(42) @ 3555: uvm_test_top.m_env.m_read_agent.m_monitor [axi_read_monitor] Addr: ed33, ARLEN: 6, Calculated Length: 7
UVM_INFO axi_virtual_sequence.sv(40) @ 3555: uvm_test_top.m_env.m_read_agent.m_seqr@@m_rd_seq [ qu_size _finish ] 
UVM_INFO axi_virtual_sequence.sv(35) @ 3555: uvm_test_top.m_env.m_read_agent.m_seqr@@m_rd_seq [ qu_size] Popped val: '{awid:'h11, awaddr:'h8c96, awlen:'h9, awsize:'h0, awburst:INCR}
UVM_INFO axi_sram_predictor.sv(97) @ 3630: uvm_test_top.m_env.m_predict [axi_sram_predictor]  _REad_agent    
   ------------------------------------------
Name            Type          Size  Value 
------------------------------------------
read_mon_tx_15  axi_rd_tx     -     @2021 
  arid          integral      12    'h10  
  araddr        integral      16    'hed33
  arburst       burst_t       2     INCR  
  arlen         integral      8     'h6   
  arsize        integral      3     'h0   
  arlock        integral      1     'h1   
  arprot        integral      1     'h0   
  rid           integral      12    'h10  
  rdata         da(integral)  7     -     
    [0]         integral      32    'h0   
    [1]         integral      32    'h77  
    [2]         integral      32    'h77  
    [3]         integral      32    'h77  
    [4]         integral      32    'h77  
    [5]         integral      32    'h49  
    [6]         integral      32    'h49  
  rresp         da(integral)  7     -     
    [0]         integral      2     'h0   
    [1]         integral      2     'h0   
    [2]         integral      2     'h0   
    [3]         integral      2     'h0   
    [4]         integral      2     'h0   
    [5]         integral      2     'h0   
    [6]         integral      2     'h0   
  rlast         da(integral)  7     -     
    [0]         integral      1     'h0   
    [1]         integral      1     'h0   
    [2]         integral      1     'h0   
    [3]         integral      1     'h0   
    [4]         integral      1     'h0   
    [5]         integral      1     'h0   
    [6]         integral      1     'h1   
------------------------------------------
 
UVM_INFO axi_read_monitor.sv(42) @ 3635: uvm_test_top.m_env.m_read_agent.m_monitor [axi_read_monitor] Addr: 8c96, ARLEN: 9, Calculated Length: 10
UVM_INFO axi_virtual_sequence.sv(40) @ 3635: uvm_test_top.m_env.m_read_agent.m_seqr@@m_rd_seq [ qu_size _finish ] 
UVM_INFO axi_virtual_sequence.sv(35) @ 3635: uvm_test_top.m_env.m_read_agent.m_seqr@@m_rd_seq [ qu_size] Popped val: '{awid:'h12, awaddr:'he300, awlen:'h3, awsize:'h2, awburst:WRAP}
UVM_INFO axi_sram_predictor.sv(97) @ 3740: uvm_test_top.m_env.m_predict [axi_sram_predictor]  _REad_agent    
   ------------------------------------------
Name            Type          Size  Value 
------------------------------------------
read_mon_tx_16  axi_rd_tx     -     @2041 
  arid          integral      12    'h11  
  araddr        integral      16    'h8c96
  arburst       burst_t       2     INCR  
  arlen         integral      8     'h9   
  arsize        integral      3     'h0   
  arlock        integral      1     'h1   
  arprot        integral      1     'h1   
  rid           integral      12    'h11  
  rdata         da(integral)  10    -     
    [0]         integral      32    'h0   
    [1]         integral      32    'h0   
    [2]         integral      32    'hef  
    [3]         integral      32    'hef  
    [4]         integral      32    'hef  
    [5]         integral      32    'hef  
    [6]         integral      32    'h79c6
    [7]         integral      32    'h79c6
    [8]         integral      32    'h79c6
    [9]         integral      32    'h79c6
  rresp         da(integral)  10    -     
    [0]         integral      2     'h0   
    [1]         integral      2     'h0   
    [2]         integral      2     'h0   
    [3]         integral      2     'h0   
    [4]         integral      2     'h0   
    [5]         integral      2     'h0   
    [6]         integral      2     'h0   
    [7]         integral      2     'h0   
    [8]         integral      2     'h0   
    [9]         integral      2     'h0   
  rlast         da(integral)  10    -     
    [0]         integral      1     'h0   
    [1]         integral      1     'h0   
    [2]         integral      1     'h0   
    [3]         integral      1     'h0   
    [4]         integral      1     'h0   
    [5]         integral      1     'h0   
    [6]         integral      1     'h0   
    [7]         integral      1     'h0   
    [8]         integral      1     'h0   
    [9]         integral      1     'h1   
------------------------------------------
 
UVM_INFO axi_read_monitor.sv(42) @ 3745: uvm_test_top.m_env.m_read_agent.m_monitor [axi_read_monitor] Addr: e300, ARLEN: 3, Calculated Length: 4
UVM_INFO axi_virtual_sequence.sv(40) @ 3745: uvm_test_top.m_env.m_read_agent.m_seqr@@m_rd_seq [ qu_size _finish ] 
UVM_INFO axi_virtual_sequence.sv(35) @ 3745: uvm_test_top.m_env.m_read_agent.m_seqr@@m_rd_seq [ qu_size] Popped val: '{awid:'h13, awaddr:'h853a, awlen:'h1, awsize:'h1, awburst:WRAP}
UVM_INFO axi_sram_predictor.sv(97) @ 3790: uvm_test_top.m_env.m_predict [axi_sram_predictor]  _REad_agent    
   ----------------------------------------------
Name            Type          Size  Value     
----------------------------------------------
read_mon_tx_17  axi_rd_tx     -     @2061     
  arid          integral      12    'h12      
  araddr        integral      16    'he300    
  arburst       burst_t       2     WRAP      
  arlen         integral      8     'h3       
  arsize        integral      3     'h2       
  arlock        integral      1     'h1       
  arprot        integral      1     'h0       
  rid           integral      12    'h12      
  rdata         da(integral)  4     -         
    [0]         integral      32    'h3999c46c
    [1]         integral      32    'hdd46bb3a
    [2]         integral      32    'hd9a92e3d
    [3]         integral      32    'ha20d97f7
  rresp         da(integral)  4     -         
    [0]         integral      2     'h0       
    [1]         integral      2     'h0       
    [2]         integral      2     'h0       
    [3]         integral      2     'h0       
  rlast         da(integral)  4     -         
    [0]         integral      1     'h0       
    [1]         integral      1     'h0       
    [2]         integral      1     'h0       
    [3]         integral      1     'h1       
----------------------------------------------
 
UVM_INFO axi_read_monitor.sv(42) @ 3795: uvm_test_top.m_env.m_read_agent.m_monitor [axi_read_monitor] Addr: 853a, ARLEN: 1, Calculated Length: 2
UVM_INFO axi_virtual_sequence.sv(40) @ 3795: uvm_test_top.m_env.m_read_agent.m_seqr@@m_rd_seq [ qu_size _finish ] 
UVM_INFO axi_virtual_sequence.sv(35) @ 3795: uvm_test_top.m_env.m_read_agent.m_seqr@@m_rd_seq [ qu_size] Popped val: '{awid:'h14, awaddr:'h178, awlen:'h1, awsize:'h2, awburst:WRAP}
UVM_INFO axi_sram_predictor.sv(97) @ 3820: uvm_test_top.m_env.m_predict [axi_sram_predictor]  _REad_agent    
   ------------------------------------------
Name            Type          Size  Value 
------------------------------------------
read_mon_tx_18  axi_rd_tx     -     @2081 
  arid          integral      12    'h13  
  araddr        integral      16    'h853a
  arburst       burst_t       2     WRAP  
  arlen         integral      8     'h1   
  arsize        integral      3     'h1   
  arlock        integral      1     'h0   
  arprot        integral      1     'h1   
  rid           integral      12    'h13  
  rdata         da(integral)  2     -     
    [0]         integral      32    'h0   
    [1]         integral      32    'h94c0
  rresp         da(integral)  2     -     
    [0]         integral      2     'h0   
    [1]         integral      2     'h0   
  rlast         da(integral)  2     -     
    [0]         integral      1     'h0   
    [1]         integral      1     'h1   
------------------------------------------
 
UVM_INFO axi_read_monitor.sv(42) @ 3825: uvm_test_top.m_env.m_read_agent.m_monitor [axi_read_monitor] Addr: 0178, ARLEN: 1, Calculated Length: 2
UVM_INFO axi_virtual_sequence.sv(40) @ 3825: uvm_test_top.m_env.m_read_agent.m_seqr@@m_rd_seq [ qu_size _finish ] 
UVM_INFO axi_virtual_sequence.sv(35) @ 3825: uvm_test_top.m_env.m_read_agent.m_seqr@@m_rd_seq [ qu_size] Popped val: '{awid:'h15, awaddr:'hff53, awlen:'h9, awsize:'h2, awburst:INCR}
UVM_INFO axi_sram_predictor.sv(97) @ 3850: uvm_test_top.m_env.m_predict [axi_sram_predictor]  _REad_agent    
   ----------------------------------------------
Name            Type          Size  Value     
----------------------------------------------
read_mon_tx_19  axi_rd_tx     -     @2101     
  arid          integral      12    'h14      
  araddr        integral      16    'h178     
  arburst       burst_t       2     WRAP      
  arlen         integral      8     'h1       
  arsize        integral      3     'h2       
  arlock        integral      1     'h1       
  arprot        integral      1     'h1       
  rid           integral      12    'h14      
  rdata         da(integral)  2     -         
    [0]         integral      32    'he6964396
    [1]         integral      32    'he0b4b6  
  rresp         da(integral)  2     -         
    [0]         integral      2     'h0       
    [1]         integral      2     'h0       
  rlast         da(integral)  2     -         
    [0]         integral      1     'h0       
    [1]         integral      1     'h1       
----------------------------------------------
 
UVM_INFO axi_read_monitor.sv(42) @ 3855: uvm_test_top.m_env.m_read_agent.m_monitor [axi_read_monitor] Addr: ff53, ARLEN: 9, Calculated Length: 10
UVM_INFO axi_virtual_sequence.sv(40) @ 3855: uvm_test_top.m_env.m_read_agent.m_seqr@@m_rd_seq [ qu_size _finish ] 
UVM_INFO axi_virtual_sequence.sv(35) @ 3855: uvm_test_top.m_env.m_read_agent.m_seqr@@m_rd_seq [ qu_size] Popped val: '{awid:'h16, awaddr:'h79d4, awlen:'h7, awsize:'h1, awburst:WRAP}
UVM_INFO axi_sram_predictor.sv(97) @ 3960: uvm_test_top.m_env.m_predict [axi_sram_predictor]  _REad_agent    
   ----------------------------------------------
Name            Type          Size  Value     
----------------------------------------------
read_mon_tx_20  axi_rd_tx     -     @2121     
  arid          integral      12    'h15      
  araddr        integral      16    'hff53    
  arburst       burst_t       2     INCR      
  arlen         integral      8     'h9       
  arsize        integral      3     'h2       
  arlock        integral      1     'h0       
  arprot        integral      1     'h0       
  rid           integral      12    'h15      
  rdata         da(integral)  10    -         
    [0]         integral      32    'hdf000000
    [1]         integral      32    'haa1e6621
    [2]         integral      32    'ha491eb03
    [3]         integral      32    'h424d7a22
    [4]         integral      32    'h446be415
    [5]         integral      32    'he2a30812
    [6]         integral      32    'h3d954ef5
    [7]         integral      32    'h884ffe50
    [8]         integral      32    'h3348c6d0
    [9]         integral      32    'h9a5ab091
  rresp         da(integral)  10    -         
    [0]         integral      2     'h0       
    [1]         integral      2     'h0       
    [2]         integral      2     'h0       
    [3]         integral      2     'h0       
    [4]         integral      2     'h0       
    [5]         integral      2     'h0       
    [6]         integral      2     'h0       
    [7]         integral      2     'h0       
    [8]         integral      2     'h0       
    [9]         integral      2     'h0       
  rlast         da(integral)  10    -         
    [0]         integral      1     'h0       
    [1]         integral      1     'h0       
    [2]         integral      1     'h0       
    [3]         integral      1     'h0       
    [4]         integral      1     'h0       
    [5]         integral      1     'h0       
    [6]         integral      1     'h0       
    [7]         integral      1     'h0       
    [8]         integral      1     'h0       
    [9]         integral      1     'h1       
----------------------------------------------
 
UVM_INFO axi_read_monitor.sv(42) @ 3965: uvm_test_top.m_env.m_read_agent.m_monitor [axi_read_monitor] Addr: 79d4, ARLEN: 7, Calculated Length: 8
UVM_INFO axi_virtual_sequence.sv(40) @ 3965: uvm_test_top.m_env.m_read_agent.m_seqr@@m_rd_seq [ qu_size _finish ] 
UVM_INFO axi_virtual_sequence.sv(35) @ 3965: uvm_test_top.m_env.m_read_agent.m_seqr@@m_rd_seq [ qu_size] Popped val: '{awid:'h17, awaddr:'h17f, awlen:'h3, awsize:'h0, awburst:WRAP}
UVM_INFO axi_sram_predictor.sv(97) @ 4050: uvm_test_top.m_env.m_predict [axi_sram_predictor]  _REad_agent    
   ------------------------------------------
Name            Type          Size  Value 
------------------------------------------
read_mon_tx_21  axi_rd_tx     -     @2141 
  arid          integral      12    'h16  
  araddr        integral      16    'h79d4
  arburst       burst_t       2     WRAP  
  arlen         integral      8     'h7   
  arsize        integral      3     'h1   
  arlock        integral      1     'h1   
  arprot        integral      1     'h0   
  rid           integral      12    'h16  
  rdata         da(integral)  8     -     
    [0]         integral      32    'h194c
    [1]         integral      32    'h194c
    [2]         integral      32    'h2155
    [3]         integral      32    'h2155
    [4]         integral      32    'h1d30
    [5]         integral      32    'h1d30
    [6]         integral      32    'hbfef
    [7]         integral      32    'hbfef
  rresp         da(integral)  8     -     
    [0]         integral      2     'h0   
    [1]         integral      2     'h0   
    [2]         integral      2     'h0   
    [3]         integral      2     'h0   
    [4]         integral      2     'h0   
    [5]         integral      2     'h0   
    [6]         integral      2     'h0   
    [7]         integral      2     'h0   
  rlast         da(integral)  8     -     
    [0]         integral      1     'h0   
    [1]         integral      1     'h0   
    [2]         integral      1     'h0   
    [3]         integral      1     'h0   
    [4]         integral      1     'h0   
    [5]         integral      1     'h0   
    [6]         integral      1     'h0   
    [7]         integral      1     'h1   
------------------------------------------
 
UVM_INFO axi_read_monitor.sv(42) @ 4055: uvm_test_top.m_env.m_read_agent.m_monitor [axi_read_monitor] Addr: 017f, ARLEN: 3, Calculated Length: 4
UVM_INFO axi_virtual_sequence.sv(40) @ 4055: uvm_test_top.m_env.m_read_agent.m_seqr@@m_rd_seq [ qu_size _finish ] 
UVM_INFO axi_virtual_sequence.sv(35) @ 4055: uvm_test_top.m_env.m_read_agent.m_seqr@@m_rd_seq [ qu_size] Popped val: '{awid:'h18, awaddr:'hf9d, awlen:'h3, awsize:'h0, awburst:WRAP}
UVM_INFO axi_sram_predictor.sv(97) @ 4100: uvm_test_top.m_env.m_predict [axi_sram_predictor]  _REad_agent    
   --------------------------------------------
Name            Type          Size  Value   
--------------------------------------------
read_mon_tx_22  axi_rd_tx     -     @2161   
  arid          integral      12    'h17    
  araddr        integral      16    'h17f   
  arburst       burst_t       2     WRAP    
  arlen         integral      8     'h3     
  arsize        integral      3     'h0     
  arlock        integral      1     'h0     
  arprot        integral      1     'h1     
  rid           integral      12    'h17    
  rdata         da(integral)  4     -       
    [0]         integral      32    'he0b4b6
    [1]         integral      32    'h16    
    [2]         integral      32    'h16    
    [3]         integral      32    'h16    
  rresp         da(integral)  4     -       
    [0]         integral      2     'h0     
    [1]         integral      2     'h0     
    [2]         integral      2     'h0     
    [3]         integral      2     'h0     
  rlast         da(integral)  4     -       
    [0]         integral      1     'h0     
    [1]         integral      1     'h0     
    [2]         integral      1     'h0     
    [3]         integral      1     'h1     
--------------------------------------------
 
UVM_INFO axi_read_monitor.sv(42) @ 4105: uvm_test_top.m_env.m_read_agent.m_monitor [axi_read_monitor] Addr: 0f9d, ARLEN: 3, Calculated Length: 4
UVM_INFO axi_virtual_sequence.sv(40) @ 4105: uvm_test_top.m_env.m_read_agent.m_seqr@@m_rd_seq [ qu_size _finish ] 
UVM_INFO axi_virtual_sequence.sv(35) @ 4105: uvm_test_top.m_env.m_read_agent.m_seqr@@m_rd_seq [ qu_size] Popped val: '{awid:'h19, awaddr:'hb1dd, awlen:'h2, awsize:'h2, awburst:INCR}
UVM_INFO axi_sram_predictor.sv(97) @ 4150: uvm_test_top.m_env.m_predict [axi_sram_predictor]  _REad_agent    
   -----------------------------------------
Name            Type          Size  Value
-----------------------------------------
read_mon_tx_23  axi_rd_tx     -     @2181
  arid          integral      12    'h18 
  araddr        integral      16    'hf9d
  arburst       burst_t       2     WRAP 
  arlen         integral      8     'h3  
  arsize        integral      3     'h0  
  arlock        integral      1     'h1  
  arprot        integral      1     'h1  
  rid           integral      12    'h18 
  rdata         da(integral)  4     -    
    [0]         integral      32    'h0  
    [1]         integral      32    'h0  
    [2]         integral      32    'h0  
    [3]         integral      32    'h4c 
  rresp         da(integral)  4     -    
    [0]         integral      2     'h0  
    [1]         integral      2     'h0  
    [2]         integral      2     'h0  
    [3]         integral      2     'h0  
  rlast         da(integral)  4     -    
    [0]         integral      1     'h0  
    [1]         integral      1     'h0  
    [2]         integral      1     'h0  
    [3]         integral      1     'h1  
-----------------------------------------
 
UVM_INFO axi_read_monitor.sv(42) @ 4155: uvm_test_top.m_env.m_read_agent.m_monitor [axi_read_monitor] Addr: b1dd, ARLEN: 2, Calculated Length: 3
UVM_INFO axi_virtual_sequence.sv(40) @ 4155: uvm_test_top.m_env.m_read_agent.m_seqr@@m_rd_seq [ qu_size _finish ] 
UVM_INFO axi_virtual_sequence.sv(35) @ 4155: uvm_test_top.m_env.m_read_agent.m_seqr@@m_rd_seq [ qu_size] Popped val: '{awid:'h1a, awaddr:'hf788, awlen:'h7, awsize:'h1, awburst:WRAP}
UVM_INFO axi_sram_predictor.sv(97) @ 4190: uvm_test_top.m_env.m_predict [axi_sram_predictor]  _REad_agent    
   ----------------------------------------------
Name            Type          Size  Value     
----------------------------------------------
read_mon_tx_24  axi_rd_tx     -     @2201     
  arid          integral      12    'h19      
  araddr        integral      16    'hb1dd    
  arburst       burst_t       2     INCR      
  arlen         integral      8     'h2       
  arsize        integral      3     'h2       
  arlock        integral      1     'h1       
  arprot        integral      1     'h0       
  rid           integral      12    'h19      
  rdata         da(integral)  3     -         
    [0]         integral      32    'hd3334500
    [1]         integral      32    'hae6277d3
    [2]         integral      32    'he5310692
  rresp         da(integral)  3     -         
    [0]         integral      2     'h0       
    [1]         integral      2     'h0       
    [2]         integral      2     'h0       
  rlast         da(integral)  3     -         
    [0]         integral      1     'h0       
    [1]         integral      1     'h0       
    [2]         integral      1     'h1       
----------------------------------------------
 
UVM_INFO axi_read_monitor.sv(42) @ 4195: uvm_test_top.m_env.m_read_agent.m_monitor [axi_read_monitor] Addr: f788, ARLEN: 7, Calculated Length: 8
UVM_INFO axi_virtual_sequence.sv(40) @ 4195: uvm_test_top.m_env.m_read_agent.m_seqr@@m_rd_seq [ qu_size _finish ] 
UVM_INFO axi_virtual_sequence.sv(35) @ 4195: uvm_test_top.m_env.m_read_agent.m_seqr@@m_rd_seq [ qu_size] Popped val: '{awid:'h1b, awaddr:'h3b73, awlen:'h4, awsize:'h2, awburst:INCR}
UVM_INFO axi_sram_predictor.sv(97) @ 4280: uvm_test_top.m_env.m_predict [axi_sram_predictor]  _REad_agent    
   ------------------------------------------
Name            Type          Size  Value 
------------------------------------------
read_mon_tx_25  axi_rd_tx     -     @2221 
  arid          integral      12    'h1a  
  araddr        integral      16    'hf788
  arburst       burst_t       2     WRAP  
  arlen         integral      8     'h7   
  arsize        integral      3     'h1   
  arlock        integral      1     'h1   
  arprot        integral      1     'h0   
  rid           integral      12    'h1a  
  rdata         da(integral)  8     -     
    [0]         integral      32    'h387e
    [1]         integral      32    'h387e
    [2]         integral      32    'h9706
    [3]         integral      32    'h9706
    [4]         integral      32    'hc4f8
    [5]         integral      32    'hc4f8
    [6]         integral      32    'ha93 
    [7]         integral      32    'ha93 
  rresp         da(integral)  8     -     
    [0]         integral      2     'h0   
    [1]         integral      2     'h0   
    [2]         integral      2     'h0   
    [3]         integral      2     'h0   
    [4]         integral      2     'h0   
    [5]         integral      2     'h0   
    [6]         integral      2     'h0   
    [7]         integral      2     'h0   
  rlast         da(integral)  8     -     
    [0]         integral      1     'h0   
    [1]         integral      1     'h0   
    [2]         integral      1     'h0   
    [3]         integral      1     'h0   
    [4]         integral      1     'h0   
    [5]         integral      1     'h0   
    [6]         integral      1     'h0   
    [7]         integral      1     'h1   
------------------------------------------
 
UVM_INFO axi_read_monitor.sv(42) @ 4285: uvm_test_top.m_env.m_read_agent.m_monitor [axi_read_monitor] Addr: 3b73, ARLEN: 4, Calculated Length: 5
UVM_INFO axi_virtual_sequence.sv(40) @ 4285: uvm_test_top.m_env.m_read_agent.m_seqr@@m_rd_seq [ qu_size _finish ] 
UVM_INFO axi_virtual_sequence.sv(35) @ 4285: uvm_test_top.m_env.m_read_agent.m_seqr@@m_rd_seq [ qu_size] Popped val: '{awid:'h1c, awaddr:'h7fcb, awlen:'h6, awsize:'h0, awburst:INCR}
UVM_INFO axi_sram_predictor.sv(97) @ 4340: uvm_test_top.m_env.m_predict [axi_sram_predictor]  _REad_agent    
   ----------------------------------------------
Name            Type          Size  Value     
----------------------------------------------
read_mon_tx_26  axi_rd_tx     -     @2241     
  arid          integral      12    'h1b      
  araddr        integral      16    'h3b73    
  arburst       burst_t       2     INCR      
  arlen         integral      8     'h4       
  arsize        integral      3     'h2       
  arlock        integral      1     'h0       
  arprot        integral      1     'h0       
  rid           integral      12    'h1b      
  rdata         da(integral)  5     -         
    [0]         integral      32    'h86000000
    [1]         integral      32    'h334d3ddf
    [2]         integral      32    'hd19f3969
    [3]         integral      32    'hfbaede36
    [4]         integral      32    'hc8417eaf
  rresp         da(integral)  5     -         
    [0]         integral      2     'h0       
    [1]         integral      2     'h0       
    [2]         integral      2     'h0       
    [3]         integral      2     'h0       
    [4]         integral      2     'h0       
  rlast         da(integral)  5     -         
    [0]         integral      1     'h0       
    [1]         integral      1     'h0       
    [2]         integral      1     'h0       
    [3]         integral      1     'h0       
    [4]         integral      1     'h1       
----------------------------------------------
 
UVM_INFO axi_read_monitor.sv(42) @ 4345: uvm_test_top.m_env.m_read_agent.m_monitor [axi_read_monitor] Addr: 7fcb, ARLEN: 6, Calculated Length: 7
UVM_INFO axi_virtual_sequence.sv(40) @ 4345: uvm_test_top.m_env.m_read_agent.m_seqr@@m_rd_seq [ qu_size _finish ] 
UVM_INFO axi_virtual_sequence.sv(35) @ 4345: uvm_test_top.m_env.m_read_agent.m_seqr@@m_rd_seq [ qu_size] Popped val: '{awid:'h1d, awaddr:'h284, awlen:'ha, awsize:'h0, awburst:INCR}
UVM_INFO axi_sram_predictor.sv(97) @ 4420: uvm_test_top.m_env.m_predict [axi_sram_predictor]  _REad_agent    
   ------------------------------------------
Name            Type          Size  Value 
------------------------------------------
read_mon_tx_27  axi_rd_tx     -     @2261 
  arid          integral      12    'h1c  
  araddr        integral      16    'h7fcb
  arburst       burst_t       2     INCR  
  arlen         integral      8     'h6   
  arsize        integral      3     'h0   
  arlock        integral      1     'h1   
  arprot        integral      1     'h0   
  rid           integral      12    'h1c  
  rdata         da(integral)  7     -     
    [0]         integral      32    'h0   
    [1]         integral      32    'h68  
    [2]         integral      32    'h68  
    [3]         integral      32    'h68  
    [4]         integral      32    'h68  
    [5]         integral      32    'hc6  
    [6]         integral      32    'hc6  
  rresp         da(integral)  7     -     
    [0]         integral      2     'h0   
    [1]         integral      2     'h0   
    [2]         integral      2     'h0   
    [3]         integral      2     'h0   
    [4]         integral      2     'h0   
    [5]         integral      2     'h0   
    [6]         integral      2     'h0   
  rlast         da(integral)  7     -     
    [0]         integral      1     'h0   
    [1]         integral      1     'h0   
    [2]         integral      1     'h0   
    [3]         integral      1     'h0   
    [4]         integral      1     'h0   
    [5]         integral      1     'h0   
    [6]         integral      1     'h1   
------------------------------------------
 
UVM_INFO axi_read_monitor.sv(42) @ 4425: uvm_test_top.m_env.m_read_agent.m_monitor [axi_read_monitor] Addr: 0284, ARLEN: 10, Calculated Length: 11
UVM_INFO axi_virtual_sequence.sv(40) @ 4425: uvm_test_top.m_env.m_read_agent.m_seqr@@m_rd_seq [ qu_size _finish ] 
UVM_INFO axi_virtual_sequence.sv(35) @ 4425: uvm_test_top.m_env.m_read_agent.m_seqr@@m_rd_seq [ qu_size] Popped val: '{awid:'h1e, awaddr:'h7a3f, awlen:'h3, awsize:'h0, awburst:WRAP}
UVM_INFO axi_sram_predictor.sv(97) @ 4540: uvm_test_top.m_env.m_predict [axi_sram_predictor]  _REad_agent    
   -----------------------------------------
Name            Type          Size  Value
-----------------------------------------
read_mon_tx_28  axi_rd_tx     -     @2281
  arid          integral      12    'h1d 
  araddr        integral      16    'h284
  arburst       burst_t       2     INCR 
  arlen         integral      8     'ha  
  arsize        integral      3     'h0  
  arlock        integral      1     'h1  
  arprot        integral      1     'h1  
  rid           integral      12    'h1d 
  rdata         da(integral)  11    -    
    [0]         integral      32    'h29 
    [1]         integral      32    'h29 
    [2]         integral      32    'h29 
    [3]         integral      32    'h29 
    [4]         integral      32    'h84 
    ...         ...           ...   ...  
    [6]         integral      32    'h84 
    [7]         integral      32    'h84 
    [8]         integral      32    'h9d 
    [9]         integral      32    'h9d 
    [10]        integral      32    'h9d 
  rresp         da(integral)  11    -    
    [0]         integral      2     'h0  
    [1]         integral      2     'h0  
    [2]         integral      2     'h0  
    [3]         integral      2     'h0  
    [4]         integral      2     'h0  
    ...         ...           ...   ...  
    [6]         integral      2     'h0  
    [7]         integral      2     'h0  
    [8]         integral      2     'h0  
    [9]         integral      2     'h0  
    [10]        integral      2     'h0  
  rlast         da(integral)  11    -    
    [0]         integral      1     'h0  
    [1]         integral      1     'h0  
    [2]         integral      1     'h0  
    [3]         integral      1     'h0  
    [4]         integral      1     'h0  
    ...         ...           ...   ...  
    [6]         integral      1     'h0  
    [7]         integral      1     'h0  
    [8]         integral      1     'h0  
    [9]         integral      1     'h0  
    [10]        integral      1     'h1  
-----------------------------------------
 
UVM_INFO axi_read_monitor.sv(42) @ 4545: uvm_test_top.m_env.m_read_agent.m_monitor [axi_read_monitor] Addr: 7a3f, ARLEN: 3, Calculated Length: 4
UVM_INFO axi_virtual_sequence.sv(40) @ 4545: uvm_test_top.m_env.m_read_agent.m_seqr@@m_rd_seq [ qu_size _finish ] 
UVM_INFO axi_virtual_sequence.sv(35) @ 4545: uvm_test_top.m_env.m_read_agent.m_seqr@@m_rd_seq [ qu_size] Popped val: '{awid:'h1f, awaddr:'h108, awlen:'h1, awsize:'h0, awburst:INCR}
UVM_INFO axi_sram_predictor.sv(97) @ 4590: uvm_test_top.m_env.m_predict [axi_sram_predictor]  _REad_agent    
   ------------------------------------------
Name            Type          Size  Value 
------------------------------------------
read_mon_tx_29  axi_rd_tx     -     @2301 
  arid          integral      12    'h1e  
  araddr        integral      16    'h7a3f
  arburst       burst_t       2     WRAP  
  arlen         integral      8     'h3   
  arsize        integral      3     'h0   
  arlock        integral      1     'h1   
  arprot        integral      1     'h1   
  rid           integral      12    'h1e  
  rdata         da(integral)  4     -     
    [0]         integral      32    'h0   
    [1]         integral      32    'h97  
    [2]         integral      32    'h97  
    [3]         integral      32    'h97  
  rresp         da(integral)  4     -     
    [0]         integral      2     'h0   
    [1]         integral      2     'h0   
    [2]         integral      2     'h0   
    [3]         integral      2     'h0   
  rlast         da(integral)  4     -     
    [0]         integral      1     'h0   
    [1]         integral      1     'h0   
    [2]         integral      1     'h0   
    [3]         integral      1     'h1   
------------------------------------------
 
UVM_INFO axi_read_monitor.sv(42) @ 4595: uvm_test_top.m_env.m_read_agent.m_monitor [axi_read_monitor] Addr: 0108, ARLEN: 1, Calculated Length: 2
UVM_INFO axi_virtual_sequence.sv(40) @ 4595: uvm_test_top.m_env.m_read_agent.m_seqr@@m_rd_seq [ qu_size _finish ] 
UVM_INFO axi_virtual_sequence.sv(35) @ 4595: uvm_test_top.m_env.m_read_agent.m_seqr@@m_rd_seq [ qu_size] Popped val: '{awid:'h20, awaddr:'h7798, awlen:'h7, awsize:'h2, awburst:WRAP}
UVM_INFO axi_sram_predictor.sv(97) @ 4620: uvm_test_top.m_env.m_predict [axi_sram_predictor]  _REad_agent    
   -----------------------------------------
Name            Type          Size  Value
-----------------------------------------
read_mon_tx_30  axi_rd_tx     -     @2321
  arid          integral      12    'h1f 
  araddr        integral      16    'h108
  arburst       burst_t       2     INCR 
  arlen         integral      8     'h1  
  arsize        integral      3     'h0  
  arlock        integral      1     'h0  
  arprot        integral      1     'h1  
  rid           integral      12    'h1f 
  rdata         da(integral)  2     -    
    [0]         integral      32    'hd  
    [1]         integral      32    'hd  
  rresp         da(integral)  2     -    
    [0]         integral      2     'h0  
    [1]         integral      2     'h0  
  rlast         da(integral)  2     -    
    [0]         integral      1     'h0  
    [1]         integral      1     'h1  
-----------------------------------------
 
UVM_INFO axi_read_monitor.sv(42) @ 4625: uvm_test_top.m_env.m_read_agent.m_monitor [axi_read_monitor] Addr: 7798, ARLEN: 7, Calculated Length: 8
UVM_INFO axi_virtual_sequence.sv(40) @ 4625: uvm_test_top.m_env.m_read_agent.m_seqr@@m_rd_seq [ qu_size _finish ] 
UVM_INFO axi_virtual_sequence.sv(35) @ 4625: uvm_test_top.m_env.m_read_agent.m_seqr@@m_rd_seq [ qu_size] Popped val: '{awid:'h21, awaddr:'hda91, awlen:'h6, awsize:'h0, awburst:INCR}
UVM_INFO axi_sram_predictor.sv(97) @ 4710: uvm_test_top.m_env.m_predict [axi_sram_predictor]  _REad_agent    
   ----------------------------------------------
Name            Type          Size  Value     
----------------------------------------------
read_mon_tx_31  axi_rd_tx     -     @2341     
  arid          integral      12    'h20      
  araddr        integral      16    'h7798    
  arburst       burst_t       2     WRAP      
  arlen         integral      8     'h7       
  arsize        integral      3     'h2       
  arlock        integral      1     'h1       
  arprot        integral      1     'h1       
  rid           integral      12    'h20      
  rdata         da(integral)  8     -         
    [0]         integral      32    'h72356033
    [1]         integral      32    'h15f91a54
    [2]         integral      32    'h9555cb3d
    [3]         integral      32    'hc492a6f 
    [4]         integral      32    'hfdb4fc29
    [5]         integral      32    'h29466fbe
    [6]         integral      32    'ha48cd521
    [7]         integral      32    'hdc4b9b0e
  rresp         da(integral)  8     -         
    [0]         integral      2     'h0       
    [1]         integral      2     'h0       
    [2]         integral      2     'h0       
    [3]         integral      2     'h0       
    [4]         integral      2     'h0       
    [5]         integral      2     'h0       
    [6]         integral      2     'h0       
    [7]         integral      2     'h0       
  rlast         da(integral)  8     -         
    [0]         integral      1     'h0       
    [1]         integral      1     'h0       
    [2]         integral      1     'h0       
    [3]         integral      1     'h0       
    [4]         integral      1     'h0       
    [5]         integral      1     'h0       
    [6]         integral      1     'h0       
    [7]         integral      1     'h1       
----------------------------------------------
 
UVM_INFO axi_read_monitor.sv(42) @ 4715: uvm_test_top.m_env.m_read_agent.m_monitor [axi_read_monitor] Addr: da91, ARLEN: 6, Calculated Length: 7
UVM_INFO axi_virtual_sequence.sv(40) @ 4715: uvm_test_top.m_env.m_read_agent.m_seqr@@m_rd_seq [ qu_size _finish ] 
UVM_INFO axi_virtual_sequence.sv(35) @ 4715: uvm_test_top.m_env.m_read_agent.m_seqr@@m_rd_seq [ qu_size] Popped val: '{awid:'h22, awaddr:'h8c9a, awlen:'h8, awsize:'h1, awburst:INCR}
UVM_INFO axi_sram_predictor.sv(97) @ 4790: uvm_test_top.m_env.m_predict [axi_sram_predictor]  _REad_agent    
   ------------------------------------------
Name            Type          Size  Value 
------------------------------------------
read_mon_tx_32  axi_rd_tx     -     @2361 
  arid          integral      12    'h21  
  araddr        integral      16    'hda91
  arburst       burst_t       2     INCR  
  arlen         integral      8     'h6   
  arsize        integral      3     'h0   
  arlock        integral      1     'h1   
  arprot        integral      1     'h1   
  rid           integral      12    'h21  
  rdata         da(integral)  7     -     
    [0]         integral      32    'h0   
    [1]         integral      32    'h0   
    [2]         integral      32    'h0   
    [3]         integral      32    'h5d  
    [4]         integral      32    'h5d  
    [5]         integral      32    'h5d  
    [6]         integral      32    'h5d  
  rresp         da(integral)  7     -     
    [0]         integral      2     'h0   
    [1]         integral      2     'h0   
    [2]         integral      2     'h0   
    [3]         integral      2     'h0   
    [4]         integral      2     'h0   
    [5]         integral      2     'h0   
    [6]         integral      2     'h0   
  rlast         da(integral)  7     -     
    [0]         integral      1     'h0   
    [1]         integral      1     'h0   
    [2]         integral      1     'h0   
    [3]         integral      1     'h0   
    [4]         integral      1     'h0   
    [5]         integral      1     'h0   
    [6]         integral      1     'h1   
------------------------------------------
 
UVM_INFO axi_read_monitor.sv(42) @ 4795: uvm_test_top.m_env.m_read_agent.m_monitor [axi_read_monitor] Addr: 8c9a, ARLEN: 8, Calculated Length: 9
UVM_INFO axi_virtual_sequence.sv(40) @ 4795: uvm_test_top.m_env.m_read_agent.m_seqr@@m_rd_seq [ qu_size _finish ] 
UVM_INFO axi_virtual_sequence.sv(35) @ 4795: uvm_test_top.m_env.m_read_agent.m_seqr@@m_rd_seq [ qu_size] Popped val: '{awid:'h23, awaddr:'hb10, awlen:'h7, awsize:'h2, awburst:WRAP}
UVM_INFO axi_sram_predictor.sv(97) @ 4890: uvm_test_top.m_env.m_predict [axi_sram_predictor]  _REad_agent    
   ------------------------------------------
Name            Type          Size  Value 
------------------------------------------
read_mon_tx_33  axi_rd_tx     -     @2381 
  arid          integral      12    'h22  
  araddr        integral      16    'h8c9a
  arburst       burst_t       2     INCR  
  arlen         integral      8     'h8   
  arsize        integral      3     'h1   
  arlock        integral      1     'h0   
  arprot        integral      1     'h0   
  rid           integral      12    'h22  
  rdata         da(integral)  9     -     
    [0]         integral      32    'hef  
    [1]         integral      32    'h79c6
    [2]         integral      32    'h79c6
    [3]         integral      32    'he2ae
    [4]         integral      32    'he2ae
    [5]         integral      32    'h4e10
    [6]         integral      32    'h4e10
    [7]         integral      32    'hcab8
    [8]         integral      32    'hcab8
  rresp         da(integral)  9     -     
    [0]         integral      2     'h0   
    [1]         integral      2     'h0   
    [2]         integral      2     'h0   
    [3]         integral      2     'h0   
    [4]         integral      2     'h0   
    [5]         integral      2     'h0   
    [6]         integral      2     'h0   
    [7]         integral      2     'h0   
    [8]         integral      2     'h0   
  rlast         da(integral)  9     -     
    [0]         integral      1     'h0   
    [1]         integral      1     'h0   
    [2]         integral      1     'h0   
    [3]         integral      1     'h0   
    [4]         integral      1     'h0   
    [5]         integral      1     'h0   
    [6]         integral      1     'h0   
    [7]         integral      1     'h0   
    [8]         integral      1     'h1   
------------------------------------------
 
UVM_INFO axi_read_monitor.sv(42) @ 4895: uvm_test_top.m_env.m_read_agent.m_monitor [axi_read_monitor] Addr: 0b10, ARLEN: 7, Calculated Length: 8
UVM_INFO axi_virtual_sequence.sv(40) @ 4895: uvm_test_top.m_env.m_read_agent.m_seqr@@m_rd_seq [ qu_size _finish ] 
UVM_INFO axi_virtual_sequence.sv(35) @ 4895: uvm_test_top.m_env.m_read_agent.m_seqr@@m_rd_seq [ qu_size] Popped val: '{awid:'h24, awaddr:'h17e1, awlen:'h8, awsize:'h0, awburst:INCR}
UVM_INFO axi_sram_predictor.sv(97) @ 4980: uvm_test_top.m_env.m_predict [axi_sram_predictor]  _REad_agent    
   ----------------------------------------------
Name            Type          Size  Value     
----------------------------------------------
read_mon_tx_34  axi_rd_tx     -     @2401     
  arid          integral      12    'h23      
  araddr        integral      16    'hb10     
  arburst       burst_t       2     WRAP      
  arlen         integral      8     'h7       
  arsize        integral      3     'h2       
  arlock        integral      1     'h1       
  arprot        integral      1     'h0       
  rid           integral      12    'h23      
  rdata         da(integral)  8     -         
    [0]         integral      32    'heae430d3
    [1]         integral      32    'h1cb86508
    [2]         integral      32    'h4961a09e
    [3]         integral      32    'h900290c5
    [4]         integral      32    'h2059bd30
    [5]         integral      32    'h2f53274b
    [6]         integral      32    'h650668e 
    [7]         integral      32    'hab18a772
  rresp         da(integral)  8     -         
    [0]         integral      2     'h0       
    [1]         integral      2     'h0       
    [2]         integral      2     'h0       
    [3]         integral      2     'h0       
    [4]         integral      2     'h0       
    [5]         integral      2     'h0       
    [6]         integral      2     'h0       
    [7]         integral      2     'h0       
  rlast         da(integral)  8     -         
    [0]         integral      1     'h0       
    [1]         integral      1     'h0       
    [2]         integral      1     'h0       
    [3]         integral      1     'h0       
    [4]         integral      1     'h0       
    [5]         integral      1     'h0       
    [6]         integral      1     'h0       
    [7]         integral      1     'h1       
----------------------------------------------
 
UVM_INFO axi_read_monitor.sv(42) @ 4985: uvm_test_top.m_env.m_read_agent.m_monitor [axi_read_monitor] Addr: 17e1, ARLEN: 8, Calculated Length: 9
UVM_INFO axi_virtual_sequence.sv(40) @ 4985: uvm_test_top.m_env.m_read_agent.m_seqr@@m_rd_seq [ qu_size _finish ] 
UVM_INFO axi_virtual_sequence.sv(35) @ 4985: uvm_test_top.m_env.m_read_agent.m_seqr@@m_rd_seq [ qu_size] Popped val: '{awid:'h25, awaddr:'h2830, awlen:'h2, awsize:'h0, awburst:INCR}
UVM_INFO axi_sram_predictor.sv(97) @ 5080: uvm_test_top.m_env.m_predict [axi_sram_predictor]  _REad_agent    
   ------------------------------------------
Name            Type          Size  Value 
------------------------------------------
read_mon_tx_35  axi_rd_tx     -     @2421 
  arid          integral      12    'h24  
  araddr        integral      16    'h17e1
  arburst       burst_t       2     INCR  
  arlen         integral      8     'h8   
  arsize        integral      3     'h0   
  arlock        integral      1     'h0   
  arprot        integral      1     'h1   
  rid           integral      12    'h24  
  rdata         da(integral)  9     -     
    [0]         integral      32    'h0   
    [1]         integral      32    'h0   
    [2]         integral      32    'h0   
    [3]         integral      32    'h39  
    [4]         integral      32    'h39  
    [5]         integral      32    'h39  
    [6]         integral      32    'h39  
    [7]         integral      32    'hfa  
    [8]         integral      32    'hfa  
  rresp         da(integral)  9     -     
    [0]         integral      2     'h0   
    [1]         integral      2     'h0   
    [2]         integral      2     'h0   
    [3]         integral      2     'h0   
    [4]         integral      2     'h0   
    [5]         integral      2     'h0   
    [6]         integral      2     'h0   
    [7]         integral      2     'h0   
    [8]         integral      2     'h0   
  rlast         da(integral)  9     -     
    [0]         integral      1     'h0   
    [1]         integral      1     'h0   
    [2]         integral      1     'h0   
    [3]         integral      1     'h0   
    [4]         integral      1     'h0   
    [5]         integral      1     'h0   
    [6]         integral      1     'h0   
    [7]         integral      1     'h0   
    [8]         integral      1     'h1   
------------------------------------------
 
UVM_INFO axi_read_monitor.sv(42) @ 5085: uvm_test_top.m_env.m_read_agent.m_monitor [axi_read_monitor] Addr: 2830, ARLEN: 2, Calculated Length: 3
UVM_INFO axi_virtual_sequence.sv(40) @ 5085: uvm_test_top.m_env.m_read_agent.m_seqr@@m_rd_seq [ qu_size _finish ] 
UVM_INFO axi_virtual_sequence.sv(35) @ 5085: uvm_test_top.m_env.m_read_agent.m_seqr@@m_rd_seq [ qu_size] Popped val: '{awid:'h26, awaddr:'hbad0, awlen:'h3, awsize:'h2, awburst:WRAP}
UVM_INFO axi_sram_predictor.sv(97) @ 5120: uvm_test_top.m_env.m_predict [axi_sram_predictor]  _REad_agent    
   ------------------------------------------
Name            Type          Size  Value 
------------------------------------------
read_mon_tx_36  axi_rd_tx     -     @2441 
  arid          integral      12    'h25  
  araddr        integral      16    'h2830
  arburst       burst_t       2     INCR  
  arlen         integral      8     'h2   
  arsize        integral      3     'h0   
  arlock        integral      1     'h0   
  arprot        integral      1     'h1   
  rid           integral      12    'h25  
  rdata         da(integral)  3     -     
    [0]         integral      32    'h90  
    [1]         integral      32    'h90  
    [2]         integral      32    'h90  
  rresp         da(integral)  3     -     
    [0]         integral      2     'h0   
    [1]         integral      2     'h0   
    [2]         integral      2     'h0   
  rlast         da(integral)  3     -     
    [0]         integral      1     'h0   
    [1]         integral      1     'h0   
    [2]         integral      1     'h1   
------------------------------------------
 
UVM_INFO axi_read_monitor.sv(42) @ 5125: uvm_test_top.m_env.m_read_agent.m_monitor [axi_read_monitor] Addr: bad0, ARLEN: 3, Calculated Length: 4
UVM_INFO axi_virtual_sequence.sv(40) @ 5125: uvm_test_top.m_env.m_read_agent.m_seqr@@m_rd_seq [ qu_size _finish ] 
UVM_INFO axi_virtual_sequence.sv(35) @ 5125: uvm_test_top.m_env.m_read_agent.m_seqr@@m_rd_seq [ qu_size] Popped val: '{awid:'h27, awaddr:'hf7b1, awlen:'h3, awsize:'h0, awburst:WRAP}
UVM_INFO axi_sram_predictor.sv(97) @ 5170: uvm_test_top.m_env.m_predict [axi_sram_predictor]  _REad_agent    
   ----------------------------------------------
Name            Type          Size  Value     
----------------------------------------------
read_mon_tx_37  axi_rd_tx     -     @2461     
  arid          integral      12    'h26      
  araddr        integral      16    'hbad0    
  arburst       burst_t       2     WRAP      
  arlen         integral      8     'h3       
  arsize        integral      3     'h2       
  arlock        integral      1     'h0       
  arprot        integral      1     'h0       
  rid           integral      12    'h26      
  rdata         da(integral)  4     -         
    [0]         integral      32    'hdd9e84e7
    [1]         integral      32    'h1ef16412
    [2]         integral      32    'h34d17a35
    [3]         integral      32    'h32aadbdd
  rresp         da(integral)  4     -         
    [0]         integral      2     'h0       
    [1]         integral      2     'h0       
    [2]         integral      2     'h0       
    [3]         integral      2     'h0       
  rlast         da(integral)  4     -         
    [0]         integral      1     'h0       
    [1]         integral      1     'h0       
    [2]         integral      1     'h0       
    [3]         integral      1     'h1       
----------------------------------------------
 
UVM_INFO axi_read_monitor.sv(42) @ 5175: uvm_test_top.m_env.m_read_agent.m_monitor [axi_read_monitor] Addr: f7b1, ARLEN: 3, Calculated Length: 4
UVM_INFO axi_virtual_sequence.sv(40) @ 5175: uvm_test_top.m_env.m_read_agent.m_seqr@@m_rd_seq [ qu_size _finish ] 
UVM_INFO axi_virtual_sequence.sv(35) @ 5175: uvm_test_top.m_env.m_read_agent.m_seqr@@m_rd_seq [ qu_size] Popped val: '{awid:'h28, awaddr:'hedcf, awlen:'h8, awsize:'h2, awburst:INCR}
UVM_INFO axi_sram_predictor.sv(97) @ 5220: uvm_test_top.m_env.m_predict [axi_sram_predictor]  _REad_agent    
   ------------------------------------------
Name            Type          Size  Value 
------------------------------------------
read_mon_tx_38  axi_rd_tx     -     @2481 
  arid          integral      12    'h27  
  araddr        integral      16    'hf7b1
  arburst       burst_t       2     WRAP  
  arlen         integral      8     'h3   
  arsize        integral      3     'h0   
  arlock        integral      1     'h0   
  arprot        integral      1     'h1   
  rid           integral      12    'h27  
  rdata         da(integral)  4     -     
    [0]         integral      32    'h0   
    [1]         integral      32    'h0   
    [2]         integral      32    'h0   
    [3]         integral      32    'h2a  
  rresp         da(integral)  4     -     
    [0]         integral      2     'h0   
    [1]         integral      2     'h0   
    [2]         integral      2     'h0   
    [3]         integral      2     'h0   
  rlast         da(integral)  4     -     
    [0]         integral      1     'h0   
    [1]         integral      1     'h0   
    [2]         integral      1     'h0   
    [3]         integral      1     'h1   
------------------------------------------
 
UVM_INFO axi_read_monitor.sv(42) @ 5225: uvm_test_top.m_env.m_read_agent.m_monitor [axi_read_monitor] Addr: edcf, ARLEN: 8, Calculated Length: 9
UVM_INFO axi_virtual_sequence.sv(40) @ 5225: uvm_test_top.m_env.m_read_agent.m_seqr@@m_rd_seq [ qu_size _finish ] 
UVM_INFO axi_tests.sv(19) @ 5225: uvm_test_top [ phase objection dropped]   phase objection dropped 
UVM_INFO /apps/vcsmx/vcs/X-2025.06-SP1//etc/uvm-1.2/src/base/uvm_objection.svh(1276) @ 5225: reporter [TEST_DONE] 'run' phase is ready to proceed to the 'extract' phase
UVM_INFO axi_sram_predictor.sv(200) @ 5225: uvm_test_top.m_env.m_predict [INside phase ready to end ] 
UVM_INFO axi_sram_predictor.sv(191) @ 5225: uvm_test_top.m_env.m_predict [INSIDE wait_for_read_to_complete ] 
UVM_INFO axi_sram_predictor.sv(192) @ 5225: uvm_test_top.m_env.m_predict [End run phase]   expected   40  actual   39  
UVM_INFO axi_sram_predictor.sv(97) @ 5320: uvm_test_top.m_env.m_predict [axi_sram_predictor]  _REad_agent    
   ----------------------------------------------
Name            Type          Size  Value     
----------------------------------------------
read_mon_tx_39  axi_rd_tx     -     @2510     
  arid          integral      12    'h28      
  araddr        integral      16    'hedcf    
  arburst       burst_t       2     INCR      
  arlen         integral      8     'h8       
  arsize        integral      3     'h2       
  arlock        integral      1     'h1       
  arprot        integral      1     'h0       
  rid           integral      12    'h28      
  rdata         da(integral)  9     -         
    [0]         integral      32    'h71000000
    [1]         integral      32    'h84498b4 
    [2]         integral      32    'h8674581 
    [3]         integral      32    'ha4e47245
    [4]         integral      32    'h83df0ad0
    [5]         integral      32    'ha7c3acf7
    [6]         integral      32    'h2b9a1de3
    [7]         integral      32    'h888d8515
    [8]         integral      32    'h945de36f
  rresp         da(integral)  9     -         
    [0]         integral      2     'h0       
    [1]         integral      2     'h0       
    [2]         integral      2     'h0       
    [3]         integral      2     'h0       
    [4]         integral      2     'h0       
    [5]         integral      2     'h0       
    [6]         integral      2     'h0       
    [7]         integral      2     'h0       
    [8]         integral      2     'h0       
  rlast         da(integral)  9     -         
    [0]         integral      1     'h0       
    [1]         integral      1     'h0       
    [2]         integral      1     'h0       
    [3]         integral      1     'h0       
    [4]         integral      1     'h0       
    [5]         integral      1     'h0       
    [6]         integral      1     'h0       
    [7]         integral      1     'h0       
    [8]         integral      1     'h1       
----------------------------------------------
 
UVM_INFO /apps/vcsmx/vcs/X-2025.06-SP1//etc/uvm-1.2/src/base/uvm_objection.svh(1276) @ 5320: reporter [TEST_DONE] 'run' phase is ready to proceed to the 'extract' phase
UVM_INFO axi_sram_predictor.sv(200) @ 5320: uvm_test_top.m_env.m_predict [INside phase ready to end ] 
UVM_INFO axi_sram_predictor.sv(210) @ 5320: uvm_test_top.m_env.m_predict [axi_sram_predictor] 
 ----------------   Check phase    ---------------------
 	 	 The number of Beats Matches 224  Mismatches 0
UVM_INFO /apps/vcsmx/vcs/X-2025.06-SP1//etc/uvm-1.2/src/base/uvm_report_server.svh(904) @ 5320: reporter [UVM/REPORT/SERVER] 
--- UVM Report Summary ---

** Report counts by severity
UVM_INFO :  254
UVM_WARNING :    0
UVM_ERROR :    0
UVM_FATAL :    0
** Report counts by id
[ phase objection dropped]     1
[ qu_size]    40
[ qu_size _finish ]    40
[End run phase]     1
[INSIDE wait_for_read_to_complete ]     1
[INside phase ready to end ]     2
[RNTST]     1
[TEST_DONE]     2
[UVM/RELNOTES]     1
[axi_master_driver]     1
[axi_read_driver]     1
[axi_read_monitor]    41
[axi_sram_predictor]    81
[axi_wr_monitor]     1
[task write]    40

$finish called from file "/apps/vcsmx/vcs/X-2025.06-SP1//etc/uvm-1.2/src/base/uvm_root.svh", line 532.
$finish at simulation time                 5320
           V C S   S i m u l a t i o n   R e p o r t 
Time: 5320 ns
CPU Time:      1.020 seconds;       Data structure size:   0.6Mb
Thu Jul 16 02:54:48 2026

