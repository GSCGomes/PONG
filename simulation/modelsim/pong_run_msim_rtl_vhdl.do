transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlib PLL
vmap PLL PLL
vlog -vlog01compat -work PLL +incdir+D:/Hermes/GKE/pong/PLL/synthesis {D:/Hermes/GKE/pong/PLL/synthesis/PLL.v}
vlog -vlog01compat -work PLL +incdir+D:/Hermes/GKE/pong/PLL/synthesis/submodules {D:/Hermes/GKE/pong/PLL/synthesis/submodules/PLL_altpll_0.v}
vcom -93 -work work {D:/Hermes/GKE/pong/DRAW.vhd}
vcom -93 -work work {D:/Hermes/GKE/pong/VGA.vhd}
vcom -93 -work work {D:/Hermes/GKE/pong/GAME.vhd}
vcom -93 -work work {D:/Hermes/GKE/pong/SYNC.vhd}

vcom -93 -work work {D:/Hermes/GKE/pong/tb_VGA.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneii -L rtl_work -L work -L PLL -voptargs="+acc"  tb_VGA

add wave *
view structure
view signals
run -all
