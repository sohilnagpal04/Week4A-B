module test_mux_4to1;

    // Declare signals
    reg [3:0] data;
    reg [1:0] sel;
    wire y;

    // Instantiate the multiplexer
    mux_4to1 uut (
        .data(data),  // Connect input data to 'data'
        .sel(sel),    // Connect selection bits to 'sel'
        .y(y)          // Connect output to 'y'
    );

    // Stimulus generation
    initial begin
        // Test case 1
        data = 4'b1010; // Input data
        sel = 2'b01;    // Selection bits

        $display("Test Case 1:");
        $display("Input data: %b", data);
        $display("Selection bits: %b", sel);
        #10; // Wait for a few time units
        $display("Output: %b", y);
        $display("------------------------");

        // Test case 2
        data = 4'b1100; // Input data
        sel = 2'b10;    // Selection bits

        $display("Test Case 2:");
        $display("Input data: %b", data);
        $display("Selection bits: %b", sel);
        #10;
        $display("Output: %b", y);
        $display("------------------------");

        // Test case 3
        data = 4'b0011; // Input data
        sel = 2'b11;    // Selection bits

        $display("Test Case 3:");
        $display("Input data: %b", data);
        $display("Selection bits: %b", sel);
        #10;
        $display("Output: %b", y);
        $display("------------------------");

        // Test case 4
        data = 4'b0101; // Input data
        sel = 2'b01;    // Selection bits

        $display("Test Case 4:");
        $display("Input data: %b", data);
        $display("Selection bits: %b", sel);
        #10;
        $display("Output: %b", y);
        $display("------------------------");

        // Test case 5
        data = 4'b1111; // Input data
        sel = 2'b00;    // Selection bits

        $display("Test Case 5:");
        $display("Input data: %b", data);
        $display("Selection bits: %b", sel);
        #10;
        $display("Output: %b", y);
        $display("------------------------");

        $finish; // Terminate simulation
    end

endmodule
