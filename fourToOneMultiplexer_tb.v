`timescale 1ns / 1ps

module fourToOneMultiplexer_tb();
    reg S1,S0,I0,I1,I2,I3,E;
    wire Y;
    
    fourToOneMultiplexer uut(S1,S0,I0,I1,I2,I3,E,Y);
    
    initial begin
        I0 = 1'b0;
        I1 = 1'b0;
        I2 = 1'b1;
        I3 = 1'b1;
        E  = 1'b1;

        S1 = 1'b0; S0 = 1'b0; #10;
        $display("S1=%b S0=%b I0=%b I1=%b I2=%b I3=%b E=%b Y=%b", S1,S0,I0,I1,I2,I3,E,Y);

        S1 = 1'b0; S0 = 1'b1; #10;
        $display("S1=%b S0=%b I0=%b I1=%b I2=%b I3=%b E=%b Y=%b", S1,S0,I0,I1,I2,I3,E,Y);

        S1 = 1'b1; S0 = 1'b0; #10;
        $display("S1=%b S0=%b I0=%b I1=%b I2=%b I3=%b E=%b Y=%b", S1,S0,I0,I1,I2,I3,E,Y);

        S1 = 1'b1; S0 = 1'b1; #10;
        $display("S1=%b S0=%b I0=%b I1=%b I2=%b I3=%b E=%b Y=%b", S1,S0,I0,I1,I2,I3,E,Y);

        I0 = 1'b1;
        I1 = 1'b0;
        I2 = 1'b1;
        I3 = 1'b0;
        E  = 1'b1;

        S1 = 1'b0; S0 = 1'b0; #10;
        $display("S1=%b S0=%b I0=%b I1=%b I2=%b I3=%b E=%b Y=%b", S1,S0,I0,I1,I2,I3,E,Y);

        S1 = 1'b0; S0 = 1'b1; #10;
        $display("S1=%b S0=%b I0=%b I1=%b I2=%b I3=%b E=%b Y=%b", S1,S0,I0,I1,I2,I3,E,Y);

        S1 = 1'b1; S0 = 1'b0; #10;
        $display("S1=%b S0=%b I0=%b I1=%b I2=%b I3=%b E=%b Y=%b", S1,S0,I0,I1,I2,I3,E,Y);

        S1 = 1'b1; S0 = 1'b1; #10;
        $display("S1=%b S0=%b I0=%b I1=%b I2=%b I3=%b E=%b Y=%b", S1,S0,I0,I1,I2,I3,E,Y);

        I0 = 1'b1;
        I1 = 1'b1;
        I2 = 1'b1;
        I3 = 1'b1;
        E  = 1'b0;

        S1 = 1'b0; S0 = 1'b0; #10;
        $display("E=0 Test -> S1=%b S0=%b Y=%b", S1,S0,Y);

        S1 = 1'b0; S0 = 1'b1; #10;
        $display("E=0 Test -> S1=%b S0=%b Y=%b", S1,S0,Y);

        S1 = 1'b1; S0 = 1'b0; #10;
        $display("E=0 Test -> S1=%b S0=%b Y=%b", S1,S0,Y);

        S1 = 1'b1; S0 = 1'b1; #10;
        $display("E=0 Test -> S1=%b S0=%b Y=%b", S1,S0,Y);
    end
endmodule
