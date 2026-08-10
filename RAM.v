module ram (
    input  wire       clk,
    input  wire       we,
    input  wire [2:0] address,
    input  wire [7:0] data_in,
    output reg  [7:0] data_out
);

    // 8 locations, each 8 bits wide
    reg [7:0] memory [0:7];

    // Write operation
    always @(posedge clk) begin
        if (we)
            memory[address] <= data_in;
    end

    // Read operation
    always @(*) begin
        data_out = memory[address];
    end

endmodule