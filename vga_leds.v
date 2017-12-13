module vga_leds(
			input wire CLK50MHZ,
			input wire KEY0,
			input wire KEY1,
			output wire [7:0]LED,
			 // outputs:
			output wire hsync,
			output wire vsync,
 
			//high-color test video signal
			output wire [3:0]r,
			output wire [3:0]g,
			output wire [3:0]b
			);
			
wire w_clk_video;
wire w_clk_cpu;
wire w_clk_hdmi;
wire w_locked;

clk_wiz_v3_6 mypll_inst(
			.CLK_IN1( CLK50MHZ ),
			.CLK_OUT1( w_clk_video ), //74MHz
			.CLK_OUT2( w_clk_cpu ), //100MHz
			.LOCKED( w_locked )
			);

wire [31:0]counter;

cpu cpu_inst(
  .Clk (w_clk_cpu),
  .Reset (~w_locked),
  .GPO1 (counter)
  );
  
display display_inst(
		.reset( ~w_locked ),
		.clk_video( w_clk_video ),
		.red_leds( counter[31:16] ),
		.green_leds( ~counter[31:16] ),
		.segments( counter[31:16] ),
		.hsync (hsync),
		.vsync (vsync),
 		.r (r),
		.g (g),
		.b (b)
	   );

endmodule
