module blocking_assignments_tb(output reg clk,a,input q0,q1);

blocking_assignments DUT(clk,a,q0,q1);

initial
begin
clk=1'b0;
forever
#5 clk=~clk;
end

task inputs(input b);
  begin
    @(negedge clk);
	a=b;
  end
endtask

initial
begin
inputs(1);
#10;
inputs(0);
end

endmodule
