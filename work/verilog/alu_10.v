/*
   This file was generated automatically by Alchitry Labs version 1.2.7.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module alu_10 (
    input [5:0] alufn,
    input [15:0] a,
    input [15:0] b,
    output reg [15:0] res,
    output reg z,
    output reg v,
    output reg n
  );
  
  
  
  wire [16-1:0] M_sixteenFA_s;
  wire [4-1:0] M_sixteenFA_error;
  wire [1-1:0] M_sixteenFA_z;
  wire [1-1:0] M_sixteenFA_v;
  wire [1-1:0] M_sixteenFA_n;
  reg [16-1:0] M_sixteenFA_x;
  reg [16-1:0] M_sixteenFA_y;
  reg [1-1:0] M_sixteenFA_cin;
  sixteen_bit_adder_16 sixteenFA (
    .x(M_sixteenFA_x),
    .y(M_sixteenFA_y),
    .cin(M_sixteenFA_cin),
    .s(M_sixteenFA_s),
    .error(M_sixteenFA_error),
    .z(M_sixteenFA_z),
    .v(M_sixteenFA_v),
    .n(M_sixteenFA_n)
  );
  
  wire [16-1:0] M_sixteenBoolean_s;
  reg [4-1:0] M_sixteenBoolean_alufnsig;
  reg [16-1:0] M_sixteenBoolean_a;
  reg [16-1:0] M_sixteenBoolean_b;
  sixteen_boolean_17 sixteenBoolean (
    .alufnsig(M_sixteenBoolean_alufnsig),
    .a(M_sixteenBoolean_a),
    .b(M_sixteenBoolean_b),
    .s(M_sixteenBoolean_s)
  );
  
  wire [16-1:0] M_comp_lastSum;
  reg [2-1:0] M_comp_alufn;
  reg [1-1:0] M_comp_z;
  reg [1-1:0] M_comp_n;
  reg [1-1:0] M_comp_v;
  comparator_18 comp (
    .alufn(M_comp_alufn),
    .z(M_comp_z),
    .n(M_comp_n),
    .v(M_comp_v),
    .lastSum(M_comp_lastSum)
  );
  
  wire [16-1:0] M_shift_out;
  reg [16-1:0] M_shift_a;
  reg [16-1:0] M_shift_b;
  reg [2-1:0] M_shift_alufn;
  shifter_19 shift (
    .a(M_shift_a),
    .b(M_shift_b),
    .alufn(M_shift_alufn),
    .out(M_shift_out)
  );
  
  wire [16-1:0] M_mult_out;
  reg [16-1:0] M_mult_a;
  reg [16-1:0] M_mult_b;
  multiplier_20 mult (
    .a(M_mult_a),
    .b(M_mult_b),
    .out(M_mult_out)
  );
  
  always @* begin
    M_sixteenFA_x = 16'h0000;
    M_sixteenFA_y = 16'h0000;
    M_sixteenFA_cin = alufn[0+0-:1];
    M_sixteenBoolean_a = 16'h0000;
    M_sixteenBoolean_b = 16'h0000;
    M_sixteenBoolean_alufnsig = alufn[0+3-:4];
    M_comp_alufn = alufn[1+1-:2];
    M_comp_z = M_sixteenFA_z;
    M_comp_v = M_sixteenFA_v;
    M_comp_n = M_sixteenFA_n;
    M_shift_a = 16'h0000;
    M_shift_b = 16'h0000;
    M_shift_alufn = alufn[0+1-:2];
    M_mult_a = 16'h0000;
    M_mult_b = 16'h0000;
    
    case (alufn)
      6'h00: begin
        M_sixteenFA_x = a;
        M_sixteenFA_y = b;
        M_sixteenFA_cin = 1'h0;
        res = M_sixteenFA_s;
        z = M_sixteenFA_z;
        v = M_sixteenFA_v;
        n = M_sixteenFA_n;
      end
      6'h01: begin
        M_sixteenFA_x = a;
        M_sixteenFA_y = b;
        M_sixteenFA_cin = 1'h1;
        res = M_sixteenFA_s;
        z = M_sixteenFA_z;
        v = M_sixteenFA_v;
        n = M_sixteenFA_n;
      end
      6'h02: begin
        M_mult_a = a;
        M_mult_b = b;
        res = M_mult_out;
        z = 1'h0;
        v = 1'h0;
        n = 1'h0;
      end
      6'h18: begin
        M_sixteenBoolean_a = a;
        M_sixteenBoolean_b = b;
        M_sixteenBoolean_alufnsig = alufn[0+3-:4];
        res = M_sixteenBoolean_s;
        z = 1'h0;
        v = 1'h0;
        n = 1'h0;
      end
      6'h1e: begin
        M_sixteenBoolean_a = a;
        M_sixteenBoolean_b = b;
        M_sixteenBoolean_alufnsig = alufn[0+3-:4];
        res = M_sixteenBoolean_s;
        z = 1'h0;
        v = 1'h0;
        n = 1'h0;
      end
      6'h16: begin
        M_sixteenBoolean_a = a;
        M_sixteenBoolean_b = b;
        M_sixteenBoolean_alufnsig = alufn[0+3-:4];
        res = M_sixteenBoolean_s;
        z = 1'h0;
        v = 1'h0;
        n = 1'h0;
      end
      6'h1a: begin
        M_sixteenBoolean_a = a;
        M_sixteenBoolean_b = b;
        M_sixteenBoolean_alufnsig = alufn[0+3-:4];
        res = M_sixteenBoolean_s;
        z = 1'h0;
        v = 1'h0;
        n = 1'h0;
      end
      6'h20: begin
        M_shift_a = a;
        M_shift_b = b;
        M_shift_alufn = alufn[0+1-:2];
        res = M_shift_out;
        z = 1'h0;
        v = 1'h0;
        n = 1'h0;
      end
      6'h21: begin
        M_shift_a = a;
        M_shift_b = b;
        M_shift_alufn = alufn[0+1-:2];
        res = M_shift_out;
        z = 1'h0;
        v = 1'h0;
        n = 1'h0;
      end
      6'h23: begin
        M_shift_a = a;
        M_shift_b = b;
        M_shift_alufn = alufn[0+1-:2];
        res = M_shift_out;
        z = 1'h0;
        v = 1'h0;
        n = 1'h0;
      end
      6'h33: begin
        M_sixteenFA_x = a;
        M_sixteenFA_y = b;
        M_sixteenFA_cin = alufn[0+0-:1];
        M_comp_alufn = alufn[1+1-:2];
        M_comp_z = M_sixteenFA_z;
        M_comp_v = M_sixteenFA_v;
        M_comp_n = M_sixteenFA_n;
        res[1+14-:15] = 15'h0000;
        res = M_comp_lastSum;
        z = 1'h0;
        v = 1'h0;
        n = 1'h0;
      end
      6'h35: begin
        M_sixteenFA_x = a;
        M_sixteenFA_y = b;
        M_sixteenFA_cin = alufn[0+0-:1];
        M_comp_alufn = alufn[1+1-:2];
        M_comp_z = M_sixteenFA_z;
        M_comp_v = M_sixteenFA_v;
        M_comp_n = M_sixteenFA_n;
        res[1+14-:15] = 15'h0000;
        res = M_comp_lastSum;
        z = 1'h0;
        v = 1'h0;
        n = 1'h0;
      end
      6'h37: begin
        M_sixteenFA_x = a;
        M_sixteenFA_y = b;
        M_sixteenFA_cin = alufn[0+0-:1];
        M_comp_alufn = alufn[1+1-:2];
        M_comp_z = M_sixteenFA_z;
        M_comp_v = M_sixteenFA_v;
        M_comp_n = M_sixteenFA_n;
        res[1+14-:15] = 15'h0000;
        res = M_comp_lastSum;
        z = 1'h0;
        v = 1'h0;
        n = 1'h0;
      end
      default: begin
        res = 16'h0000;
        z = 1'h0;
        v = 1'h0;
        n = 1'h0;
      end
    endcase
  end
endmodule
