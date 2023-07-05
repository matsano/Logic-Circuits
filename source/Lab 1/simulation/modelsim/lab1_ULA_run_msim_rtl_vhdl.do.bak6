transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/mathe/OneDrive/Documentos/TrabCircuitosLogicos/LAB01/lab1_ULA.vhd}
vcom -93 -work work {C:/Users/mathe/OneDrive/Documentos/TrabCircuitosLogicos/LAB01/ripple_carry_adder_structural.vhd}
vcom -93 -work work {C:/Users/mathe/OneDrive/Documentos/TrabCircuitosLogicos/LAB01/full_adder.vhd}

vcom -93 -work work {C:/Users/mathe/OneDrive/Documentos/TrabCircuitosLogicos/LAB01/test_ULA.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L maxv -L rtl_work -L work -voptargs="+acc"  test_ULA

add wave *
view structure
view signals
run -all
