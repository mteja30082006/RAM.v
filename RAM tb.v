`timescale 1ns/1ps

module ram_tb;

    reg        clk;
    reg        we;
    reg  [2:0] address;
    reg  [7:0] data_in;
    wire [7:0] data_out;

    // Instantiate RAM
    ram uut (
        .clk(clk),
        .we(we),
        .address(address),
        .data_in(data_in),
        .data_out(data_out)
    );

    // Clock generation
    always #5 clk = ~clk;

    initial begin

        // Generate waveform
        $dumpfile("ram.vcd");
        $dumpvars(0, ram_tb);

        // Display values
        $monitor("Time = %0t | WE = %b | Address = %b | Data_in = %h | Data_out = %h",
                 $time, we, address, data_in, data_out);

        clk = 0;
        we = 0;
        address = 3'b000;
        data_in = 8'h00;

        // -------------------------
        // WRITE OPERATIONS
        // -------------------------

        // Write A5 to address 000
        #2;
        we = 1;
        address = 3'b000;
        data_in = 8'hA5;

        #8;

        // Write 3C to address 001
        address = 3'b001;
        data_in = 8'h3C;

        #10;

        // Write 7E to address 010
        address = 3'b010;
        data_in = 8'h7E;

        #10;

        // Write 81 to address 011
        address = 3'b011;
        data_in = 8'h81;

        #10;

        // -------------------------
        // READ OPERATIONS
        // -------------------------

        we = 0;

        address = 3'b000;
        #10;

        address = 3'b001;
        #10;

        address = 3'b010;
        #10;

        address = 3'b011;
        #10;

        $finish;
    end

endmodule