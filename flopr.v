`timescale 1ns / 1ps

module flopr #(
  parameter NBITS = 16 
)(
   input clk,
	input reset,
	input [NBITS-1:0] cnt_ini, 
	input [NBITS-1:0] nextq,
	output[NBITS-1:0] q
	
); 


reg [NBITS-1:0] iq ; 

always @(posedge clk) begin 
	if (reset) 
		iq <= cnt_ini ;  
	else 
 		iq <= nextq; 
end 

assign q = iq  ; 

endmodule
