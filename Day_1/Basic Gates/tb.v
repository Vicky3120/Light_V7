module tb;

  reg a;
  reg b;
  wire y_and;
  wire y_or;
  wire y_not;
  wire y_xor;
  
  basicgates dut (
    .a(a),
    .b(b),
    .y_and(y_and),
    .y_or(y_or),
    .y_not(y_not),
    .y_xor(y_xor)
  );

  initial begin
    a = 0;
    b = 0;

    #10
    a = 1; b = 1;
    #10 $display("y = %b", y_and); //1

    #10
    a = 0; b = 0;
    #10 $display("y = %b", y_or); //0

    #10
    a = 0; b = 1;
    #10 $display("y = %b", y_not); //1

    #10
    a = 1; b = 1;
    #10 $display("y = %b", y_xor); //0

    #10 $finish;
  end

endmodule