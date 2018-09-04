`timescale 1ns/1ns

module top (
    input clk100mhz,
    output [3:0] led
);
    reg [27:0] cnt = 28'b0;
    always @(posedge clk100mhz) begin
        cnt <= cnt + 1'b1;
    end
    assign led = cnt[27:24];
endmodule
