// 2:1 using ternary operator
module mux2_to_1 (
  input wire a,
  input wire b,
  input wire sel,
  output reg y
);
  assign y = (sel)? b:a;
endmodule