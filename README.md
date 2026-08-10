RAM Design using Verilog HDL

📌 Introduction

RAM stands for Random Access Memory. It is a type of memory that allows data to be both written to and read from different memory locations using an address.

This project implements a simple 8 × 8 RAM using Verilog HDL.

- 8 memory locations
- 8-bit data at each location
- 3-bit address
- Read operation
- Write operation

🎯 Objectives

- Design an 8 × 8 RAM using Verilog HDL.
- Store data at a selected memory address.
- Read stored data from any address.
- Create a testbench for verification.
- Verify RAM operation through simulation.

⚙️ RAM Organization

The RAM contains 8 memory locations, and each location stores 8 bits.

Address| Data
000| 8 bits
001| 8 bits
010| 8 bits
011| 8 bits
100| 8 bits
101| 8 bits
110| 8 bits
111| 8 bits

Since there are 8 memory locations:

2³ = 8 locations

Therefore, a 3-bit address is required.

The total memory capacity is:

8 × 8 = 64 bits

🔄 Working Principle

The RAM uses:

- "clk" – Clock signal
- "we" – Write Enable
- "address" – Selects the memory location
- "data_in" – Data to be written
- "data_out" – Data read from memory

Write Operation

When "we = 1", data is stored at the selected address on the rising edge of the clock.

Address + Data_in + Write Enable
              ↓
             RAM
              ↓
        Data stored

Read Operation

When "we = 0", the data stored at the selected address is available at "data_out".

🛠️ Tools Required

- Verilog HDL
- Icarus Verilog / ModelSim / Vivado
- GTKWave
- GitHub

📂 Files

"ram.v"

Contains the Verilog implementation of the 8 × 8 RAM.

"ram_tb.v"

Contains the testbench used to verify read and write operations.

"simulation/simulation_output.txt"

Contains the expected simulation results.

▶️ Simulation

Using Icarus Verilog:

iverilog -o ram_sim ram.v ram_tb.v

Run the simulation:

vvp ram_sim

The testbench also generates a waveform file:

ram.vcd

Open it using GTKWave:

gtkwave ram.vcd

📊 Expected Operations

The testbench performs the following operations:

Operation| Address| Data
Write| 000| A5
Write| 001| 3C
Write| 010| 7E
Write| 011| 81
Read| 000| A5
Read| 001| 3C
Read| 010| 7E
Read| 011| 81

✅ Conclusion

The 8 × 8 RAM was successfully designed using Verilog HDL. The testbench verifies both write and read operations, and the simulation confirms that the data written to memory can be correctly retrieved from the corresponding addresses.

👩‍💻 Author

Digital Logic Design Project – RAM
