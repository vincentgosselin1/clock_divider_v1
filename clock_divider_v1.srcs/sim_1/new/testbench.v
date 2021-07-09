`timescale 1ns / 1ps

module testbench;

    //inputs
    reg clock_in = 0;
    
    //outputs
    wire clock_out;    

    //Unit under test (UUT)
    clock_divider_v1 #(.DIVISOR(5)) uut (
        .clock_in (clock_in),
        .clock_out (clock_out)

    );
    
//main
    
integer k = 0;
    
initial
begin
        clock_in = 0;
        
        for (k=0; k<16000; k=k+1)
        #10 clock_in = !clock_in;
        
        #5 $finish;
    
end
    
    
endmodule
