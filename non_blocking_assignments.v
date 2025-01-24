module non_blocking_assignments(input clk,a,output reg q0,q1);

always@(posedge clk)

begin
q1<=q0;
q0<=a;
end

endmodule

