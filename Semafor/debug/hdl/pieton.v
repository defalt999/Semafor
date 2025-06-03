module pietoni(
    input clk,
    output reg apasat
);


initial begin
    apasat=0;
    repeat(5) @(posedge clk);
    apasat=1;
    @(posedge clk);
    apasat=0;
    repeat(75) @(posedge clk);
    apasat=1;
    @(posedge clk);
    apasat=0;

end

endmodule
