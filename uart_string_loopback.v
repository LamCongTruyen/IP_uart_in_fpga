module uart_string_loopback (
    input  wire clk,
    input  wire rst_n,
    input  wire rx,
    output wire tx
);

// --- Parameters
parameter BUFFER_SIZE = 32; // kích thước buffer 
parameter DATA_WIDTH = 8;     // Độ rộng dữ liệu

// --- Internal signals
reg [DATA_WIDTH-1:0] buffer [0:BUFFER_SIZE-1]; // Ring buffer
reg [$clog2(BUFFER_SIZE)-1:0] write_ptr;       // Con trỏ ghi
reg [$clog2(BUFFER_SIZE)-1:0] read_ptr;        // Con trỏ đọc
wire [DATA_WIDTH-1:0] rx_data;                 // Dữ liệu nhận từ RX
wire rx_valid;                                 // Tín hiệu valid từ RX
reg [DATA_WIDTH-1:0] tx_data;                  // Dữ liệu gửi đến TX
reg trigger;                                   // Tín hiệu trigger cho TX
wire tx_busy;                                  // Tín hiệu busy từ TX
reg full, empty;                               // Trạng thái buffer
reg [31:0] rx_count;                           // Đếm số byte nhận được
reg [31:0] tx_count;                           // Đếm số byte gửi đi

// --- Buffer status logic
wire buffer_full  = (write_ptr == read_ptr - 1) || (write_ptr == BUFFER_SIZE-1 && read_ptr == 0);
wire buffer_empty = (write_ptr == read_ptr);

// --- UART RX instance
uart_rx uart_rx_inst (
    .clk(clk),
    .rst_n(rst_n),
    .rx(rx),
    .data_out(rx_data),
    .valid(rx_valid)
);

// --- UART TX instance
uart_tx uart_tx_inst (
    .clk(clk),
    .rst_n(rst_n),
    .trigger(trigger),
    .data_in(tx_data),
    .tx(tx),
    .busy(tx_busy)
);

// --- Ring Buffer logic
always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        write_ptr <= 0;
        read_ptr  <= 0;
        trigger   <= 0;
        full      <= 0;
        empty     <= 1;
        rx_count  <= 0;
        tx_count  <= 0;
    end else begin
       
        if (rx_valid && !buffer_full) begin
            buffer[write_ptr] <= rx_data;
            write_ptr <= (write_ptr == BUFFER_SIZE-1) ? 0 : write_ptr + 1;
            rx_count <= rx_count + 1;
            //empty <= 0;
            //full <= (write_ptr == BUFFER_SIZE-1 && read_ptr == 0) || 
                   // (write_ptr + 1 == read_ptr);
        end

        if (!tx_busy && !buffer_empty && !trigger) begin
            tx_data <= buffer[read_ptr];
            trigger <= 1;
            read_ptr <= (read_ptr == BUFFER_SIZE-1) ? 0 : read_ptr + 1;
            tx_count <= tx_count + 1; 
           // full <= 0;
            //empty <= (read_ptr + 1 == write_ptr);
        end 
		  else begin
            trigger <= 0;
        end
    end
end


endmodule