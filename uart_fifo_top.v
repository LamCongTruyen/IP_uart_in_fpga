module uart_fifo_top #(
    parameter DATA_WIDTH = 8,
    parameter BLOCK_SIZE = 8    // số ký tự trong 1 block
)(
    input  wire clk,
    input  wire rst_n,
    input  wire rx,
    output wire tx
);

    // ---------------- UART RX ----------------
    wire [DATA_WIDTH-1:0] rx_data;
    wire rx_valid;

    uart_rx u_rx (
        .clk(clk),
        .rst_n(rst_n),
        .rx(rx),
        .data_out(rx_data),
        .valid(rx_valid)
    );
// ---------------- Block Buffer ----------------
reg [DATA_WIDTH-1:0] buffer [0:BLOCK_SIZE-1];
reg [$clog2(BLOCK_SIZE):0] wr_ptr;
reg [$clog2(BLOCK_SIZE):0] rd_ptr;
reg block_ready;
reg tx_active;

// ghi dữ liệu vào buffer + quản lý block_ready
always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        wr_ptr      <= 0;
        block_ready <= 1'b0;
    end else begin
        if (rx_valid && !block_ready) begin
            buffer[wr_ptr] <= rx_data;
            wr_ptr <= wr_ptr + 1;

            if (wr_ptr == BLOCK_SIZE-1) begin
                block_ready <= 1'b1;   // báo block đầy
                wr_ptr <= 0;
            end
        end else if (tx_active && (rd_ptr == BLOCK_SIZE-1) && !tx_busy) begin
            // khi TX phát xong block thì reset block_ready
            block_ready <= 1'b0;
        end
    end
end

// ---------------- UART TX ----------------
wire tx_busy;
reg  tx_start;
reg  [DATA_WIDTH-1:0] tx_data;

uart_tx u_tx (
    .clk(clk),
    .rst_n(rst_n),
    .data_in(tx_data),
    .trigger(tx_start),
    .tx(tx),
    .busy(tx_busy)
);

// logic đọc buffer và phát ra UART
always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        rd_ptr    <= 0;
        tx_active <= 1'b0;
        tx_start  <= 1'b0;
    end else begin
        tx_start <= 1'b0; // mặc định

        if (block_ready && !tx_active) begin
            // bắt đầu phát block
            tx_active <= 1'b1;
            rd_ptr    <= 0;
        end

        if (tx_active && !tx_busy) begin
            tx_data  <= buffer[rd_ptr];
            tx_start <= 1'b1;
            rd_ptr   <= rd_ptr + 1;

            if (rd_ptr == BLOCK_SIZE-1) begin
                tx_active <= 1'b0;
            end
        end
    end
end
endmodule