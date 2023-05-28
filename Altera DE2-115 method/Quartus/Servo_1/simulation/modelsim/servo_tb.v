module servo_tb;
    reg mclk;
    reg toggle;
    reg freeze;
    reg Rdreq;
    reg Wrreq;
    reg Wr_en;
    wire [0:0] servo;
    wire pwm;
    wire [15:0] Data_out;
    wire Fifo_empty;
    wire Fifo_full;
    wire Tx;
    wire Tx_busy;

    servo dut (
        .mclk(mclk),
        .toggle(toggle),
        .freeze(freeze),
        .Rdreq(Rdreq),
        .Wrreq(Wrreq),
        .Wr_en(Wr_en),
        .servo(servo),
        .pwm(pwm),
        .Data_out(Data_out),
        .Fifo_empty(Fifo_empty),
        .Fifo_full(Fifo_full),
        .Tx(Tx),
        .Tx_busy(Tx_busy)
    );

    initial begin
        // Initialize inputs
        mclk = 0;
        toggle = 0;
        freeze = 0;
        Rdreq = 0;
        Wrreq = 0;
        Wr_en = 0;

        // Wait for circuit to stabilize
        #10;

        // Toggle inputs
        toggle = 1;
        freeze = 1;
        Rdreq = 1;
        Wrreq = 1;
        Wr_en = 1;

        // Apply clock
        #5;
        mclk = 1;

        // Wait for some time
        #100;

        // Change inputs
        toggle = 0;
        freeze = 0;
        Rdreq = 0;
        Wrreq = 0;
        Wr_en = 0;

        // Apply clock
        #5;
        mclk = 0;

        // Wait for some time
        #50;

        // Finish simulation
        $finish;
    end

    always begin
        #5;
        mclk = ~mclk;
    end

    // Add appropriate delays for output propagation

endmodule