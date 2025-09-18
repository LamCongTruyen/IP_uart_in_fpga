module fifo_ctrl #(
    parameter ADDR_WIDTH = 4
)(
    input  wire clk,
    input  wire reset,
    input  wire rd,
    input  wire wr,
    output wire empty,
    output wire full,
    output wire [ADDR_WIDTH-1:0] w_addr,
    output wire [ADDR_WIDTH-1:0] r_addr
);

    reg [ADDR_WIDTH-1:0] w_ptr_logic, w_ptr_next, w_ptr_succ;
    reg [ADDR_WIDTH-1:0] r_ptr_logic, r_ptr_next, r_ptr_succ;
    reg full_logic, empty_logic, full_next, empty_next;

    // --- Thanh ghi trạng thái
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            w_ptr_logic <= 0;
            r_ptr_logic <= 0;
            full_logic  <= 1'b0;
            empty_logic <= 1'b1;
        end else begin
            w_ptr_logic <= w_ptr_next;
            r_ptr_logic <= r_ptr_next;
            full_logic  <= full_next;
            empty_logic <= empty_next;
        end
    end

    // --- Logic điều khiển
    always @(*) begin
        w_ptr_succ = w_ptr_logic + 1;
        r_ptr_succ = r_ptr_logic + 1;

        w_ptr_next = w_ptr_logic;
        r_ptr_next = r_ptr_logic;
        full_next  = full_logic;
        empty_next = empty_logic;

        case ({wr, rd})
            2'b01: begin
                if (!empty_logic) begin
                    r_ptr_next = r_ptr_succ;
                    full_next  = 1'b0;
                    if (r_ptr_succ == w_ptr_logic)
                        empty_next = 1'b1;
                end
            end

            2'b10: begin
                if (!full_logic) begin
                    w_ptr_next = w_ptr_succ;
                    empty_next = 1'b0;
                    if (w_ptr_succ == r_ptr_logic)
                        full_next = 1'b1;
                end
            end

            2'b11: begin
                w_ptr_next = w_ptr_succ;
                r_ptr_next = r_ptr_succ;
            end

            default: ;
        endcase
    end

    assign w_addr = w_ptr_logic;
    assign r_addr = r_ptr_logic;
    assign full   = full_logic;
    assign empty  = empty_logic;
endmodule
