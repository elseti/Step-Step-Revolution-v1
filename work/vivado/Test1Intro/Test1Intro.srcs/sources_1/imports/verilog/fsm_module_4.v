/*
   This file was generated automatically by Alchitry Labs version 1.2.7.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module fsm_module_4 (
    input clk,
    input rst,
    input start,
    input button1,
    input button2,
    input button3,
    input button4,
    input submit,
    input display,
    input edgeTimer,
    output reg [3:0] score,
    output reg [4:0] stateCheck,
    output reg led1,
    output reg led2,
    output reg led3,
    output reg led4,
    output reg ledSubmit,
    output reg timerReset,
    output reg [3:0] timerOut1,
    output reg [3:0] timerOut2,
    output reg timerStart
  );
  
  
  
  wire [16-1:0] M_al_res;
  wire [1-1:0] M_al_z;
  wire [1-1:0] M_al_v;
  wire [1-1:0] M_al_n;
  reg [6-1:0] M_al_alufn;
  reg [16-1:0] M_al_a;
  reg [16-1:0] M_al_b;
  alu_10 al (
    .alufn(M_al_alufn),
    .a(M_al_a),
    .b(M_al_b),
    .res(M_al_res),
    .z(M_al_z),
    .v(M_al_v),
    .n(M_al_n)
  );
  
  
  wire [4-1:0] M_timer1_out1;
  wire [4-1:0] M_timer1_out2;
  wire [1-1:0] M_timer1_isOver;
  wire [1-1:0] M_timer1_test;
  reg [1-1:0] M_timer1_clk;
  reg [1-1:0] M_timer1_rst;
  reg [1-1:0] M_timer1_start;
  timer_11 timer1 (
    .clk(M_timer1_clk),
    .rst(M_timer1_rst),
    .start(M_timer1_start),
    .out1(M_timer1_out1),
    .out2(M_timer1_out2),
    .isOver(M_timer1_isOver),
    .test(M_timer1_test)
  );
  
  wire [32-1:0] M_pngen_num;
  reg [1-1:0] M_pngen_clk;
  reg [1-1:0] M_pngen_rst;
  reg [1-1:0] M_pngen_next;
  reg [32-1:0] M_pngen_seed;
  pn_gen_12 pngen (
    .clk(M_pngen_clk),
    .rst(M_pngen_rst),
    .next(M_pngen_next),
    .seed(M_pngen_seed),
    .num(M_pngen_num)
  );
  
  reg [15:0] M_round_no_d, M_round_no_q = 1'h0;
  
  reg [15:0] M_seq_round1_d, M_seq_round1_q = 1'h0;
  
  reg [15:0] M_seq_round2_d, M_seq_round2_q = 1'h0;
  
  reg [15:0] M_seq_round3_d, M_seq_round3_q = 1'h0;
  
  reg [15:0] M_seed_d, M_seed_q = 1'h0;
  
  reg [15:0] M_user_input1_d, M_user_input1_q = 1'h0;
  
  reg [15:0] M_user_input2_d, M_user_input2_q = 1'h0;
  
  reg [15:0] M_user_input3_d, M_user_input3_q = 1'h0;
  
  reg [3:0] M_input_counter1_d, M_input_counter1_q = 1'h0;
  
  reg [3:0] M_input_counter2_d, M_input_counter2_q = 1'h0;
  
  reg [3:0] M_input_counter3_d, M_input_counter3_q = 1'h0;
  
  reg [15:0] M_seqDis1_d, M_seqDis1_q = 1'h0;
  
  reg [15:0] M_seqDis2_d, M_seqDis2_q = 1'h0;
  
  reg [15:0] M_seqDis3_d, M_seqDis3_q = 1'h0;
  
  reg [15:0] M_temp_d, M_temp_q = 1'h0;
  
  reg M_led_submit_d, M_led_submit_q = 1'h0;
  
  wire [1-1:0] M_timerClock_value;
  counter_6 timerClock (
    .clk(clk),
    .rst(rst),
    .value(M_timerClock_value)
  );
  
  
  localparam INIT_stateList = 5'd0;
  localparam START_stateList = 5'd1;
  localparam L1_stateList = 5'd2;
  localparam L2_stateList = 5'd3;
  localparam L3_stateList = 5'd4;
  localparam L4_stateList = 5'd5;
  localparam L5_stateList = 5'd6;
  localparam L6_stateList = 5'd7;
  localparam L7_stateList = 5'd8;
  localparam L8_stateList = 5'd9;
  localparam L9_stateList = 5'd10;
  localparam L10_stateList = 5'd11;
  localparam GENSEQ_stateList = 5'd12;
  localparam WAIT_stateList = 5'd13;
  localparam DISPLAYSEQ_stateList = 5'd14;
  localparam SAVE_stateList = 5'd15;
  localparam IDLE_stateList = 5'd16;
  localparam CHECK_stateList = 5'd17;
  localparam WIN_stateList = 5'd18;
  localparam LOSE_stateList = 5'd19;
  localparam GAMEOVER_stateList = 5'd20;
  localparam PAUSE_stateList = 5'd21;
  localparam B1_stateList = 5'd22;
  localparam B2_stateList = 5'd23;
  localparam B3_stateList = 5'd24;
  localparam B4_stateList = 5'd25;
  localparam FANFARE1_stateList = 5'd26;
  localparam FANFARE2_stateList = 5'd27;
  localparam FANFARE3_stateList = 5'd28;
  localparam FANFARE_WAIT1_stateList = 5'd29;
  localparam FANFARE_WAIT2_stateList = 5'd30;
  localparam FANFARE_WAIT3_stateList = 5'd31;
  
  reg [4:0] M_stateList_d, M_stateList_q = INIT_stateList;
  
  reg [2:0] seq1;
  
  reg [2:0] seq2;
  
  reg [2:0] seq3;
  
  reg [2:0] seq4;
  
  reg [2:0] seq5;
  
  reg [2:0] seq6;
  
  reg [2:0] seq7;
  
  reg [2:0] seq8;
  
  reg [2:0] seq9;
  
  reg [2:0] seq10;
  
  reg [2:0] seq11;
  
  reg [31:0] pngen_out;
  
  reg [15:0] out1;
  
  reg [15:0] out2;
  
  reg [15:0] out3;
  
  always @* begin
    M_stateList_d = M_stateList_q;
    M_temp_d = M_temp_q;
    M_seed_d = M_seed_q;
    M_input_counter1_d = M_input_counter1_q;
    M_seq_round3_d = M_seq_round3_q;
    M_seq_round2_d = M_seq_round2_q;
    M_input_counter2_d = M_input_counter2_q;
    M_seq_round1_d = M_seq_round1_q;
    M_input_counter3_d = M_input_counter3_q;
    M_round_no_d = M_round_no_q;
    M_led_submit_d = M_led_submit_q;
    M_user_input1_d = M_user_input1_q;
    M_user_input2_d = M_user_input2_q;
    M_user_input3_d = M_user_input3_q;
    M_seqDis3_d = M_seqDis3_q;
    M_seqDis1_d = M_seqDis1_q;
    M_seqDis2_d = M_seqDis2_q;
    
    led1 = 1'h0;
    led2 = 1'h0;
    led3 = 1'h0;
    led4 = 1'h0;
    ledSubmit = M_led_submit_q;
    score = M_round_no_q[0+3-:4];
    stateCheck = 5'h00;
    M_pngen_rst = rst;
    M_pngen_clk = clk;
    M_pngen_next = 1'h0;
    M_pngen_seed = 3'h5;
    M_al_a = 16'h0000;
    M_al_b = 16'h0000;
    M_al_alufn = 5'h00;
    out1 = 16'h0000;
    out2 = 16'h0000;
    out3 = 16'h0000;
    timerStart = 1'h0;
    timerReset = 1'h0;
    M_timer1_clk = M_timerClock_value;
    M_timer1_rst = 1'h0;
    M_timer1_start = 1'h0;
    timerOut1 = M_timer1_out1;
    timerOut2 = M_timer1_out2;
    M_seed_d = 3'h5;
    if (start) begin
      M_round_no_d = 16'h0000;
      M_seq_round1_d = 16'h0000;
      M_seq_round2_d = 16'h0000;
      M_seed_d = M_seed_q + 1'h1;
      M_user_input1_d = 16'h0000;
      M_user_input2_d = 16'h0000;
      M_user_input3_d = 16'h0000;
      M_input_counter1_d = 4'h0;
      M_input_counter2_d = 4'h0;
      M_input_counter3_d = 4'h0;
      M_seqDis1_d = 16'h0000;
      M_seqDis2_d = 16'h0000;
      M_seqDis3_d = 16'h0000;
      M_led_submit_d = 1'h0;
      M_stateList_d = INIT_stateList;
    end
    
    case (M_stateList_q)
      INIT_stateList: begin
        M_timer1_rst = 1'h1;
        if (edgeTimer) begin
          M_stateList_d = START_stateList;
        end
      end
      START_stateList: begin
        stateCheck = 5'h01;
        M_stateList_d = L1_stateList;
      end
      GENSEQ_stateList: begin
        stateCheck = 5'h02;
        M_pngen_seed = M_seed_q;
        M_pngen_next = 1'h1;
        M_pngen_rst = rst;
        M_pngen_clk = clk;
        pngen_out = M_pngen_num;
        seq1 = pngen_out[0+1-:2];
        seq2 = pngen_out[2+1-:2];
        seq3 = pngen_out[4+1-:2];
        seq4 = pngen_out[6+1-:2];
        seq5 = pngen_out[8+1-:2];
        seq6 = pngen_out[10+1-:2];
        seq7 = pngen_out[12+1-:2];
        seq8 = pngen_out[14+1-:2];
        seq9 = pngen_out[16+1-:2];
        seq10 = pngen_out[18+1-:2];
        seq11 = pngen_out[20+1-:2];
        
        case (seq1)
          3'h0: begin
            seq1 = 3'h1;
          end
          3'h1: begin
            seq1 = 3'h2;
          end
          3'h2: begin
            seq1 = 3'h3;
          end
          3'h3: begin
            seq1 = 3'h4;
          end
        endcase
        
        case (seq2)
          3'h0: begin
            seq2 = 3'h1;
          end
          3'h1: begin
            seq2 = 3'h2;
          end
          3'h2: begin
            seq2 = 3'h3;
          end
          3'h3: begin
            seq2 = 3'h4;
          end
        endcase
        
        case (seq3)
          3'h0: begin
            seq3 = 3'h1;
          end
          3'h1: begin
            seq3 = 3'h2;
          end
          3'h2: begin
            seq3 = 3'h3;
          end
          3'h3: begin
            seq3 = 3'h4;
          end
        endcase
        
        case (seq4)
          3'h0: begin
            seq4 = 3'h1;
          end
          3'h1: begin
            seq4 = 3'h2;
          end
          3'h2: begin
            seq4 = 3'h3;
          end
          3'h3: begin
            seq4 = 3'h4;
          end
        endcase
        
        case (seq5)
          3'h0: begin
            seq5 = 3'h1;
          end
          3'h1: begin
            seq5 = 3'h2;
          end
          3'h2: begin
            seq5 = 3'h3;
          end
          3'h3: begin
            seq5 = 3'h4;
          end
        endcase
        
        case (seq6)
          3'h0: begin
            seq6 = 3'h1;
          end
          3'h1: begin
            seq6 = 3'h2;
          end
          3'h2: begin
            seq6 = 3'h3;
          end
          3'h3: begin
            seq6 = 3'h4;
          end
        endcase
        
        case (seq7)
          3'h0: begin
            seq7 = 3'h1;
          end
          3'h1: begin
            seq7 = 3'h2;
          end
          3'h2: begin
            seq7 = 3'h3;
          end
          3'h3: begin
            seq7 = 3'h4;
          end
        endcase
        
        case (seq8)
          3'h0: begin
            seq8 = 3'h1;
          end
          3'h1: begin
            seq8 = 3'h2;
          end
          3'h2: begin
            seq8 = 3'h3;
          end
          3'h3: begin
            seq8 = 3'h4;
          end
        endcase
        
        case (seq9)
          3'h0: begin
            seq9 = 3'h1;
          end
          3'h1: begin
            seq9 = 3'h2;
          end
          3'h2: begin
            seq9 = 3'h3;
          end
          3'h3: begin
            seq9 = 3'h4;
          end
        endcase
        
        case (seq10)
          3'h0: begin
            seq10 = 3'h1;
          end
          3'h1: begin
            seq10 = 3'h2;
          end
          3'h2: begin
            seq10 = 3'h3;
          end
          3'h3: begin
            seq10 = 3'h4;
          end
        endcase
        
        case (seq11)
          3'h0: begin
            seq11 = 3'h1;
          end
          3'h1: begin
            seq11 = 3'h2;
          end
          3'h2: begin
            seq11 = 3'h3;
          end
          3'h3: begin
            seq11 = 3'h4;
          end
        endcase
        
        case (M_round_no_q)
          1'h1: begin
            out1[0+3-:4] = seq1;
            out1[4+3-:4] = seq2;
          end
          2'h2: begin
            out1[0+3-:4] = seq1;
            out1[4+3-:4] = seq2;
            out1[8+3-:4] = seq3;
          end
          2'h3: begin
            out1[0+3-:4] = seq1;
            out1[4+3-:4] = seq2;
            out1[8+3-:4] = seq3;
            out1[12+3-:4] = seq4;
          end
          3'h4: begin
            out1[0+3-:4] = seq1;
            out1[4+3-:4] = seq2;
            out1[8+3-:4] = seq3;
            out1[12+3-:4] = seq4;
            out2[0+3-:4] = seq5;
          end
          3'h5: begin
            out1[0+3-:4] = seq1;
            out1[4+3-:4] = seq2;
            out1[8+3-:4] = seq3;
            out1[12+3-:4] = seq4;
            out2[0+3-:4] = seq5;
            out2[4+3-:4] = seq6;
          end
          3'h6: begin
            out1[0+3-:4] = seq1;
            out1[4+3-:4] = seq2;
            out1[8+3-:4] = seq3;
            out1[12+3-:4] = seq4;
            out2[0+3-:4] = seq5;
            out2[4+3-:4] = seq6;
            out2[8+3-:4] = seq7;
          end
          3'h7: begin
            out1[0+3-:4] = seq1;
            out1[4+3-:4] = seq2;
            out1[8+3-:4] = seq3;
            out1[12+3-:4] = seq4;
            out2[0+3-:4] = seq5;
            out2[4+3-:4] = seq6;
            out2[8+3-:4] = seq7;
            out2[12+3-:4] = seq8;
          end
          4'h8: begin
            out1[0+3-:4] = seq1;
            out1[4+3-:4] = seq2;
            out1[8+3-:4] = seq3;
            out1[12+3-:4] = seq4;
            out2[0+3-:4] = seq5;
            out2[4+3-:4] = seq6;
            out2[8+3-:4] = seq7;
            out2[12+3-:4] = seq8;
            out3[0+3-:4] = seq9;
          end
          4'h9: begin
            out1[0+3-:4] = seq1;
            out1[4+3-:4] = seq2;
            out1[8+3-:4] = seq3;
            out1[12+3-:4] = seq4;
            out2[0+3-:4] = seq5;
            out2[4+3-:4] = seq6;
            out2[8+3-:4] = seq7;
            out2[12+3-:4] = seq8;
            out3[0+3-:4] = seq9;
            out3[4+3-:4] = seq10;
          end
          4'ha: begin
            out1[0+3-:4] = seq1;
            out1[4+3-:4] = seq2;
            out1[8+3-:4] = seq3;
            out1[12+3-:4] = seq4;
            out2[0+3-:4] = seq5;
            out2[4+3-:4] = seq6;
            out2[8+3-:4] = seq7;
            out2[12+3-:4] = seq8;
            out3[0+3-:4] = seq9;
            out3[4+3-:4] = seq10;
            out3[8+3-:4] = seq11;
          end
        endcase
        M_seq_round1_d = out1;
        M_seq_round2_d = out2;
        M_seq_round3_d = out3;
        M_seqDis1_d = out1;
        M_seqDis2_d = out2;
        M_seqDis3_d = out3;
        M_stateList_d = DISPLAYSEQ_stateList;
      end
      DISPLAYSEQ_stateList: begin
        stateCheck = 5'h03;
        M_al_a = 16'h0000;
        M_al_b = 3'h4;
        M_al_alufn = 6'h21;
        if (M_seqDis1_q != 16'h0000) begin
          if (M_seqDis1_q[0+3-:4] == 4'h1) begin
            led1 = 1'h1;
            M_stateList_d = B1_stateList;
            M_al_a = M_seqDis1_q;
            M_seqDis1_d = M_al_res;
          end else begin
            if (M_seqDis1_q[0+3-:4] == 4'h2) begin
              led2 = 1'h1;
              M_stateList_d = B2_stateList;
              M_al_a = M_seqDis1_q;
              M_seqDis1_d = M_al_res;
            end else begin
              if (M_seqDis1_q[0+3-:4] == 4'h3) begin
                led3 = 1'h1;
                M_stateList_d = B3_stateList;
                M_al_a = M_seqDis1_q;
                M_seqDis1_d = M_al_res;
              end else begin
                if (M_seqDis1_q[0+3-:4] == 4'h4) begin
                  led4 = 1'h1;
                  M_stateList_d = B4_stateList;
                  M_al_a = M_seqDis1_q;
                  M_seqDis1_d = M_al_res;
                end
              end
            end
          end
        end else begin
          if (M_seqDis2_q != 16'h0000) begin
            if (M_seqDis2_q[0+3-:4] == 4'h1) begin
              M_stateList_d = B1_stateList;
              M_al_a = M_seqDis2_q;
              M_seqDis2_d = M_al_res;
            end else begin
              if (M_seqDis2_q[0+3-:4] == 4'h2) begin
                M_stateList_d = B2_stateList;
                M_al_a = M_seqDis2_q;
                M_seqDis2_d = M_al_res;
              end else begin
                if (M_seqDis2_q[0+3-:4] == 4'h3) begin
                  M_stateList_d = B3_stateList;
                  M_al_a = M_seqDis2_q;
                  M_seqDis2_d = M_al_res;
                end else begin
                  if (M_seqDis2_q[0+3-:4] == 4'h4) begin
                    M_stateList_d = B4_stateList;
                    M_al_a = M_seqDis2_q;
                    M_seqDis2_d = M_al_res;
                  end
                end
              end
            end
          end else begin
            if (M_seqDis3_q != 16'h0000) begin
              if (M_seqDis3_q[0+3-:4] == 4'h1) begin
                M_stateList_d = B1_stateList;
                M_al_a = M_seqDis3_q;
                M_seqDis3_d = M_al_res;
              end else begin
                if (M_seqDis3_q[0+3-:4] == 4'h2) begin
                  M_stateList_d = B2_stateList;
                  M_al_a = M_seqDis3_q;
                  M_seqDis3_d = M_al_res;
                end else begin
                  if (M_seqDis3_q[0+3-:4] == 4'h3) begin
                    M_stateList_d = B3_stateList;
                    M_al_a = M_seqDis3_q;
                    M_seqDis3_d = M_al_res;
                  end else begin
                    if (M_seqDis3_q[0+3-:4] == 4'h4) begin
                      M_stateList_d = B4_stateList;
                      M_al_a = M_seqDis3_q;
                      M_seqDis3_d = M_al_res;
                    end
                  end
                end
              end
            end else begin
              if (M_seqDis1_q == 16'h0000 && M_seqDis2_q == 16'h0000 && M_seqDis3_q == 16'h0000) begin
                M_temp_d = M_seed_q;
                M_stateList_d = SAVE_stateList;
              end
            end
          end
        end
      end
      B1_stateList: begin
        stateCheck = 5'h15;
        led1 = 1'h1;
        M_al_alufn = 6'h33;
        M_al_a = display;
        M_al_b = 1'h1;
        if (M_al_res[0+0-:1]) begin
          M_stateList_d = PAUSE_stateList;
        end
      end
      B2_stateList: begin
        led2 = 1'h1;
        M_al_alufn = 6'h33;
        M_al_a = display;
        M_al_b = 1'h1;
        if (M_al_res[0+0-:1]) begin
          M_stateList_d = PAUSE_stateList;
        end
      end
      B3_stateList: begin
        led3 = 1'h1;
        M_al_alufn = 6'h33;
        M_al_a = display;
        M_al_b = 1'h1;
        if (M_al_res[0+0-:1]) begin
          M_stateList_d = PAUSE_stateList;
        end
      end
      B4_stateList: begin
        stateCheck = 5'h15;
        led4 = 1'h1;
        M_al_alufn = 6'h33;
        M_al_a = display;
        M_al_b = 1'h1;
        if (M_al_res[0+0-:1]) begin
          M_stateList_d = PAUSE_stateList;
        end
      end
      PAUSE_stateList: begin
        if (display) begin
          M_stateList_d = DISPLAYSEQ_stateList;
        end
      end
      SAVE_stateList: begin
        M_al_alufn = 6'h00;
        M_al_a = M_seed_q;
        M_al_b = 3'h5;
        M_seed_d = M_al_res;
        M_stateList_d = IDLE_stateList;
      end
      L1_stateList: begin
        stateCheck = 5'h04;
        M_round_no_d = 1'h1;
        M_stateList_d = GENSEQ_stateList;
      end
      L2_stateList: begin
        stateCheck = 5'h05;
        M_round_no_d = 2'h2;
        M_stateList_d = GENSEQ_stateList;
      end
      L3_stateList: begin
        stateCheck = 5'h06;
        M_round_no_d = 2'h3;
        M_stateList_d = GENSEQ_stateList;
      end
      L4_stateList: begin
        stateCheck = 5'h07;
        M_round_no_d = 3'h4;
        M_stateList_d = GENSEQ_stateList;
      end
      L5_stateList: begin
        stateCheck = 5'h08;
        M_round_no_d = 3'h5;
        M_stateList_d = GENSEQ_stateList;
      end
      L6_stateList: begin
        stateCheck = 5'h09;
        M_round_no_d = 3'h6;
        M_stateList_d = GENSEQ_stateList;
      end
      L7_stateList: begin
        stateCheck = 5'h0a;
        M_round_no_d = 3'h7;
        M_stateList_d = GENSEQ_stateList;
      end
      L8_stateList: begin
        stateCheck = 5'h0b;
        M_round_no_d = 4'h8;
        M_stateList_d = GENSEQ_stateList;
      end
      L9_stateList: begin
        stateCheck = 5'h0c;
        M_round_no_d = 4'h9;
        M_stateList_d = GENSEQ_stateList;
      end
      L10_stateList: begin
        stateCheck = 5'h0d;
        M_round_no_d = 4'ha;
        M_stateList_d = GENSEQ_stateList;
      end
      IDLE_stateList: begin
        stateCheck = 5'h0e;
        M_led_submit_d = 1'h1;
        M_timer1_start = 1'h1;
        M_timer1_rst = 1'h0;
        if (M_timer1_isOver) begin
          M_input_counter1_d = 1'h0;
          M_input_counter2_d = 1'h0;
          M_input_counter3_d = 1'h0;
          M_led_submit_d = 1'h0;
          M_timer1_rst = 1'h1;
          M_stateList_d = LOSE_stateList;
        end
        if (M_user_input1_q[0+3-:4] == 4'h0) begin
          if (button1 == 1'h1) begin
            M_user_input1_d = M_user_input1_q >> 3'h4;
            M_user_input1_d[12+3-:4] = 4'h1;
            M_input_counter1_d = M_input_counter1_q + 1'h1;
          end
          if (button2 == 1'h1) begin
            M_user_input1_d = M_user_input1_q >> 3'h4;
            M_user_input1_d[12+3-:4] = 4'h2;
            M_input_counter1_d = M_input_counter1_q + 1'h1;
          end
          if (button3 == 1'h1) begin
            M_user_input1_d = M_user_input1_q >> 3'h4;
            M_user_input1_d[12+3-:4] = 4'h3;
            M_input_counter1_d = M_input_counter1_q + 1'h1;
          end
          if (button4 == 1'h1) begin
            M_user_input1_d = M_user_input1_q >> 3'h4;
            M_user_input1_d[12+3-:4] = 4'h4;
            M_input_counter1_d = M_input_counter1_q + 1'h1;
          end
        end else begin
          if (M_user_input2_q[0+3-:4] == 4'h0) begin
            if (button1 == 1'h1) begin
              M_user_input2_d = M_user_input2_q >> 3'h4;
              M_user_input2_d[12+3-:4] = 4'h1;
              M_input_counter2_d = M_input_counter2_q + 1'h1;
            end
            if (button2 == 1'h1) begin
              M_user_input2_d = M_user_input2_q >> 3'h4;
              M_user_input2_d[12+3-:4] = 4'h2;
              M_input_counter2_d = M_input_counter2_q + 1'h1;
            end
            if (button3 == 1'h1) begin
              M_user_input2_d = M_user_input2_q >> 3'h4;
              M_user_input2_d[12+3-:4] = 4'h3;
              M_input_counter2_d = M_input_counter2_q + 1'h1;
            end
            if (button4 == 1'h1) begin
              M_user_input2_d = M_user_input2_q >> 3'h4;
              M_user_input2_d[12+3-:4] = 4'h4;
              M_input_counter2_d = M_input_counter2_q + 1'h1;
            end
          end else begin
            if (M_user_input3_q[0+3-:4] == 4'h0) begin
              if (button1 == 1'h1) begin
                M_user_input3_d = M_user_input3_q >> 3'h4;
                M_user_input3_d[12+3-:4] = 4'h1;
                M_input_counter3_d = M_input_counter3_q + 1'h1;
              end
              if (button2 == 1'h1) begin
                M_user_input3_d = M_user_input3_q >> 3'h4;
                M_user_input3_d[12+3-:4] = 4'h2;
                M_input_counter3_d = M_input_counter3_q + 1'h1;
              end
              if (button3 == 1'h1) begin
                M_user_input3_d = M_user_input3_q >> 3'h4;
                M_user_input3_d[12+3-:4] = 4'h3;
                M_input_counter3_d = M_input_counter3_q + 1'h1;
              end
              if (button4 == 1'h1) begin
                M_user_input3_d = M_user_input3_q >> 3'h4;
                M_user_input3_d[12+3-:4] = 4'h4;
                M_input_counter3_d = M_input_counter3_q + 1'h1;
              end
            end
          end
        end
        if (submit == 1'h1) begin
          if (M_user_input1_q != 16'h0000) begin
            M_user_input1_d = M_user_input1_q >> (5'h10 - M_input_counter1_q * 3'h4);
          end
          if (M_user_input2_q != 16'h0000) begin
            M_user_input2_d = M_user_input2_q >> (5'h10 - M_input_counter2_q * 3'h4);
          end
          if (M_user_input3_q != 16'h0000) begin
            M_user_input3_d = M_user_input3_q >> (5'h10 - M_input_counter3_q * 3'h4);
          end
          M_input_counter1_d = 1'h0;
          M_input_counter2_d = 1'h0;
          M_input_counter3_d = 1'h0;
          M_led_submit_d = 1'h0;
          M_stateList_d = WAIT_stateList;
        end
      end
      WAIT_stateList: begin
        M_timer1_rst = 1'h1;
        if (edgeTimer) begin
          M_stateList_d = CHECK_stateList;
        end
      end
      CHECK_stateList: begin
        stateCheck = 5'h12;
        if (M_user_input1_q == M_seq_round1_q && M_user_input2_q == M_seq_round2_q && M_user_input3_q == M_seq_round3_q) begin
          M_user_input1_d = 16'h0000;
          M_user_input2_d = 16'h0000;
          M_user_input3_d = 16'h0000;
          
          case (M_round_no_q)
            1'h1: begin
              M_stateList_d = L2_stateList;
            end
            2'h2: begin
              M_stateList_d = L3_stateList;
            end
            2'h3: begin
              M_stateList_d = L4_stateList;
            end
            3'h4: begin
              M_stateList_d = L5_stateList;
            end
            3'h5: begin
              M_stateList_d = L6_stateList;
            end
            3'h6: begin
              M_stateList_d = L7_stateList;
            end
            3'h7: begin
              M_stateList_d = L8_stateList;
            end
            4'h8: begin
              M_stateList_d = L9_stateList;
            end
            4'h9: begin
              M_stateList_d = L10_stateList;
            end
            4'ha: begin
              M_stateList_d = WIN_stateList;
            end
          endcase
        end else begin
          M_stateList_d = LOSE_stateList;
        end
      end
      WIN_stateList: begin
        stateCheck = 5'h0f;
        M_stateList_d = FANFARE1_stateList;
      end
      FANFARE1_stateList: begin
        led1 = 1'h1;
        led2 = 1'h1;
        led3 = 1'h1;
        led4 = 1'h1;
        if (display) begin
          M_stateList_d = FANFARE_WAIT1_stateList;
        end
      end
      FANFARE_WAIT1_stateList: begin
        if (display) begin
          M_stateList_d = FANFARE2_stateList;
        end
      end
      FANFARE2_stateList: begin
        led1 = 1'h1;
        led2 = 1'h1;
        led3 = 1'h1;
        led4 = 1'h1;
        if (display) begin
          M_stateList_d = FANFARE_WAIT2_stateList;
        end
      end
      FANFARE_WAIT2_stateList: begin
        if (display) begin
          M_stateList_d = FANFARE3_stateList;
        end
      end
      FANFARE3_stateList: begin
        led1 = 1'h1;
        led2 = 1'h1;
        led3 = 1'h1;
        led4 = 1'h1;
        if (display) begin
          M_stateList_d = FANFARE_WAIT3_stateList;
        end
      end
      FANFARE_WAIT3_stateList: begin
        if (display) begin
          M_stateList_d = GAMEOVER_stateList;
        end
      end
      LOSE_stateList: begin
        stateCheck = 5'h10;
        M_stateList_d = GAMEOVER_stateList;
      end
      GAMEOVER_stateList: begin
        stateCheck = 5'h11;
        led1 = 1'h1;
        led2 = 1'h1;
        led3 = 1'h1;
        led4 = 1'h1;
      end
    endcase
  end
  
  always @(posedge clk) begin
    if (rst == 1'b1) begin
      M_seq_round2_q <= 1'h0;
    end else begin
      M_seq_round2_q <= M_seq_round2_d;
    end
  end
  
  
  always @(posedge clk) begin
    if (rst == 1'b1) begin
      M_seed_q <= 1'h0;
    end else begin
      M_seed_q <= M_seed_d;
    end
  end
  
  
  always @(posedge clk) begin
    if (rst == 1'b1) begin
      M_round_no_q <= 1'h0;
    end else begin
      M_round_no_q <= M_round_no_d;
    end
  end
  
  
  always @(posedge clk) begin
    if (rst == 1'b1) begin
      M_user_input3_q <= 1'h0;
    end else begin
      M_user_input3_q <= M_user_input3_d;
    end
  end
  
  
  always @(posedge clk) begin
    if (rst == 1'b1) begin
      M_seq_round3_q <= 1'h0;
    end else begin
      M_seq_round3_q <= M_seq_round3_d;
    end
  end
  
  
  always @(posedge clk) begin
    if (rst == 1'b1) begin
      M_seqDis1_q <= 1'h0;
    end else begin
      M_seqDis1_q <= M_seqDis1_d;
    end
  end
  
  
  always @(posedge clk) begin
    if (rst == 1'b1) begin
      M_temp_q <= 1'h0;
    end else begin
      M_temp_q <= M_temp_d;
    end
  end
  
  
  always @(posedge clk) begin
    if (rst == 1'b1) begin
      M_input_counter3_q <= 1'h0;
    end else begin
      M_input_counter3_q <= M_input_counter3_d;
    end
  end
  
  
  always @(posedge clk) begin
    if (rst == 1'b1) begin
      M_input_counter1_q <= 1'h0;
    end else begin
      M_input_counter1_q <= M_input_counter1_d;
    end
  end
  
  
  always @(posedge clk) begin
    if (rst == 1'b1) begin
      M_seq_round1_q <= 1'h0;
    end else begin
      M_seq_round1_q <= M_seq_round1_d;
    end
  end
  
  
  always @(posedge clk) begin
    if (rst == 1'b1) begin
      M_user_input2_q <= 1'h0;
    end else begin
      M_user_input2_q <= M_user_input2_d;
    end
  end
  
  
  always @(posedge clk) begin
    if (rst == 1'b1) begin
      M_user_input1_q <= 1'h0;
    end else begin
      M_user_input1_q <= M_user_input1_d;
    end
  end
  
  
  always @(posedge clk) begin
    if (rst == 1'b1) begin
      M_seqDis3_q <= 1'h0;
    end else begin
      M_seqDis3_q <= M_seqDis3_d;
    end
  end
  
  
  always @(posedge clk) begin
    if (rst == 1'b1) begin
      M_stateList_q <= 1'h0;
    end else begin
      M_stateList_q <= M_stateList_d;
    end
  end
  
  
  always @(posedge clk) begin
    if (rst == 1'b1) begin
      M_input_counter2_q <= 1'h0;
    end else begin
      M_input_counter2_q <= M_input_counter2_d;
    end
  end
  
  
  always @(posedge clk) begin
    if (rst == 1'b1) begin
      M_led_submit_q <= 1'h0;
    end else begin
      M_led_submit_q <= M_led_submit_d;
    end
  end
  
  
  always @(posedge clk) begin
    if (rst == 1'b1) begin
      M_seqDis2_q <= 1'h0;
    end else begin
      M_seqDis2_q <= M_seqDis2_d;
    end
  end
  
endmodule