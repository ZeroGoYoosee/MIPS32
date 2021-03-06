module mux32_2(src1, src2, sel, rlt);
    input   [31:0] src1, src2;
    input   sel;
    output  [31:0] rlt;

    assign  rlt = (sel) ? src2 : src1;
endmodule // mux32_2

module mux5_2(src1, src2, sel, rlt);
    input   [4:0] src1, src2;
    input         sel;
    output  [4:0] rlt;

    assign  rlt = (sel) ? src2 : src1;
endmodule // mux5_3

module mux5_3(src1, src2, src3, sel, rlt);
    input   [4:0] src1, src2, src3;
    input   [1:0] sel;
    output  [4:0] rlt;

    assign  rlt = (sel == 2'b00) ? src1 : 
                  (sel == 2'b01) ? src2 : src3;
endmodule // mux5_3

module mux32_3(src1, src2, src3, sel, rlt);
    input   [31:0] src1, src2, src3;
    input   [1:0] sel;
    output  [31:0] rlt;

    assign  rlt = (sel == 2'b00) ? src1 : 
                  (sel == 2'b01) ? src2 : src3;
endmodule // mux32_3

module mux32_5(src1, src2, src3, src4, src5, sel, rlt);
    input   [31:0] src1, src2, src3, src4, src5;
    input   [2:0] sel;
    output  [31:0] rlt;

    assign  rlt = (sel == 0) ? src1 : 
                  (sel == 1) ? src2 :
                  (sel == 2) ? src3 :
                  (sel == 3) ? src4 : src5;
endmodule // mux32_3