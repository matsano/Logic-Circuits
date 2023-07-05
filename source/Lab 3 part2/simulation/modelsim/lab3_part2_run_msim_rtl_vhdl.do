transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/mathe/OneDrive/Documentos/TrabCircuitosLogicos/Laboratorio03part2/contador.vhd}
vcom -93 -work work {C:/Users/mathe/OneDrive/Documentos/TrabCircuitosLogicos/Laboratorio03part2/lab3_part2.vhd}

vcom -93 -work work {C:/Users/mathe/OneDrive/Documentos/TrabCircuitosLogicos/Laboratorio03part2/test_part2.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L maxv -L rtl_work -L work -voptargs="+acc"  test_part2

add wave *
view structure
view signals
run -all
