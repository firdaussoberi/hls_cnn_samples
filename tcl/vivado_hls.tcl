open_project hls_cnn_zu1cg

set_top conv_layer_tile_accel_inst

add_files src/accel.cc

#open_solution "zc702"
#set_part {xc7z020clg484-1} -tool vivado
open_solution "hls_cnn_zu1cg_synthesis"
set_part {xczu1cg-sbva484-1-e} -tool vivado
create_clock -period 10 -name default
csynth_design
