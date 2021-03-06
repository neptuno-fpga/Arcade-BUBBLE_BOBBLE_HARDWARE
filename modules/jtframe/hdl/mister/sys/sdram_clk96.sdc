create_generated_clock -name SDRAM_CLK -source \
    [get_pins {emu|pll|pll_inst|altera_pll_i|general[5].gpll~PLL_OUTPUT_COUNTER|divclk}] \
    -divide_by 1 \
    [get_ports SDRAM_CLK]

set_multicycle_path -from [get_clocks {SDRAM_CLK}] -to [get_clocks {emu|pll|pll_inst|altera_pll_i|general[4].gpll~PLL_OUTPUT_COUNTER|divclk}] -setup -end 2

set_multicycle_path -from [get_clocks {SDRAM_CLK}] -to [get_clocks {emu|pll|pll_inst|altera_pll_i|general[4].gpll~PLL_OUTPUT_COUNTER|divclk}] -hold -end 2

set_multicycle_path -setup -end -from [get_keepers {SDRAM_DQ[*]}] -to [get_keepers {emu:emu|jtframe_mister:u_frame|jtframe_board:u_board|jtframe_sdram:u_sdram|dq_ff[*]}] 2
set_multicycle_path -setup -end -from [get_keepers {emu:emu|jtframe_mister:u_frame|jtframe_board:u_board|jtframe_sdram:u_sdram|hold_bus}] -to [get_keepers {SDRAM_DQ[*]}] 2
set_multicycle_path -setup -end -from [get_keepers {emu:emu|jtframe_mister:u_frame|jtframe_board:u_board|jtframe_sdram:u_sdram|write_cycle}] -to [get_keepers {SDRAM_DQ[*]}] 2
set_multicycle_path -setup -end -from [get_keepers {emu:emu|jtframe_mister:u_frame|jtframe_board:u_board|jtframe_sdram:u_sdram|dq_out[*]}] -to [get_keepers {SDRAM_DQ[*]}] 2
set_multicycle_path -setup -end -from [get_keepers {emu:emu|jtframe_mister:u_frame|jtframe_board:u_board|jtframe_sdram:u_sdram|SDRAM_DQMH}] -to [get_keepers {SDRAM_DQMH}] 2
set_multicycle_path -setup -end -from [get_keepers {emu:emu|jtframe_mister:u_frame|jtframe_board:u_board|jtframe_sdram:u_sdram|SDRAM_A[12]}] -to [get_keepers {SDRAM_DQMH}] 2
set_multicycle_path -hold -end -from [get_keepers {emu:emu|jtframe_mister:u_frame|jtframe_board:u_board|jtframe_sdram:u_sdram|dq_out[*]}] -to [get_keepers {SDRAM_DQ[*]}] 2
set_multicycle_path -hold -end -from [get_keepers {emu:emu|jtframe_mister:u_frame|jtframe_board:u_board|jtframe_sdram:u_sdram|hold_bus}] -to [get_keepers {SDRAM_DQ[*]}] 2
set_multicycle_path -hold -end -from [get_keepers {emu:emu|jtframe_mister:u_frame|jtframe_board:u_board|jtframe_sdram:u_sdram|write_cycle}] -to [get_keepers {SDRAM_DQ[*]}] 2
set_multicycle_path -hold -end -from [get_keepers {emu:emu|jtframe_mister:u_frame|jtframe_board:u_board|jtframe_sdram:u_sdram|SDRAM_DQMH}] -to [get_keepers {SDRAM_DQMH}] 2
set_multicycle_path -hold -end -from [get_keepers {emu:emu|jtframe_mister:u_frame|jtframe_board:u_board|jtframe_sdram:u_sdram|SDRAM_A[12]}] -to [get_keepers {SDRAM_DQMH}] 2
