module ring_buffer_streaming #(
    parameter DATA_WIDTH = 8,
    parameter DEPTH = 256,
    parameter ADDR_WIDTH = $clog2(DEPTH),
    parameter COUNT_WIDTH = ADDR_WIDTH + 1
)(
    input  wire                   clk,
    input  wire                   rst,
    // input side
    input  wire [DATA_WIDTH-1:0]  in_data,
    input  wire                   in_valid,
    output wire                   in_ready,   // high = can accept
    // output side
    output reg  [DATA_WIDTH-1:0]  out_data,
    output wire                   out_valid,  // high = data valid
    input  wire                   out_ready
);

    reg [DATA_WIDTH-1:0] mem [0:DEPTH-1];
    reg [ADDR_WIDTH-1:0] head, tail;
    reg [COUNT_WIDTH-1:0] count_reg;

    wire do_push = in_valid  && (count_reg < DEPTH);
    wire do_pop  = out_ready && (count_reg > 0);

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            head <= 0; tail <= 0; count_reg <= 0; out_data <= 0;
        end else begin
            if (do_push) mem[head] <= in_data;
            if (do_pop)  out_data <= mem[tail];

            if (do_push) begin
                if (head == DEPTH-1) head <= 0; else head <= head + 1;
            end
            if (do_pop) begin
                if (tail == DEPTH-1) tail <= 0; else tail <= tail + 1;
            end

            if (do_push && !do_pop) count_reg <= count_reg + 1;
            else if (!do_push && do_pop) count_reg <= count_reg - 1;
            // both -> count unchanged
        end
    end

    assign in_ready  = (count_reg < DEPTH);
    assign out_valid = (count_reg > 0);

endmodule
