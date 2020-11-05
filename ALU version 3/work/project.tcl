set projDir "C:/Users/Yi\ Xian/Desktop/50.002/1D/ALU\ version\ 3/work/vivado"
set projName "ALU version 3"
set topName top
set device xc7a35tftg256-1
if {[file exists "$projDir/$projName"]} { file delete -force "$projDir/$projName" }
create_project $projName "$projDir/$projName" -part $device
set_property design_mode RTL [get_filesets sources_1]
set verilogSources [list "C:/Users/Yi\ Xian/Desktop/50.002/1D/ALU\ version\ 3/work/verilog/au_top_0.v" "C:/Users/Yi\ Xian/Desktop/50.002/1D/ALU\ version\ 3/work/verilog/reset_conditioner_1.v" "C:/Users/Yi\ Xian/Desktop/50.002/1D/ALU\ version\ 3/work/verilog/multi_seven_seg_2.v" "C:/Users/Yi\ Xian/Desktop/50.002/1D/ALU\ version\ 3/work/verilog/alu_3.v" "C:/Users/Yi\ Xian/Desktop/50.002/1D/ALU\ version\ 3/work/verilog/counter_4.v" "C:/Users/Yi\ Xian/Desktop/50.002/1D/ALU\ version\ 3/work/verilog/seven_seg_5.v" "C:/Users/Yi\ Xian/Desktop/50.002/1D/ALU\ version\ 3/work/verilog/decoder_6.v" "C:/Users/Yi\ Xian/Desktop/50.002/1D/ALU\ version\ 3/work/verilog/comparator_7.v" "C:/Users/Yi\ Xian/Desktop/50.002/1D/ALU\ version\ 3/work/verilog/sixteen_bit_full_adder_8.v" "C:/Users/Yi\ Xian/Desktop/50.002/1D/ALU\ version\ 3/work/verilog/boolean_9.v" "C:/Users/Yi\ Xian/Desktop/50.002/1D/ALU\ version\ 3/work/verilog/shifter_10.v" "C:/Users/Yi\ Xian/Desktop/50.002/1D/ALU\ version\ 3/work/verilog/multiplier_11.v" "C:/Users/Yi\ Xian/Desktop/50.002/1D/ALU\ version\ 3/work/verilog/full_adder_12.v" "C:/Users/Yi\ Xian/Desktop/50.002/1D/ALU\ version\ 3/work/verilog/shift_left_13.v" "C:/Users/Yi\ Xian/Desktop/50.002/1D/ALU\ version\ 3/work/verilog/shift_right_14.v" ]
import_files -fileset [get_filesets sources_1] -force -norecurse $verilogSources
set xdcSources [list "C:/Users/Yi\ Xian/Desktop/alchitry-labs-1.2.1-windows/alchitry-labs-1.2.1/library/components/au.xdc" "C:/Users/Yi\ Xian/Desktop/50.002/1D/ALU\ version\ 3/work/constraint/alchitry.xdc" "C:/Users/Yi\ Xian/Desktop/50.002/1D/ALU\ version\ 3/work/constraint/io.xdc" ]
read_xdc $xdcSources
set_property STEPS.WRITE_BITSTREAM.ARGS.BIN_FILE true [get_runs impl_1]
update_compile_order -fileset sources_1
launch_runs -runs synth_1 -jobs 8
wait_on_run synth_1
launch_runs impl_1 -to_step write_bitstream -jobs 8
wait_on_run impl_1
