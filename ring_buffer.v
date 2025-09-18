/*module ring_buffer #(
    parameter RAM_WIDTH = 8,
    parameter RAM_DEPTH = 256
)(
    input  wire                   clk,
    input  wire                   rst,

    // Write port
    input  wire                   wr_en,
    input  wire [RAM_WIDTH-1:0]   wr_data,

    // Read port
    input  wire                   rd_en,
    output reg                    rd_valid,
    output reg  [RAM_WIDTH-1:0]   rd_data,

    // Flags
    output wire                   empty,
    output wire                   empty_next,
    output wire                   full,
    output wire                   full_next,

    // Number of elements
    output reg [$clog2(RAM_DEPTH):0] fill_count
);

    // Memory
    reg [RAM_WIDTH-1:0] ram [0:RAM_DEPTH-1];

    // Pointers
    reg [$clog2(RAM_DEPTH)-1:0] head;
    reg [$clog2(RAM_DEPTH)-1:0] tail;

    // Internal signals
    wire empty_i;
    wire full_i;

    // Increment with wrap
    function [$clog2(RAM_DEPTH)-1:0] incr;
        input [$clog2(RAM_DEPTH)-1:0] index;
        begin
            if (index == RAM_DEPTH-1)
                incr = 0;
            else
                incr = index + 1;
        end
    endfunction

    // Flags
    assign empty_i    = (fill_count == 0);
    assign empty      = empty_i;
    assign empty_next = (fill_count <= 1);

    assign full_i     = (fill_count == RAM_DEPTH-1);
    assign full       = full_i;
    assign full_next  = (fill_count >= RAM_DEPTH-2);

    // Head pointer update (write)
    always @(posedge clk) begin
        if (rst) begin
            head <= 0;
        end else if (wr_en && !full_i) begin
            ram[head] <= wr_data;
            head <= incr(head);
        end
    end

    // Tail pointer update (read)
    always @(posedge clk) begin
        if (rst) begin
            tail <= 0;
            rd_valid <= 0;
        end else begin
            rd_valid <= 0;
            if (rd_en && !empty_i) begin
                rd_data  <= ram[tail];
                tail     <= incr(tail);
                rd_valid <= 1;
            end
        end
    end

    // Fill count update (combinational)
    always @(*) begin
        if (head < tail)
            fill_count = head - tail + RAM_DEPTH;
        else
            fill_count = head - tail;
    end
	 // Fill count update (sequential)


endmodule

module ring_buffer #(
    parameter DEPTH = 256
)(
    input  wire        clk,
    input  wire        rst,

    // Write side (from RX)
    input  wire        wr_en,
    input  wire [7:0]  din,
    output wire        full,

    // Read side (to TX)
    input  wire        rd_en,
    output reg  [7:0]  dout,
    output wire        empty
);
    localparam ADDR_WIDTH = 8; // log2(256) = 8

    reg [7:0] mem [0:DEPTH-1];
    reg [ADDR_WIDTH-1:0] head;
    reg [ADDR_WIDTH-1:0] tail;
    reg [ADDR_WIDTH:0]   count;

    assign full  = (count == DEPTH);
    assign empty = (count == 0);

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            head  <= 0;
            tail  <= 0;
            count <= 0;
            dout  <= 0;
        end else begin
            // Write
            if (wr_en && !full) begin
                mem[head] <= din;
                head <= head + 1;
                count <= count + 1;
            end

            // Read
            if (rd_en && !empty) begin
                dout <= mem[tail];
                tail <= tail + 1;
                count <= count - 1;
            end
        end
    end
endmodule
*/
module ring_buffer #(
    parameter RAM_WIDTH = 8,  // Độ rộng dữ liệu (8 bit cho UART)
    parameter RAM_DEPTH = 16   // Độ sâu bộ đệm
)(
    input  wire clk,                // Xung nhịp
    input  wire rst,                // Reset (active high)
    input  wire wr_en,              // Tín hiệu cho phép ghi
    input  wire [RAM_WIDTH-1:0] wr_data, // Dữ liệu ghi
    input  wire rd_en,              // Tín hiệu cho phép đọc
    output reg  rd_valid,           // Tín hiệu báo dữ liệu đọc hợp lệ
    output reg  [RAM_WIDTH-1:0] rd_data, // Dữ liệu đọc
    output wire empty,              // Cờ báo bộ đệm rỗng
    output wire empty_next,         // Cờ báo sẽ rỗng sau lần đọc tiếp theo
    output wire full,               // Cờ báo bộ đệm đầy
    output wire full_next,          // Cờ báo sẽ đầy sau lần ghi tiếp theo
    output wire [$clog2(RAM_DEPTH):0] fill_count // Số phần tử trong bộ đệm
);

    // Mảng RAM lưu trữ dữ liệu
    reg [RAM_WIDTH-1:0] ram [0:RAM_DEPTH-1];
    
    // Con trỏ head (ghi) và tail (đọc)
    reg [$clog2(RAM_DEPTH):0] head;
    reg [$clog2(RAM_DEPTH):0] tail;
    
    // Tín hiệu nội bộ
    reg empty_i, full_i;
    reg [$clog2(RAM_DEPTH):0] fill_count_i;

    // Gán tín hiệu đầu ra
    assign empty = empty_i;
    assign full = full_i;
    assign empty_next = (fill_count_i <= 1);
    assign full_next = (fill_count_i >= RAM_DEPTH - 1);
    assign fill_count = fill_count_i;

    // Tính số phần tử trong bộ đệm (đồng bộ)
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            fill_count_i <= 0;
        end else begin
            case ({wr_en && !full_i, rd_en && !empty_i})
                2'b10: fill_count_i <= fill_count_i + 1; // Chỉ ghi
                2'b01: fill_count_i <= fill_count_i - 1; // Chỉ đọc
                2'b11: fill_count_i <= fill_count_i;     // Ghi và đọc cùng lúc
                default: fill_count_i <= fill_count_i;   // Không thay đổi
            endcase
        end
    end

    // Cập nhật con trỏ head khi ghi
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            head <= 0;
        end else if (wr_en && !full_i) begin
            head <= (head == RAM_DEPTH - 1) ? 0 : head + 1;
        end
    end

    // Cập nhật con trỏ tail và tín hiệu rd_valid khi đọc
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            tail <= 0;
            rd_valid <= 0;
        end else begin
            rd_valid <= 0;
            if (rd_en && !empty_i) begin
                tail <= (tail == RAM_DEPTH - 1) ? 0 : tail + 1;
                rd_valid <= 1;
            end
        end
    end

    // Ghi và đọc từ RAM
    always @(posedge clk) begin
        if (wr_en && !full_i) begin
            ram[head] <= wr_data;
        end
        if (rd_en && !empty_i) begin
            rd_data <= ram[tail];
        end
    end

    // Cập nhật cờ empty và full
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            empty_i <= 1;
            full_i <= 0;
        end else begin
            empty_i <= (fill_count_i == 0);
            full_i <= (fill_count_i == RAM_DEPTH);
        end
    end

endmodule