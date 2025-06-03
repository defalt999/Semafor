//------------------------------------------------------------------------------
// Universitatea Transilvania din Brasov
// Facultatea IESC
// Proiect     : Laborator ED
// Modul       : Semafor_Test_Bench
// Autor       : <denis.bratosin@student.unitbv.ro>
// Data        : Apr. 16, 2025
//------------------------------------------------------------------------------
module semafor_test();

wire clk;
wire rst_n;
wire button;

ck_rst_tb #(
.CK_SEMIPERIOD ('d10)
) i_ck_rst_tb (
.clk    (clk   ),
.rst_n  (rst_n )
);

semafor dut_semafor(
    .clk(clk),
    .rst_n(rst_n),
    .buton(button)
);

pietoni dut_pietons(
    .clk(clk),
    .apasat(button)
);




endmodule