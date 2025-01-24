module blocking_assignments(input clk,a,output reg q0,q1);

always@(posedge clk)

begin
q0=a;
q1=q0;
end

endmodule
