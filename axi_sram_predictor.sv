`uvm_analysis_imp_decl(_wr_agent)
`uvm_analysis_imp_decl(_rd_agent)
class axi_sram_predictor   extends uvm_scoreboard;
  `uvm_component_utils(axi_sram_predictor)
uvm_analysis_imp_wr_agent#(axi_wr_tx ,axi_sram_predictor)     wr_export;
uvm_analysis_imp_rd_agent#(axi_rd_tx , axi_sram_predictor)     rd_export;
axi_wr_tx   wr_tx;
axi_rd_tx   rd_tx;
  
reg [DATA_WIDTH-1:0] mem[(1<<ADDR_WIDTH)-1:0];
logic write=0,read=0;
int  write_expected, read_completed;
int m_matches, m_mismatches;
logic [7-1:0] num_bytes_wr,num_bytes_rd ;
logic [DATA_WIDTH-1:0] rout;
logic [ADDR_WIDTH-1:0] aligned_addr,addr0, addr,addr_r, aligned_address_value_wr,   aligned_address_value_rd;
bit [STROBE_WIDTH-1:0] expected_wstrb_array [];

//AI generated function
function void predict_wstrb(
    bit [ADDR_WIDTH-1:0] awaddr,
    bit [7:0]            awlen,
    bit [2:0]            awsize,
    bit [1:0]            awburst
);
    bit [ADDR_WIDTH-1:0] current_addr;
    bit [ADDR_WIDTH-1:0] aligned_addr_1;
    bit [ADDR_WIDTH-1:0] lower_boundary;
    bit [ADDR_WIDTH-1:0] upper_boundary;
    bit [STROBE_WIDTH-1:0] beat_strb ;
    bit [ADDR_WIDTH-1:0] byte_addr;


    int num_bytes   = 1 << awsize;
    int burst_len   = awlen + 1;
    int total_bytes = num_bytes * burst_len;

    // Alignment and WRAP Boundary calculations
    aligned_addr_1   = (awaddr / num_bytes) * num_bytes;
    lower_boundary = (awaddr / total_bytes) * total_bytes;
    upper_boundary = lower_boundary + total_bytes;

    for (int beat = 0; beat < burst_len; beat++) begin
        if (beat == 0) begin
            current_addr = awaddr; 
        end else begin
            // Beat 1+ is always aligned to num_bytes
            current_addr = aligned_addr_1 + (beat * num_bytes);

            // WRAP Logic: If we exceed the upper boundary, subtract total length
            if (awburst == 2'b10 && current_addr >= upper_boundary) begin
                current_addr = current_addr - total_bytes; 
            end
        end
           beat_strb = 0;
        for (int i = 0; i < num_bytes; i++) begin
            byte_addr = current_addr + i;

            // AXI RULE: A beat cannot cross the alignment boundary of its size.
            // We check if 'byte_addr' is in the same aligned container as 'current_addr'.
            if ((byte_addr / num_bytes) == (current_addr / num_bytes)) begin
                beat_strb |= (1'b1 << (byte_addr % STROBE_WIDTH));
            end
        end
        expected_wstrb_array[beat] = beat_strb;
    end
endfunction
  
function new(string name="axi_sram_predictor",uvm_component parent =null);
 super.new(name,parent);
  write_expected=0 ;
  read_completed=0;
endfunction
  
function void build_phase(uvm_phase phase);
  foreach(mem[i])  mem[i] = {DATA_WIDTH{1'b0}};
      wr_export = new("wr_export",this);
      rd_export = new("rd_export",this);
endfunction
  
function void write_wr_agent(input axi_wr_tx  rhs__);
  $cast(wr_tx , rhs__.clone()  );
  `uvm_info(get_type_name,$sformatf(" Write_agent    \n   %s ",wr_tx.sprint() ),UVM_LOW )
  aligned_address_value_wr =  axi_func_pkg::aligned_address(wr_tx.awaddr, 1<<wr_tx.awsize) ;
  num_bytes_wr = (1<<wr_tx.awsize);
  expected_wstrb_array = new[wr_tx.awlen+1'b1];
  predict_wstrb(wr_tx.awaddr,wr_tx.awlen,wr_tx.awsize,wr_tx.awburst);
  write = 1;
endfunction

function void write_rd_agent(input axi_rd_tx  rhs_);
  $cast( rd_tx, rhs_.clone() );
 `uvm_info(get_type_name,$sformatf(" _REad_agent    \n   %s ",rd_tx.sprint() ),UVM_LOW )
  aligned_address_value_rd =  axi_func_pkg::aligned_address(rd_tx.araddr, 1<<rd_tx.arsize); 
  num_bytes_rd = (1<<rd_tx.arsize);

  read = 1;
endfunction
  
  task sram_write();
    for(int unsigned i=0; i<wr_tx.awlen+1'b1; i++) begin 
      if(i==0) begin
        addr0 = wr_tx.awaddr;
        for(int unsigned j=0;j<STROBE_WIDTH;j++) begin
          if (expected_wstrb_array[i][j]) begin
            mem[addr0[ADDR_WIDTH-1:$clog2(STROBE_WIDTH)]][j*8 +: 8] = wr_tx.wdata[i][j]; 
              `uvm_info(" sram_write -0", $sformatf("writing data at %0h   -- %0h",addr0, mem[addr0[15:2]][j*8 +: 8]  ),UVM_HIGH)
               addr0 = wr_tx.awaddr + 1 ;
            end //if
        end//for
      end 
       else begin   
        addr =  aligned_address_value_wr  + (i) *(num_bytes_wr);
        `uvm_info("alinged addr write", $sformatf(" write addrr  %0h for %0h ",addr,i ),UVM_DEBUG)
        for(int  unsigned j=0;j<STROBE_WIDTH;j++) begin
          if (expected_wstrb_array[i][j]) begin
                 mem[addr[ADDR_WIDTH-1:$clog2(STROBE_WIDTH)]][j*8 +: 8]  = wr_tx.wdata[i][j];
                `uvm_info(" sram_write-N", $sformatf("writing data at %0h   -- %0h",addr, mem[addr[15:2]][j*8 +: 8]  ),UVM_HIGH)
                 addr = addr + 1;
             end 
          end 
       end 
     end 
    write_expected++;
    write = 0; 
 endtask
  
  
  
  task  sram_read( );
    logic [DATA_WIDTH-1:0] dout;
    for(int unsigned i =0;i< rd_tx.arlen+1'b1;i++) begin 
      
      if(i==0) begin
        rout = mem[rd_tx.araddr[ADDR_WIDTH-1:$clog2(STROBE_WIDTH)]];
        dout  = rd_tx.rdata[i];
        `uvm_info("rout", $sformatf("Rout %0h  - %0h",rd_tx.araddr,rout  ),UVM_HIGH)   

        if( rout == dout )   begin 
          m_matches++;
          `uvm_info(get_type_name, $sformatf("Reference out  %0h  and DUT out %0h matches for addr %0h ",rout,dout, rd_tx.araddr),UVM_MEDIUM)
          end else begin
          m_mismatches++;
          `uvm_error(get_type_name,$sformatf("score boarad Mismatch  for   Addr - %0h  Expected %0h   recieved %0h ", rd_tx.araddr,rout,dout)) 
        end 
      end//if
      
      else begin
        addr_r = aligned_address_value_rd + (i) *(num_bytes_rd);
      //  `uvm_info("alughed addr r", $sformatf(" addr_r  %0h for %0h ",addr_r,i ),UVM_LOW)
        rout =  mem[addr_r[ADDR_WIDTH-1:$clog2(STROBE_WIDTH)]];
        dout  = rd_tx.rdata[i];
        `uvm_info("rout", $sformatf("Rout %0h  - %0h", addr_r ,rout  ),UVM_HIGH)   

        if( rout == dout )begin
           m_matches++;
          `uvm_info(get_type_name, $sformatf("Reference out  %0h  and DUT out %0h matches for addr %0h ",rout,dout, addr_r),UVM_MEDIUM)
           end else begin 
             m_mismatches++;
           `uvm_error(get_type_name,$sformatf("score boarad Mismatch  for   Addr - %0h  Expected %0h   recieved %0h ", addr_r,rout,dout)) 
        end
        end//else
      //`uvm_info("rout", $sformatf("Rout %0h  - %0h",rd_tx.araddr[15:2],rout  ),UVM_LOW)   
      `uvm_info("dout", $sformatf("Dout = %0h",dout),UVM_HIGH) 
    end//for
    read_completed++;
    read =0;
  endtask
  
  task run_phase(uvm_phase phase);
    forever begin 
      wait( write ||   read );
      if(write) begin
        `uvm_info("task write","",UVM_LOW)
          sram_write();
      end 
      if(read)  begin
        sram_read( );
      end
    end//forver
  endtask
  
  task wait_for_read_to_complete( uvm_phase phase);
    `uvm_info("INSIDE wait_for_read_to_complete ","",UVM_LOW)
    `uvm_info("End run phase", $sformatf("  expected   %0d  actual   %0d  ",write_expected,  read_completed ),UVM_LOW) 
    wait(write_expected  == read_completed );
    phase.drop_objection(this," ok to end phase");
  endtask
  
  function void phase_ready_to_end(uvm_phase phase);
    if(phase.get_name !=  "run")
      return;
    `uvm_info("INside phase ready to end ","",UVM_LOW)
    if( write_expected !=   read_completed)  begin
      phase.raise_objection(this,"Not ready to end phase");
    fork 
      wait_for_read_to_complete( phase);
    join_none
    end
  endfunction
        
virtual function void check_phase(uvm_phase phase);
  `uvm_info(get_type_name, $sformatf("\n ----------------   Check phase    ---------------------\n \t \t The number of Bytes Matches %0d  Mismatches %0d",   m_matches,m_mismatches ),UVM_NONE)
  
endfunction
  
  

endclass




