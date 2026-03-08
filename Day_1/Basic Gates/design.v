// Writing and/or/not/xor using assign statements, simulate

module basicgates(
	input wire a,
	input wire b,
	output wire y_and,
  	output wire y_or,
  	output wire y_not,
  	output wire y_xor
);
  
  assign y_and = a & b; // and operation
  assign y_or = a | b; // or operation 
  assign y_not = ~a;    // or operation 
  assign y_xor = a ^ b; // xor operation
endmodule
