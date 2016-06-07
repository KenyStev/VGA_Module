`timescale 1ns / 1ps
module Main(
	input clk50mhz,
	//input red_in,
   //input green_in,
   //input blue_in,
	//input reset,
	output red_out,
   output green_out,
   output blue_out,
	output hsync,
	output vsync
	 );
	 
	 wire vga_clk;
// synthesis attribute CLKFX_DIVIDE of vga_clock_dcm is 4
// synthesis attribute CLKFX_MULTIPLY of vga_clock_dcm is 2
	DCM vga_clock_dcm (.CLKIN(clk50mhz),.CLKFX(vga_clk));
	VGA_LOGIC vga(vga_clk,red_out,green_out,blue_out,hsync,vsync);
	/*always @(posedge vga_clk)
	begin
		if(reset)begin
			red_in = 0;
			green_in=0;
			blue_in=0;
		end
	end*/
	 


endmodule
