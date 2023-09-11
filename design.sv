module mux_4to1 (
    input wire [3:0] data, // Data inputs (4 bits)
    input wire [1:0] sel,  // Selection bits (2 bits)
    output wire y          // Output
);

    assign y = (sel == 2'b00) ? data[0] :
             (sel == 2'b01) ? data[1] :
             (sel == 2'b10) ? data[2] :
             (sel == 2'b11) ? data[3] :
             1'bz; // Default to 'z' if sel is invalid

endmodule
