transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/mathe/OneDrive/Documentos/TrabCircuitosLogicos/Laboratorio02/memoria.vhd}
vcom -93 -work work {C:/Users/mathe/OneDrive/Documentos/TrabCircuitosLogicos/Laboratorio02/datapath.vhd}
vcom -93 -work work {C:/Users/mathe/OneDrive/Documentos/TrabCircuitosLogicos/Laboratorio02/lab1_ula.vhd}
vcom -93 -work work {C:/Users/mathe/OneDrive/Documentos/TrabCircuitosLogicos/Laboratorio02/ripple_carry_adder_structural.vhd}
vcom -93 -work work {C:/Users/mathe/OneDrive/Documentos/TrabCircuitosLogicos/Laboratorio02/full_adder.vhd}

vcom -93 -work work {C:/Users/mathe/OneDrive/Documentos/TrabCircuitosLogicos/Laboratorio02/test_datapath.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L maxv -L rtl_work -L work -voptargs="+acc"  test_datapath

add wave *
view structure
view signals
run -all
