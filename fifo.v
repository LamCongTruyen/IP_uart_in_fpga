module fifo #(
    parameter DATA_WIDTH = 8,
    parameter DEPTH = 16
)(
    input  wire clk,
    input  wire rst_n,

    // Write interface
    input  wire wr_en,
    input  wire [DATA_WIDTH-1:0] din,
    output wire full,

    // Read interface
    input  wire rd_en,
    output reg  [DATA_WIDTH-1:0] dout,
    output wire empty
);

    // Hàm tính log2 để xác định độ rộng con trỏ
    function integer log2;
        input integer value;
        integer i;
        begin
            log2 = 0;
            for (i = value - 1; i > 0; i = i >> 1)
                log2 = log2 + 1;
        end
    endfunction

    reg [DATA_WIDTH-1:0] mem [0:DEPTH-1];
    reg [log2(DEPTH)-1:0] w_ptr;
    reg [log2(DEPTH)-1:0] r_ptr;
    reg [log2(DEPTH):0] count;  // đếm số phần tử trong FIFO

    assign full  = (count == DEPTH);
    assign empty = (count == 0);

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            w_ptr <= 0;
            r_ptr <= 0;
            count <= 0;
            dout  <= 0;
        end else begin
            // Ghi dữ liệu
            if (wr_en && !full) begin
                mem[w_ptr] <= din;
                w_ptr <= w_ptr + 1;
                count <= count + 1;
            end

            // Đọc dữ liệu
            if (rd_en && !empty) begin
                dout <= mem[r_ptr];
                r_ptr <= r_ptr + 1;
                count <= count - 1;
            end
        end
    end
endmodule
