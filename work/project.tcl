set projDir "C:/Users/Eliana/Documents/00.\ 1D\ Comptruct\ Term\ 4/Alchitry/SSR\ v1/work/vivado"
set projName "Test1Intro"
set topName top
set device xc7a35tftg256-1
if {[file exists "$projDir/$projName"]} { file delete -force "$projDir/$projName" }
create_project $projName "$projDir/$projName" -part $device
set_property design_mode RTL [get_filesets sources_1]
set verilogSources [list "C:/Users/Eliana/Documents/00.\ 1D\ Comptruct\ Term\ 4/Alchitry/SSR\ v1/work/verilog/au_top_0.v" "C:/Users/Eliana/Documents/00.\ 1D\ Comptruct\ Term\ 4/Alchitry/SSR\ v1/work/verilog/reset_conditioner_1.v" "C:/Users/Eliana/Documents/00.\ 1D\ Comptruct\ Term\ 4/Alchitry/SSR\ v1/work/verilog/edge_detector_2.v" "C:/Users/Eliana/Documents/00.\ 1D\ Comptruct\ Term\ 4/Alchitry/SSR\ v1/work/verilog/button_conditioner_3.v" "C:/Users/Eliana/Documents/00.\ 1D\ Comptruct\ Term\ 4/Alchitry/SSR\ v1/work/verilog/fsm_module_4.v" "C:/Users/Eliana/Documents/00.\ 1D\ Comptruct\ Term\ 4/Alchitry/SSR\ v1/work/verilog/counter_5.v" "C:/Users/Eliana/Documents/00.\ 1D\ Comptruct\ Term\ 4/Alchitry/SSR\ v1/work/verilog/counter_6.v" "C:/Users/Eliana/Documents/00.\ 1D\ Comptruct\ Term\ 4/Alchitry/SSR\ v1/work/verilog/multi_seven_seg_7.v" "C:/Users/Eliana/Documents/00.\ 1D\ Comptruct\ Term\ 4/Alchitry/SSR\ v1/work/verilog/score_display_8.v" "C:/Users/Eliana/Documents/00.\ 1D\ Comptruct\ Term\ 4/Alchitry/SSR\ v1/work/verilog/pipeline_9.v" "C:/Users/Eliana/Documents/00.\ 1D\ Comptruct\ Term\ 4/Alchitry/SSR\ v1/work/verilog/alu_10.v" "C:/Users/Eliana/Documents/00.\ 1D\ Comptruct\ Term\ 4/Alchitry/SSR\ v1/work/verilog/timer_11.v" "C:/Users/Eliana/Documents/00.\ 1D\ Comptruct\ Term\ 4/Alchitry/SSR\ v1/work/verilog/pn_gen_12.v" "C:/Users/Eliana/Documents/00.\ 1D\ Comptruct\ Term\ 4/Alchitry/SSR\ v1/work/verilog/counter_13.v" "C:/Users/Eliana/Documents/00.\ 1D\ Comptruct\ Term\ 4/Alchitry/SSR\ v1/work/verilog/seven_seg_14.v" "C:/Users/Eliana/Documents/00.\ 1D\ Comptruct\ Term\ 4/Alchitry/SSR\ v1/work/verilog/decoder_15.v" "C:/Users/Eliana/Documents/00.\ 1D\ Comptruct\ Term\ 4/Alchitry/SSR\ v1/work/verilog/sixteen_bit_adder_16.v" "C:/Users/Eliana/Documents/00.\ 1D\ Comptruct\ Term\ 4/Alchitry/SSR\ v1/work/verilog/sixteen_boolean_17.v" "C:/Users/Eliana/Documents/00.\ 1D\ Comptruct\ Term\ 4/Alchitry/SSR\ v1/work/verilog/comparator_18.v" "C:/Users/Eliana/Documents/00.\ 1D\ Comptruct\ Term\ 4/Alchitry/SSR\ v1/work/verilog/shifter_19.v" "C:/Users/Eliana/Documents/00.\ 1D\ Comptruct\ Term\ 4/Alchitry/SSR\ v1/work/verilog/multiplier_20.v" ]
import_files -fileset [get_filesets sources_1] -force -norecurse $verilogSources
set xdcSources [list "C:/Users/Eliana/Documents/00.\ 1D\ Comptruct\ Term\ 4/Alchitry/SSR\ v1/constraint/custom_au.xdc" "C:/Users/Eliana/Documents/00.\ 1D\ Comptruct\ Term\ 4/Alchitry/SSR\ v1/work/constraint/custom.xdc" ]
read_xdc $xdcSources
set_property STEPS.WRITE_BITSTREAM.ARGS.BIN_FILE true [get_runs impl_1]
update_compile_order -fileset sources_1
launch_runs -runs synth_1 -jobs 8
wait_on_run synth_1
launch_runs impl_1 -to_step write_bitstream -jobs 8
wait_on_run impl_1
