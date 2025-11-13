-makelib ies_lib/xil_defaultlib -sv \
  "F:/Vivado/2019.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "F:/Vivado/2019.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
  "F:/Vivado/2019.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib ies_lib/xpm \
  "F:/Vivado/2019.1/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies_lib/axis_infrastructure_v1_1_0 \
  "../../../ipstatic/hdl/axis_infrastructure_v1_1_vl_rfs.v" \
-endlib
-makelib ies_lib/axis_data_fifo_v2_0_1 \
  "../../../ipstatic/hdl/axis_data_fifo_v2_0_vl_rfs.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../../Kintex_DSP_Lite.srcs/sources_1/ip/axis_data_fifo_ifft_corr/sim/axis_data_fifo_ifft_corr.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  glbl.v
-endlib

