/*
   This file was generated automatically by Alchitry Labs version 1.2.7.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module score_display_8 (
    input clk,
    input rst,
    input [3:0] score,
    output reg [3:0] out1,
    output reg [3:0] out2
  );
  
  
  
  always @* begin
    out1 = 1'h0;
    out2 = 1'h0;
    if (score < 4'ha) begin
      out1 = 1'h0;
      out2 = score;
    end else begin
      if (score == 4'ha) begin
        out1 = 1'h1;
        out2 = 1'h0;
      end
    end
  end
endmodule
