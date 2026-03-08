module tb;
  
  reg a;
  reg b;
  reg sel;
  wire y;
  
  mux2_to_1 dut (
    .a(a),
    .b(b),
    .sel(sel),
    .y(y)
  );
  
  initial begin 
    a = 0; b = 0; sel = 0;
    
    #10
    a = 1;
    b = 0;
    sel = 1;
    #1 $display ("y = %d", y);
    
    #10 $finish;
  end
  
endmodule
