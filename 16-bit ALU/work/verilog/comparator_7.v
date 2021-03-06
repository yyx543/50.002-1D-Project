/*
   This file was generated automatically by Alchitry Labs version 1.2.1.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module comparator_7 (
    input [5:0] alufn,
    input z,
    input v,
    input n,
    output reg [15:0] cmp
  );
  
  
  
  reg vxorn;
  
  reg vxorn_orz;
  
  always @* begin
    cmp[1+14-:15] = 15'h0000;
    vxorn = v ^ n;
    vxorn_orz = vxorn | z;
    
    case (alufn[1+1-:2])
      2'h0: begin
        cmp[0+0-:1] = 1'h0;
      end
      2'h1: begin
        cmp[0+0-:1] = z;
      end
      2'h2: begin
        cmp[0+0-:1] = vxorn;
      end
      2'h3: begin
        cmp[0+0-:1] = vxorn_orz;
      end
      default: begin
        cmp[0+0-:1] = 1'h0;
      end
    endcase
  end
endmodule
