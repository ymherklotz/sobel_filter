// ----------------------------------------------------------------------
//  HLS HDL:        Verilog Netlister
//  HLS Version:    2011a.126 Production Release
//  HLS Date:       Wed Aug  8 00:52:07 PDT 2012
// 
//  Generated by:   mg3115@EEWS104A-013
//  Generated date: Tue Mar 08 14:54:00 2016
// ----------------------------------------------------------------------

// 
// ------------------------------------------------------------------
//  Design Unit:    sobel_core
// ------------------------------------------------------------------


module sobel_core (
  clk, en, arst_n, vin_rsc_mgc_in_wire_d, vout_rsc_mgc_out_stdreg_d
);
  input clk;
  input en;
  input arst_n;
  input [89:0] vin_rsc_mgc_in_wire_d;
  output [29:0] vout_rsc_mgc_out_stdreg_d;
  reg [29:0] vout_rsc_mgc_out_stdreg_d;


  // Interconnect Declarations
  reg [29:0] regs_regs_1_1_sva;
  reg [29:0] regs_regs_1_sg2_sva;
  reg [9:0] regs_regs_slc_regs_regs_2_6_itm;
  reg [9:0] regs_regs_slc_regs_regs_2_7_itm;
  reg [9:0] regs_regs_slc_regs_regs_2_itm;
  reg [9:0] regs_regs_slc_regs_regs_2_sg2_1_itm;
  reg [9:0] regs_regs_slc_regs_regs_2_sg2_2_itm;
  reg [9:0] regs_regs_slc_regs_regs_2_sg2_itm;
  reg [15:0] ACC1_acc_281_itm_1;
  wire [18:0] nl_ACC1_acc_281_itm_1;
  reg [12:0] mul_1_itm_1;
  wire [25:0] nl_mul_1_itm_1;
  reg ACC1_2_slc_acc_idiv_131_itm_1;
  reg [7:0] ACC1_mul_99_itm_1;
  wire [15:0] nl_ACC1_mul_99_itm_1;
  reg ACC1_slc_acc_imod_17_8_itm_1;
  reg ACC1_2_slc_acc_idiv_106_itm_1;
  reg [9:0] ACC1_acc_264_itm_1;
  wire [10:0] nl_ACC1_acc_264_itm_1;
  reg [11:0] ACC1_mul_90_itm_1;
  wire [23:0] nl_ACC1_mul_90_itm_1;
  reg [13:0] ACC1_mul_91_itm_1;
  wire [27:0] nl_ACC1_mul_91_itm_1;
  reg [9:0] ACC1_mul_104_itm_1;
  wire [19:0] nl_ACC1_mul_104_itm_1;
  reg ACC1_slc_acc_idiv_2_90_itm_1;
  reg ACC1_3_slc_acc_idiv_132_itm_1;
  reg [7:0] ACC1_mul_103_itm_1;
  wire [15:0] nl_ACC1_mul_103_itm_1;
  reg ACC1_slc_acc_idiv_91_itm_1;
  reg ACC1_3_slc_acc_idiv_131_itm_1;
  reg [5:0] ACC1_mul_98_itm_1;
  wire [11:0] nl_ACC1_mul_98_itm_1;
  reg ACC1_slc_acc_idiv_3_36_itm_1;
  reg ACC1_2_slc_acc_idiv_132_itm_1;
  reg [5:0] ACC1_acc_252_itm_1;
  wire [6:0] nl_ACC1_acc_252_itm_1;
  reg [5:0] ACC1_acc_251_itm_1;
  wire [6:0] nl_ACC1_acc_251_itm_1;
  reg [6:0] ACC1_acc_255_itm_1;
  wire [7:0] nl_ACC1_acc_255_itm_1;
  reg [9:0] ACC1_mul_89_itm_1;
  wire [19:0] nl_ACC1_mul_89_itm_1;
  reg [11:0] ACC1_acc_268_itm_1;
  wire [12:0] nl_ACC1_acc_268_itm_1;
  reg [13:0] ACC1_mul_96_itm_1;
  wire [27:0] nl_ACC1_mul_96_itm_1;
  reg ACC1_slc_acc_imod_28_itm_1;
  reg [5:0] FRAME_acc_12_itm_1;
  wire [6:0] nl_FRAME_acc_12_itm_1;
  reg [1:0] intensity_slc_intensity_2_sg1_9_itm_1;
  reg [2:0] intensity_slc_intensity_2_sg1_11_itm_1;
  reg [5:0] intensity_slc_intensity_2_sg1_itm_1;
  reg intensity_slc_intensity_2_sg1_12_itm_1;
  reg main_stage_0_2;
  reg main_stage_0_3;
  wire [11:0] FRAME_acc_5_psp_sva;
  wire [13:0] nl_FRAME_acc_5_psp_sva;
  wire [5:0] acc_imod_15_sva;
  wire [6:0] nl_acc_imod_15_sva;
  wire [17:0] acc_idiv_3_sva;
  wire [18:0] nl_acc_idiv_3_sva;
  wire [17:0] acc_idiv_7_sva;
  wire [18:0] nl_acc_idiv_7_sva;
  wire [17:0] acc_idiv_sva;
  wire [18:0] nl_acc_idiv_sva;
  wire [17:0] acc_idiv_2_sva;
  wire [18:0] nl_acc_idiv_2_sva;
  wire [2:0] acc_imod_19_sva;
  wire [3:0] nl_acc_imod_19_sva;
  wire [2:0] acc_imod_7_sva;
  wire [3:0] nl_acc_imod_7_sva;
  wire [3:0] ACC1_acc_230_sdt;
  wire [4:0] nl_ACC1_acc_230_sdt;
  wire [2:0] acc_imod_1_sva;
  wire [3:0] nl_acc_imod_1_sva;
  wire [2:0] acc_imod_27_sva;
  wire [3:0] nl_acc_imod_27_sva;
  wire [15:0] ACC1_acc_itm;
  wire [18:0] nl_ACC1_acc_itm;
  wire [5:0] ACC1_acc_189_itm;
  wire [6:0] nl_ACC1_acc_189_itm;
  wire [5:0] ACC1_acc_162_itm;
  wire [6:0] nl_ACC1_acc_162_itm;
  wire [5:0] ACC1_acc_201_itm;
  wire [6:0] nl_ACC1_acc_201_itm;
  wire [5:0] ACC1_acc_174_itm;
  wire [6:0] nl_ACC1_acc_174_itm;


  // Interconnect Declarations for Component Instantiations 
  assign nl_FRAME_acc_5_psp_sva = (conv_u2s_11_13(conv_u2s_22_12(conv_u2u_2_11(intensity_slc_intensity_2_sg1_9_itm_1)
      * 11'b111000111)) + conv_s2s_10_12(conv_u2s_9_11(conv_u2s_18_10(conv_u2u_3_9(intensity_slc_intensity_2_sg1_11_itm_1)
      * 9'b111001)) + conv_s2s_8_10(conv_u2s_6_8(intensity_slc_intensity_2_sg1_itm_1)
      + conv_s2s_5_8((conv_u2u_4_5(conv_u2u_3_4({(~ (acc_imod_15_sva[5])) , 1'b1
      , (~ (readslicef_5_1_4((({1'b1 , (acc_imod_15_sva[2:0]) , 1'b1}) + conv_u2s_4_5({(~
      (acc_imod_15_sva[5:3])) , (~ (acc_imod_15_sva[5]))})))))}) + conv_u2u_2_4(acc_imod_15_sva[4:3]))
      + conv_u2u_3_5(~ (intensity_slc_intensity_2_sg1_itm_1[5:3]))) + ({4'b1001 ,
      (acc_imod_15_sva[5])}))))) + conv_u2u_11_12(signext_11_9({intensity_slc_intensity_2_sg1_12_itm_1
      , 3'b0 , ({{2{intensity_slc_intensity_2_sg1_12_itm_1}}, intensity_slc_intensity_2_sg1_12_itm_1})
      , 1'b0 , intensity_slc_intensity_2_sg1_12_itm_1}));
  assign FRAME_acc_5_psp_sva = nl_FRAME_acc_5_psp_sva[11:0];
  assign nl_acc_imod_15_sva = FRAME_acc_12_itm_1 + 6'b101011;
  assign acc_imod_15_sva = nl_acc_imod_15_sva[5:0];
  assign nl_ACC1_acc_itm = ACC1_acc_281_itm_1 + ((({mul_1_itm_1 , 1'b0 , ({{1{ACC1_2_slc_acc_idiv_131_itm_1}},
      ACC1_2_slc_acc_idiv_131_itm_1})}) + conv_s2s_15_16(conv_s2s_14_15(conv_s2s_12_14(conv_u2s_11_12({ACC1_mul_99_itm_1
      , ACC1_slc_acc_imod_17_8_itm_1 , ({{1{ACC1_2_slc_acc_idiv_106_itm_1}}, ACC1_2_slc_acc_idiv_106_itm_1})})
      + conv_s2s_10_12(ACC1_acc_264_itm_1)) + conv_u2s_12_14(ACC1_mul_90_itm_1))
      + conv_u2s_14_15(ACC1_mul_91_itm_1))) + (conv_u2u_15_16(conv_u2u_14_15({ACC1_mul_104_itm_1
      , ACC1_slc_acc_idiv_2_90_itm_1 , 1'b0 , ({{1{ACC1_3_slc_acc_idiv_132_itm_1}},
      ACC1_3_slc_acc_idiv_132_itm_1})}) + conv_u2u_13_15(conv_u2u_12_13(({ACC1_mul_103_itm_1
      , ACC1_slc_acc_idiv_91_itm_1 , 1'b0 , ({{1{ACC1_3_slc_acc_idiv_131_itm_1}},
      ACC1_3_slc_acc_idiv_131_itm_1})}) + conv_u2u_11_12(conv_u2u_10_11(conv_u2u_9_10({ACC1_mul_98_itm_1
      , ACC1_slc_acc_idiv_3_36_itm_1 , ({{1{ACC1_2_slc_acc_idiv_132_itm_1}}, ACC1_2_slc_acc_idiv_132_itm_1})})
      + conv_u2u_8_10(conv_u2u_7_8(conv_u2u_6_7(ACC1_acc_252_itm_1) + conv_u2u_6_7(ACC1_acc_251_itm_1))
      + conv_u2u_7_8(ACC1_acc_255_itm_1))) + conv_u2u_10_11(ACC1_mul_89_itm_1)))
      + conv_u2u_12_13(ACC1_acc_268_itm_1))) + conv_u2u_15_16({ACC1_mul_96_itm_1
      , ACC1_slc_acc_imod_28_itm_1})));
  assign ACC1_acc_itm = nl_ACC1_acc_itm[15:0];
  assign nl_ACC1_acc_189_itm = ({(readslicef_6_5_1((conv_u2u_5_6({(readslicef_5_4_1((conv_u2u_4_5({(readslicef_4_3_1((conv_u2u_3_4({(readslicef_3_2_1((conv_u2u_2_3({(acc_idiv_sva[8])
      , 1'b1}) + conv_u2u_2_3({(~ (acc_idiv_sva[9])) , 1'b1})))) , 1'b1}) + conv_u2u_2_4({(~
      (acc_idiv_sva[1])) , (~ (acc_idiv_sva[13]))})))) , 1'b1}) + conv_u2u_3_5({(readslicef_3_2_1((conv_u2u_2_3({(acc_idiv_sva[2])
      , 1'b1}) + conv_u2u_2_3({(~ (acc_idiv_sva[3])) , (acc_idiv_sva[12])})))) ,
      (~ (acc_idiv_sva[15]))})))) , 1'b1}) + conv_u2u_4_6({(readslicef_4_3_1((conv_u2u_3_4({(readslicef_3_2_1((conv_u2u_2_3({(acc_idiv_sva[4])
      , 1'b1}) + conv_u2u_2_3({(~ (acc_idiv_sva[5])) , (~ (acc_idiv_sva[11]))}))))
      , 1'b1}) + conv_u2u_3_4({(readslicef_3_2_1((conv_u2u_2_3({(acc_idiv_sva[6])
      , 1'b1}) + conv_u2u_2_3({(~ (acc_idiv_sva[7])) , (acc_idiv_sva[10])})))) ,
      (acc_idiv_sva[14])})))) , (acc_idiv_sva[16])})))) , 1'b1}) + ({4'b1011 , (acc_idiv_sva[0])
      , (~ (acc_idiv_sva[17]))});
  assign ACC1_acc_189_itm = nl_ACC1_acc_189_itm[5:0];
  assign nl_acc_idiv_3_sva = conv_u2u_17_18(conv_u2u_16_17(signext_16_10(vin_rsc_mgc_in_wire_d[19:10]))
      + conv_u2u_16_17(signext_16_10(vin_rsc_mgc_in_wire_d[9:0]))) + conv_u2u_16_18(signext_16_10(vin_rsc_mgc_in_wire_d[29:20]));
  assign acc_idiv_3_sva = nl_acc_idiv_3_sva[17:0];
  assign nl_acc_idiv_7_sva = conv_u2u_17_18(conv_u2u_16_17(signext_16_10(vin_rsc_mgc_in_wire_d[79:70]))
      + conv_u2u_16_17(signext_16_10(vin_rsc_mgc_in_wire_d[69:60]))) + conv_u2u_16_18(signext_16_10(vin_rsc_mgc_in_wire_d[89:80]));
  assign acc_idiv_7_sva = nl_acc_idiv_7_sva[17:0];
  assign nl_acc_idiv_sva = conv_u2u_17_18(conv_u2u_16_17(signext_16_11(readslicef_12_11_1((conv_s2s_11_12({(~
      regs_regs_slc_regs_regs_2_6_itm) , 1'b1}) + conv_s2s_11_12({(vin_rsc_mgc_in_wire_d[19:10])
      , 1'b1}))))) + conv_u2u_16_17(signext_16_11(readslicef_12_11_1((conv_s2s_11_12({(~
      regs_regs_slc_regs_regs_2_7_itm) , 1'b1}) + conv_s2s_11_12({(vin_rsc_mgc_in_wire_d[9:0])
      , 1'b1})))))) + conv_u2u_16_18(signext_16_11(readslicef_12_11_1((conv_s2s_11_12({(~
      regs_regs_slc_regs_regs_2_itm) , 1'b1}) + conv_s2s_11_12({(vin_rsc_mgc_in_wire_d[29:20])
      , 1'b1})))));
  assign acc_idiv_sva = nl_acc_idiv_sva[17:0];
  assign nl_acc_idiv_2_sva = conv_u2u_17_18(conv_u2u_16_17(signext_16_11(conv_s2s_10_11(vin_rsc_mgc_in_wire_d[79:70])
      + conv_s2s_10_11(regs_regs_slc_regs_regs_2_sg2_1_itm))) + conv_u2u_16_17(signext_16_11(conv_s2s_10_11(vin_rsc_mgc_in_wire_d[69:60])
      + conv_s2s_10_11(regs_regs_slc_regs_regs_2_sg2_2_itm)))) + conv_u2u_16_18(signext_16_11(conv_s2s_10_11(vin_rsc_mgc_in_wire_d[89:80])
      + conv_s2s_10_11(regs_regs_slc_regs_regs_2_sg2_itm)));
  assign acc_idiv_2_sva = nl_acc_idiv_2_sva[17:0];
  assign nl_ACC1_acc_162_itm = ({(readslicef_6_5_1((conv_u2u_5_6({(readslicef_5_4_1((conv_u2u_4_5({(readslicef_4_3_1((conv_u2u_3_4({(readslicef_3_2_1((conv_u2u_2_3({(acc_idiv_3_sva[8])
      , 1'b1}) + conv_u2u_2_3({(~ (acc_idiv_3_sva[9])) , 1'b1})))) , 1'b1}) + conv_u2u_2_4({(~
      (acc_idiv_3_sva[1])) , (~ (acc_idiv_3_sva[13]))})))) , 1'b1}) + conv_u2u_3_5({(readslicef_3_2_1((conv_u2u_2_3({(acc_idiv_3_sva[2])
      , 1'b1}) + conv_u2u_2_3({(~ (acc_idiv_3_sva[3])) , (acc_idiv_3_sva[12])}))))
      , (~ (acc_idiv_3_sva[15]))})))) , 1'b1}) + conv_u2u_4_6({(readslicef_4_3_1((conv_u2u_3_4({(readslicef_3_2_1((conv_u2u_2_3({(acc_idiv_3_sva[4])
      , 1'b1}) + conv_u2u_2_3({(~ (acc_idiv_3_sva[5])) , (~ (acc_idiv_3_sva[11]))}))))
      , 1'b1}) + conv_u2u_3_4({(readslicef_3_2_1((conv_u2u_2_3({(acc_idiv_3_sva[6])
      , 1'b1}) + conv_u2u_2_3({(~ (acc_idiv_3_sva[7])) , (acc_idiv_3_sva[10])}))))
      , (acc_idiv_3_sva[14])})))) , (acc_idiv_3_sva[16])})))) , 1'b1}) + ({4'b1011
      , (acc_idiv_3_sva[0]) , (~ (acc_idiv_3_sva[17]))});
  assign ACC1_acc_162_itm = nl_ACC1_acc_162_itm[5:0];
  assign nl_acc_imod_19_sva = (readslicef_4_3_1((conv_u2u_3_4({(readslicef_3_2_1((conv_u2u_2_3({(ACC1_acc_162_itm[3])
      , 1'b1}) + conv_u2u_2_3({(~ (ACC1_acc_162_itm[4])) , 1'b1})))) , 1'b1}) + conv_u2u_2_4({(~
      (ACC1_acc_162_itm[2])) , (~ (ACC1_acc_162_itm[5]))})))) + ({2'b10 , (ACC1_acc_162_itm[1])});
  assign acc_imod_19_sva = nl_acc_imod_19_sva[2:0];
  assign nl_ACC1_acc_201_itm = ({(readslicef_6_5_1((conv_u2u_5_6({(readslicef_5_4_1((conv_u2u_4_5({(readslicef_4_3_1((conv_u2u_3_4({(readslicef_3_2_1((conv_u2u_2_3({(acc_idiv_2_sva[8])
      , 1'b1}) + conv_u2u_2_3({(~ (acc_idiv_2_sva[9])) , 1'b1})))) , 1'b1}) + conv_u2u_2_4({(~
      (acc_idiv_2_sva[1])) , (~ (acc_idiv_2_sva[13]))})))) , 1'b1}) + conv_u2u_3_5({(readslicef_3_2_1((conv_u2u_2_3({(acc_idiv_2_sva[2])
      , 1'b1}) + conv_u2u_2_3({(~ (acc_idiv_2_sva[3])) , (acc_idiv_2_sva[12])}))))
      , (~ (acc_idiv_2_sva[15]))})))) , 1'b1}) + conv_u2u_4_6({(readslicef_4_3_1((conv_u2u_3_4({(readslicef_3_2_1((conv_u2u_2_3({(acc_idiv_2_sva[4])
      , 1'b1}) + conv_u2u_2_3({(~ (acc_idiv_2_sva[5])) , (~ (acc_idiv_2_sva[11]))}))))
      , 1'b1}) + conv_u2u_3_4({(readslicef_3_2_1((conv_u2u_2_3({(acc_idiv_2_sva[6])
      , 1'b1}) + conv_u2u_2_3({(~ (acc_idiv_2_sva[7])) , (acc_idiv_2_sva[10])}))))
      , (acc_idiv_2_sva[14])})))) , (acc_idiv_2_sva[16])})))) , 1'b1}) + ({4'b1011
      , (acc_idiv_2_sva[0]) , (~ (acc_idiv_2_sva[17]))});
  assign ACC1_acc_201_itm = nl_ACC1_acc_201_itm[5:0];
  assign nl_ACC1_acc_174_itm = ({(readslicef_6_5_1((conv_u2u_5_6({(readslicef_5_4_1((conv_u2u_4_5({(readslicef_4_3_1((conv_u2u_3_4({(readslicef_3_2_1((conv_u2u_2_3({(acc_idiv_7_sva[8])
      , 1'b1}) + conv_u2u_2_3({(~ (acc_idiv_7_sva[9])) , 1'b1})))) , 1'b1}) + conv_u2u_2_4({(~
      (acc_idiv_7_sva[1])) , (~ (acc_idiv_7_sva[13]))})))) , 1'b1}) + conv_u2u_3_5({(readslicef_3_2_1((conv_u2u_2_3({(acc_idiv_7_sva[2])
      , 1'b1}) + conv_u2u_2_3({(~ (acc_idiv_7_sva[3])) , (acc_idiv_7_sva[12])}))))
      , (~ (acc_idiv_7_sva[15]))})))) , 1'b1}) + conv_u2u_4_6({(readslicef_4_3_1((conv_u2u_3_4({(readslicef_3_2_1((conv_u2u_2_3({(acc_idiv_7_sva[4])
      , 1'b1}) + conv_u2u_2_3({(~ (acc_idiv_7_sva[5])) , (~ (acc_idiv_7_sva[11]))}))))
      , 1'b1}) + conv_u2u_3_4({(readslicef_3_2_1((conv_u2u_2_3({(acc_idiv_7_sva[6])
      , 1'b1}) + conv_u2u_2_3({(~ (acc_idiv_7_sva[7])) , (acc_idiv_7_sva[10])}))))
      , (acc_idiv_7_sva[14])})))) , (acc_idiv_7_sva[16])})))) , 1'b1}) + ({4'b1011
      , (acc_idiv_7_sva[0]) , (~ (acc_idiv_7_sva[17]))});
  assign ACC1_acc_174_itm = nl_ACC1_acc_174_itm[5:0];
  assign nl_acc_imod_7_sva = (readslicef_4_3_1((conv_u2u_3_4({(readslicef_3_2_1((conv_u2u_2_3({(ACC1_acc_201_itm[3])
      , 1'b1}) + conv_u2u_2_3({(~ (ACC1_acc_201_itm[4])) , 1'b1})))) , 1'b1}) + conv_u2u_2_4({(~
      (ACC1_acc_201_itm[2])) , (~ (ACC1_acc_201_itm[5]))})))) + ({2'b10 , (ACC1_acc_201_itm[1])});
  assign acc_imod_7_sva = nl_acc_imod_7_sva[2:0];
  assign nl_ACC1_acc_230_sdt = conv_u2u_3_4(conv_u2u_2_3({(~ (ACC1_acc_174_itm[5]))
      , (~ (ACC1_acc_189_itm[5]))}) + conv_u2u_2_3({(acc_imod_27_sva[1]) , 1'b1}))
      + conv_u2u_3_4(conv_u2u_2_3({(~ (acc_imod_27_sva[2])) , (~ (acc_imod_1_sva[2]))})
      + conv_u2u_2_3({(~ (readslicef_3_1_2((({1'b1 , (acc_imod_27_sva[0]) , 1'b1})
      + conv_u2s_2_3({(~ (acc_imod_27_sva[1])) , (~ (acc_imod_27_sva[2]))}))))) ,
      (~ (readslicef_3_1_2((({1'b1 , (acc_imod_1_sva[0]) , 1'b1}) + conv_u2s_2_3({(~
      (acc_imod_1_sva[1])) , (~ (acc_imod_1_sva[2]))})))))}));
  assign ACC1_acc_230_sdt = nl_ACC1_acc_230_sdt[3:0];
  assign nl_acc_imod_1_sva = (readslicef_4_3_1((conv_u2u_3_4({(readslicef_3_2_1((conv_u2u_2_3({(ACC1_acc_189_itm[3])
      , 1'b1}) + conv_u2u_2_3({(~ (ACC1_acc_189_itm[4])) , 1'b1})))) , 1'b1}) + conv_u2u_2_4({(~
      (ACC1_acc_189_itm[2])) , (~ (ACC1_acc_189_itm[5]))})))) + ({2'b10 , (ACC1_acc_189_itm[1])});
  assign acc_imod_1_sva = nl_acc_imod_1_sva[2:0];
  assign nl_acc_imod_27_sva = (readslicef_4_3_1((conv_u2u_3_4({(readslicef_3_2_1((conv_u2u_2_3({(ACC1_acc_174_itm[3])
      , 1'b1}) + conv_u2u_2_3({(~ (ACC1_acc_174_itm[4])) , 1'b1})))) , 1'b1}) + conv_u2u_2_4({(~
      (ACC1_acc_174_itm[2])) , (~ (ACC1_acc_174_itm[5]))})))) + ({2'b10 , (ACC1_acc_174_itm[1])});
  assign acc_imod_27_sva = nl_acc_imod_27_sva[2:0];
  always @(posedge clk or negedge arst_n) begin
    if ( ~ arst_n ) begin
      vout_rsc_mgc_out_stdreg_d <= 30'b0;
      intensity_slc_intensity_2_sg1_9_itm_1 <= 2'b0;
      intensity_slc_intensity_2_sg1_11_itm_1 <= 3'b0;
      intensity_slc_intensity_2_sg1_itm_1 <= 6'b0;
      intensity_slc_intensity_2_sg1_12_itm_1 <= 1'b0;
      FRAME_acc_12_itm_1 <= 6'b0;
      main_stage_0_2 <= 1'b0;
      main_stage_0_3 <= 1'b0;
      ACC1_acc_281_itm_1 <= 16'b0;
      mul_1_itm_1 <= 13'b0;
      ACC1_2_slc_acc_idiv_131_itm_1 <= 1'b0;
      ACC1_mul_99_itm_1 <= 8'b0;
      ACC1_slc_acc_imod_17_8_itm_1 <= 1'b0;
      ACC1_2_slc_acc_idiv_106_itm_1 <= 1'b0;
      ACC1_acc_264_itm_1 <= 10'b0;
      ACC1_mul_90_itm_1 <= 12'b0;
      ACC1_mul_91_itm_1 <= 14'b0;
      ACC1_mul_104_itm_1 <= 10'b0;
      ACC1_slc_acc_idiv_2_90_itm_1 <= 1'b0;
      ACC1_3_slc_acc_idiv_132_itm_1 <= 1'b0;
      ACC1_mul_103_itm_1 <= 8'b0;
      ACC1_slc_acc_idiv_91_itm_1 <= 1'b0;
      ACC1_3_slc_acc_idiv_131_itm_1 <= 1'b0;
      ACC1_mul_98_itm_1 <= 6'b0;
      ACC1_slc_acc_idiv_3_36_itm_1 <= 1'b0;
      ACC1_2_slc_acc_idiv_132_itm_1 <= 1'b0;
      ACC1_acc_252_itm_1 <= 6'b0;
      ACC1_acc_251_itm_1 <= 6'b0;
      ACC1_acc_255_itm_1 <= 7'b0;
      ACC1_mul_89_itm_1 <= 10'b0;
      ACC1_acc_268_itm_1 <= 12'b0;
      ACC1_mul_96_itm_1 <= 14'b0;
      ACC1_slc_acc_imod_28_itm_1 <= 1'b0;
      regs_regs_slc_regs_regs_2_sg2_1_itm <= 10'b0;
      regs_regs_slc_regs_regs_2_sg2_2_itm <= 10'b0;
      regs_regs_slc_regs_regs_2_sg2_itm <= 10'b0;
      regs_regs_slc_regs_regs_2_6_itm <= 10'b0;
      regs_regs_slc_regs_regs_2_7_itm <= 10'b0;
      regs_regs_slc_regs_regs_2_itm <= 10'b0;
      regs_regs_1_sg2_sva <= 30'b0;
      regs_regs_1_1_sva <= 30'b0;
    end
    else begin
      if ( en ) begin
        vout_rsc_mgc_out_stdreg_d <= MUX_v_30_2_2({vout_rsc_mgc_out_stdreg_d , ({((FRAME_acc_5_psp_sva[9:0])
            | ({8'b0 , (FRAME_acc_5_psp_sva[11:10])})) , (FRAME_acc_5_psp_sva[9:6])
            , ((FRAME_acc_5_psp_sva[5:0]) | ({4'b0 , (FRAME_acc_5_psp_sva[11:10])}))
            , (FRAME_acc_5_psp_sva[9:0])})}, main_stage_0_3);
        intensity_slc_intensity_2_sg1_9_itm_1 <= ACC1_acc_itm[14:13];
        intensity_slc_intensity_2_sg1_11_itm_1 <= ACC1_acc_itm[12:10];
        intensity_slc_intensity_2_sg1_itm_1 <= ACC1_acc_itm[9:4];
        intensity_slc_intensity_2_sg1_12_itm_1 <= ACC1_acc_itm[15];
        FRAME_acc_12_itm_1 <= nl_FRAME_acc_12_itm_1[5:0];
        main_stage_0_2 <= 1'b1;
        main_stage_0_3 <= main_stage_0_2;
        ACC1_acc_281_itm_1 <= nl_ACC1_acc_281_itm_1[15:0];
        mul_1_itm_1 <= nl_mul_1_itm_1[12:0];
        ACC1_2_slc_acc_idiv_131_itm_1 <= acc_idiv_3_sva[13];
        ACC1_mul_99_itm_1 <= nl_ACC1_mul_99_itm_1[7:0];
        ACC1_slc_acc_imod_17_8_itm_1 <= ACC1_acc_162_itm[4];
        ACC1_2_slc_acc_idiv_106_itm_1 <= acc_idiv_3_sva[17];
        ACC1_acc_264_itm_1 <= nl_ACC1_acc_264_itm_1[9:0];
        ACC1_mul_90_itm_1 <= nl_ACC1_mul_90_itm_1[11:0];
        ACC1_mul_91_itm_1 <= nl_ACC1_mul_91_itm_1[13:0];
        ACC1_mul_104_itm_1 <= nl_ACC1_mul_104_itm_1[9:0];
        ACC1_slc_acc_idiv_2_90_itm_1 <= acc_idiv_2_sva[5];
        ACC1_3_slc_acc_idiv_132_itm_1 <= acc_idiv_sva[15];
        ACC1_mul_103_itm_1 <= nl_ACC1_mul_103_itm_1[7:0];
        ACC1_slc_acc_idiv_91_itm_1 <= acc_idiv_sva[7];
        ACC1_3_slc_acc_idiv_131_itm_1 <= acc_idiv_sva[13];
        ACC1_mul_98_itm_1 <= nl_ACC1_mul_98_itm_1[5:0];
        ACC1_slc_acc_idiv_3_36_itm_1 <= acc_idiv_3_sva[3];
        ACC1_2_slc_acc_idiv_132_itm_1 <= acc_idiv_3_sva[15];
        ACC1_acc_252_itm_1 <= nl_ACC1_acc_252_itm_1[5:0];
        ACC1_acc_251_itm_1 <= nl_ACC1_acc_251_itm_1[5:0];
        ACC1_acc_255_itm_1 <= nl_ACC1_acc_255_itm_1[6:0];
        ACC1_mul_89_itm_1 <= nl_ACC1_mul_89_itm_1[9:0];
        ACC1_acc_268_itm_1 <= nl_ACC1_acc_268_itm_1[11:0];
        ACC1_mul_96_itm_1 <= nl_ACC1_mul_96_itm_1[13:0];
        ACC1_slc_acc_imod_28_itm_1 <= ACC1_acc_189_itm[4];
        regs_regs_slc_regs_regs_2_sg2_1_itm <= regs_regs_1_sg2_sva[19:10];
        regs_regs_slc_regs_regs_2_sg2_2_itm <= regs_regs_1_sg2_sva[9:0];
        regs_regs_slc_regs_regs_2_sg2_itm <= regs_regs_1_sg2_sva[29:20];
        regs_regs_slc_regs_regs_2_6_itm <= regs_regs_1_1_sva[19:10];
        regs_regs_slc_regs_regs_2_7_itm <= regs_regs_1_1_sva[9:0];
        regs_regs_slc_regs_regs_2_itm <= regs_regs_1_1_sva[29:20];
        regs_regs_1_sg2_sva <= vin_rsc_mgc_in_wire_d[89:60];
        regs_regs_1_1_sva <= vin_rsc_mgc_in_wire_d[29:0];
      end
    end
  end
  assign nl_FRAME_acc_12_itm_1  = conv_u2u_5_6(conv_u2u_4_5(conv_u2u_3_4(ACC1_acc_itm[9:7])
      + conv_u2u_3_4(~ (ACC1_acc_itm[12:10]))) + conv_u2u_4_5(conv_u2u_3_4({(~ (ACC1_acc_itm[15]))
      , 1'b1 , (~ (ACC1_acc_itm[15]))}) + conv_u2u_2_4(ACC1_acc_itm[14:13]))) + conv_u2u_4_6(conv_u2u_3_4(ACC1_acc_itm[3:1])
      + conv_u2u_3_4(~ (ACC1_acc_itm[6:4])));
  assign nl_ACC1_acc_281_itm_1  = ((conv_u2u_15_16({conv_u2u_24_12(conv_u2u_2_12(conv_u2u_1_2(acc_idiv_sva[15])
      + conv_u2u_1_2(acc_idiv_2_sva[15])) * 12'b10101010101) , (ACC1_acc_174_itm[4])
      , (signext_2_1(acc_idiv_sva[17]))}) + conv_u2u_14_16(conv_u2u_13_14({conv_u2u_24_12(conv_u2u_2_12(conv_u2u_1_2(acc_idiv_3_sva[12])
      + conv_u2u_1_2(acc_idiv_7_sva[12])) * 12'b10101010101) , (ACC1_acc_189_itm[3])})
      + conv_u2u_13_14({conv_u2u_20_10(conv_u2u_2_10(conv_u2u_1_2(acc_idiv_sva[13])
      + conv_u2u_1_2(acc_idiv_2_sva[13])) * 10'b101010101) , (acc_idiv_7_sva[3])
      , (signext_2_1(acc_idiv_3_sva[5]))}))) + ({conv_u2u_30_15(conv_u2s_2_15(conv_u2u_1_2(acc_idiv_3_sva[16])
      + conv_u2u_1_2(acc_idiv_7_sva[16])) * 15'b101010101010101) , (acc_imod_1_sva[1])}))
      + (({conv_u2u_24_12(conv_u2u_3_12(conv_u2u_2_3((conv_u2u_1_2(acc_idiv_3_sva[15])
      + conv_u2u_1_2(acc_idiv_7_sva[15])) + conv_u2u_1_2(acc_idiv_7_sva[17])) + conv_u2u_1_3(acc_idiv_3_sva[17]))
      * 12'b10101010101) , (acc_idiv_2_sva[7]) , 1'b0 , (signext_2_1(acc_idiv_3_sva[7]))})
      + conv_u2u_32_16(conv_u2u_2_16(conv_u2u_1_2(acc_idiv_sva[16]) + conv_u2u_1_2(acc_idiv_2_sva[16]))
      * 16'b101010101010101));
  assign nl_mul_1_itm_1  = conv_u2s_2_13(conv_u2u_1_2(acc_idiv_sva[17]) + conv_u2u_1_2(acc_idiv_2_sva[17]))
      * 13'b1010101010101;
  assign nl_ACC1_mul_99_itm_1  = conv_u2u_2_8(conv_u2u_1_2(acc_idiv_sva[11]) + conv_u2u_1_2(acc_idiv_2_sva[11]))
      * 8'b1010101;
  assign nl_ACC1_acc_264_itm_1  = conv_s2s_9_10(conv_s2s_7_9(({5'b10101 , (signext_2_1(acc_idiv_sva[9]))})
      + ({conv_u2u_12_6(conv_u2u_2_6(conv_u2u_1_2(acc_idiv_3_sva[6]) + conv_u2u_1_2(acc_idiv_7_sva[6]))
      * 6'b10101) , (acc_idiv_2_sva[3])})) + conv_u2s_7_9(conv_u2u_6_7(conv_u2u_5_6(conv_u2u_4_5(conv_u2u_3_4(conv_u2u_2_3(signext_2_1(acc_idiv_3_sva[11]))
      + conv_u2u_2_3(signext_2_1(acc_idiv_3_sva[13]))) + conv_u2u_3_4(conv_u2u_2_3(signext_2_1(acc_idiv_3_sva[15]))
      + conv_u2u_2_3(signext_2_1(acc_idiv_7_sva[17])))) + conv_u2u_4_5(conv_u2u_3_4(conv_u2u_2_3(signext_2_1(acc_idiv_7_sva[5]))
      + conv_u2u_2_3(signext_2_1(acc_idiv_7_sva[7]))) + conv_u2u_3_4(conv_u2u_2_3(signext_2_1(acc_idiv_7_sva[9]))
      + conv_u2u_2_3(signext_2_1(acc_idiv_7_sva[11]))))) + conv_u2u_5_6(conv_u2u_4_5(conv_u2u_3_4(conv_u2u_2_3(signext_2_1(acc_idiv_7_sva[13]))
      + conv_u2u_2_3(signext_2_1(acc_idiv_7_sva[15]))) + conv_u2u_3_4(conv_u2u_2_3(signext_2_1(acc_idiv_2_sva[5]))
      + conv_u2u_2_3(signext_2_1(acc_idiv_2_sva[7])))) + conv_u2u_4_5(conv_u2u_3_4(conv_u2u_2_3(signext_2_1(acc_idiv_2_sva[9]))
      + conv_u2u_2_3(signext_2_1(acc_idiv_2_sva[11]))) + conv_u2u_3_4(conv_u2u_2_3(signext_2_1(acc_idiv_2_sva[13]))
      + conv_u2u_2_3(signext_2_1(acc_idiv_2_sva[15])))))) + conv_u2u_6_7(conv_u2u_5_6(conv_u2u_4_5(conv_u2u_3_4(conv_u2u_2_3(signext_2_1(acc_idiv_7_sva[7]))
      + conv_u2u_2_3(signext_2_1(acc_idiv_7_sva[9]))) + conv_u2u_3_4(conv_u2u_2_3(signext_2_1(acc_idiv_7_sva[11]))
      + conv_u2u_2_3(signext_2_1(acc_idiv_7_sva[13])))) + conv_u2u_4_5(conv_u2u_3_4(conv_u2u_2_3(signext_2_1(acc_idiv_7_sva[15]))
      + conv_u2u_2_3(signext_2_1(acc_idiv_7_sva[17]))) + conv_u2u_3_4(conv_u2u_2_3(signext_2_1(acc_idiv_7_sva[5]))
      + conv_u2u_2_3(signext_2_1(acc_idiv_2_sva[17]))))) + conv_u2u_5_6(conv_u2u_4_5(conv_u2u_3_4(conv_u2u_2_3({(acc_idiv_sva[3])
      , (acc_idiv_sva[1])}) + conv_u2u_2_3({(acc_idiv_2_sva[3]) , (acc_idiv_sva[2])}))
      + conv_u2u_3_4(conv_u2u_2_3({(acc_idiv_3_sva[1]) , (acc_idiv_sva[3])}) + conv_u2u_2_3({(acc_idiv_3_sva[2])
      , (acc_idiv_sva[4])}))) + conv_u2u_4_5(conv_u2u_3_4(conv_u2u_2_3({(acc_idiv_3_sva[3])
      , (acc_idiv_2_sva[1])}) + conv_u2u_2_3({(acc_idiv_3_sva[4]) , (acc_idiv_2_sva[2])}))
      + conv_u2u_3_4(conv_u2u_2_3({(ACC1_acc_189_itm[4]) , (ACC1_acc_201_itm[2])})
      + conv_u2u_2_3({(ACC1_acc_162_itm[2]) , (ACC1_acc_201_itm[3])}))))))) + conv_u2s_9_10({conv_u2u_16_8(conv_u2u_2_8(conv_u2u_1_2(acc_idiv_3_sva[8])
      + conv_u2u_1_2(acc_idiv_7_sva[8])) * 8'b1010101) , (acc_idiv_2_sva[4])});
  assign nl_ACC1_mul_90_itm_1  = conv_u2u_2_12(conv_u2u_1_2(acc_idiv_sva[12]) + conv_u2u_1_2(acc_idiv_2_sva[12]))
      * 12'b10101010101;
  assign nl_ACC1_mul_91_itm_1  = conv_u2u_2_14(conv_u2u_1_2(acc_idiv_sva[14]) + conv_u2u_1_2(acc_idiv_2_sva[14]))
      * 14'b1010101010101;
  assign nl_ACC1_mul_104_itm_1  = conv_u2u_2_10(conv_u2u_1_2(acc_idiv_3_sva[13])
      + conv_u2u_1_2(acc_idiv_7_sva[13])) * 10'b101010101;
  assign nl_ACC1_mul_103_itm_1  = conv_u2u_2_8(conv_u2u_1_2(acc_idiv_3_sva[11]) +
      conv_u2u_1_2(acc_idiv_7_sva[11])) * 8'b1010101;
  assign nl_ACC1_mul_98_itm_1  = conv_u2u_2_6(conv_u2u_1_2(acc_idiv_sva[9]) + conv_u2u_1_2(acc_idiv_2_sva[9]))
      * 6'b10101;
  assign nl_ACC1_acc_252_itm_1  = conv_u2u_5_6(conv_u2u_4_5(conv_u2u_3_4(conv_u2u_2_3({(ACC1_acc_162_itm[3])
      , (ACC1_acc_201_itm[4])}) + conv_u2u_2_3({(ACC1_acc_162_itm[4]) , (acc_imod_7_sva[1])}))
      + conv_u2u_3_4({(conv_u2u_1_2(acc_imod_19_sva[1]) + conv_u2u_1_2(~ (acc_imod_19_sva[2])))
      , (~ (readslicef_3_1_2((({1'b1 , (acc_imod_7_sva[0]) , 1'b1}) + conv_u2s_2_3({(~
      (acc_imod_7_sva[1])) , (~ (acc_imod_7_sva[2]))})))))})) + conv_u2u_4_5({(conv_u2u_2_3(readslicef_3_2_1((conv_u2u_2_3({(acc_idiv_7_sva[2])
      , 1'b1}) + conv_u2u_2_3({(acc_idiv_7_sva[3]) , (acc_idiv_7_sva[4])})))) + conv_u2u_1_3(acc_idiv_7_sva[1]))
      , 1'b1})) + conv_u2u_5_6({(readslicef_5_4_1((conv_u2u_3_5({(readslicef_3_2_1((conv_u2u_2_3({(ACC1_acc_201_itm[4])
      , 1'b1}) + conv_u2u_2_3({(ACC1_acc_174_itm[2]) , (ACC1_acc_174_itm[3])}))))
      , 1'b1}) + conv_u2u_4_5({(ACC1_acc_230_sdt[3:1]) , (ACC1_acc_174_itm[4])}))))
      , (ACC1_acc_230_sdt[0])});
  assign nl_ACC1_acc_251_itm_1  = conv_u2u_5_6(conv_u2u_4_5({(~ (ACC1_acc_162_itm[5]))
      , (~ (ACC1_acc_189_itm[5])) , (~ (readslicef_3_1_2((({1'b1 , (acc_imod_19_sva[0])
      , 1'b1}) + conv_u2s_2_3({(~ (acc_imod_19_sva[1])) , (~ (acc_imod_19_sva[2]))})))))
      , (~ (ACC1_acc_201_itm[5]))}) + conv_u2u_4_5({(~ (ACC1_acc_174_itm[5])) , (~
      (ACC1_acc_201_itm[5])) , (~ (ACC1_acc_162_itm[5])) , (~ (acc_imod_7_sva[2]))}))
      + conv_u2u_5_6({(acc_idiv_7_sva[5]) , (acc_idiv_3_sva[4]) , 1'b0 , (signext_2_1(acc_idiv_3_sva[9]))});
  assign nl_ACC1_acc_255_itm_1  = conv_u2u_6_7(conv_u2u_5_6({(acc_idiv_7_sva[7])
      , (acc_idiv_7_sva[4]) , 1'b0 , (signext_2_1(acc_idiv_3_sva[11]))}) + conv_u2u_4_6(conv_u2u_3_4(conv_u2u_2_3(signext_2_1(acc_idiv_3_sva[17]))
      + conv_u2u_2_3(signext_2_1(acc_idiv_3_sva[5]))) + conv_u2u_3_4(conv_u2u_2_3(signext_2_1(acc_idiv_3_sva[7]))
      + conv_u2u_2_3(signext_2_1(acc_idiv_3_sva[9]))))) + conv_u2u_6_7(conv_u2u_12_6(conv_u2u_2_6(conv_u2u_1_2(acc_idiv_sva[6])
      + conv_u2u_1_2(acc_idiv_2_sva[6])) * 6'b10101));
  assign nl_ACC1_mul_89_itm_1  = conv_u2u_2_10(conv_u2u_1_2(acc_idiv_sva[10]) + conv_u2u_1_2(acc_idiv_2_sva[10]))
      * 10'b101010101;
  assign nl_ACC1_acc_268_itm_1  = conv_u2u_11_12(conv_u2u_10_11({conv_u2u_12_6(conv_u2u_2_6(conv_u2u_1_2(acc_idiv_3_sva[9])
      + conv_u2u_1_2(acc_idiv_7_sva[9])) * 6'b10101) , (acc_idiv_sva[5]) , 1'b0 ,
      (signext_2_1(acc_idiv_sva[11]))}) + conv_u2u_9_11(conv_u2u_8_9({(conv_u2u_3_4({(acc_idiv_3_sva[7])
      , (acc_idiv_sva[7]) , (acc_idiv_3_sva[5])}) + conv_u2u_3_4({(acc_idiv_7_sva[7])
      , (acc_idiv_2_sva[7]) , (acc_idiv_3_sva[7])})) , (conv_u2u_3_4({(acc_idiv_sva[4])
      , (signext_2_1(acc_idiv_sva[5]))}) + conv_u2u_3_4({(acc_idiv_2_sva[4]) , (signext_2_1(acc_idiv_sva[7]))}))})
      + conv_u2u_8_9(conv_u2u_16_8(conv_u2u_2_8(conv_u2u_1_2(acc_idiv_sva[8]) + conv_u2u_1_2(acc_idiv_2_sva[8]))
      * 8'b1010101)))) + conv_u2u_11_12({conv_u2u_20_10(conv_u2u_2_10(conv_u2u_1_2(acc_idiv_3_sva[10])
      + conv_u2u_1_2(acc_idiv_7_sva[10])) * 10'b101010101) , (ACC1_acc_189_itm[2])});
  assign nl_ACC1_mul_96_itm_1  = conv_u2u_2_14(conv_u2u_1_2(acc_idiv_3_sva[14]) +
      conv_u2u_1_2(acc_idiv_7_sva[14])) * 14'b1010101010101;

  function [0:0] readslicef_5_1_4;
    input [4:0] vector;
    reg [4:0] tmp;
  begin
    tmp = vector >> 4;
    readslicef_5_1_4 = tmp[0:0];
  end
  endfunction


  function [10:0] signext_11_9;
    input [8:0] vector;
  begin
    signext_11_9= {{2{vector[8]}}, vector};
  end
  endfunction


  function [4:0] readslicef_6_5_1;
    input [5:0] vector;
    reg [5:0] tmp;
  begin
    tmp = vector >> 1;
    readslicef_6_5_1 = tmp[4:0];
  end
  endfunction


  function [3:0] readslicef_5_4_1;
    input [4:0] vector;
    reg [4:0] tmp;
  begin
    tmp = vector >> 1;
    readslicef_5_4_1 = tmp[3:0];
  end
  endfunction


  function [2:0] readslicef_4_3_1;
    input [3:0] vector;
    reg [3:0] tmp;
  begin
    tmp = vector >> 1;
    readslicef_4_3_1 = tmp[2:0];
  end
  endfunction


  function [1:0] readslicef_3_2_1;
    input [2:0] vector;
    reg [2:0] tmp;
  begin
    tmp = vector >> 1;
    readslicef_3_2_1 = tmp[1:0];
  end
  endfunction


  function [15:0] signext_16_10;
    input [9:0] vector;
  begin
    signext_16_10= {{6{vector[9]}}, vector};
  end
  endfunction


  function [10:0] readslicef_12_11_1;
    input [11:0] vector;
    reg [11:0] tmp;
  begin
    tmp = vector >> 1;
    readslicef_12_11_1 = tmp[10:0];
  end
  endfunction


  function [15:0] signext_16_11;
    input [10:0] vector;
  begin
    signext_16_11= {{5{vector[10]}}, vector};
  end
  endfunction


  function [0:0] readslicef_3_1_2;
    input [2:0] vector;
    reg [2:0] tmp;
  begin
    tmp = vector >> 2;
    readslicef_3_1_2 = tmp[0:0];
  end
  endfunction


  function [29:0] MUX_v_30_2_2;
    input [59:0] inputs;
    input [0:0] sel;
    reg [29:0] result;
  begin
    case (sel)
      1'b0 : begin
        result = inputs[59:30];
      end
      1'b1 : begin
        result = inputs[29:0];
      end
      default : begin
        result = inputs[59:30];
      end
    endcase
    MUX_v_30_2_2 = result;
  end
  endfunction


  function [1:0] signext_2_1;
    input [0:0] vector;
  begin
    signext_2_1= {{1{vector[0]}}, vector};
  end
  endfunction


  function signed [12:0] conv_u2s_11_13 ;
    input [10:0]  vector ;
  begin
    conv_u2s_11_13 = {{2{1'b0}}, vector};
  end
  endfunction


  function signed [11:0] conv_u2s_22_12 ;
    input [21:0]  vector ;
  begin
    conv_u2s_22_12 = vector[11:0];
  end
  endfunction


  function  [10:0] conv_u2u_2_11 ;
    input [1:0]  vector ;
  begin
    conv_u2u_2_11 = {{9{1'b0}}, vector};
  end
  endfunction


  function signed [11:0] conv_s2s_10_12 ;
    input signed [9:0]  vector ;
  begin
    conv_s2s_10_12 = {{2{vector[9]}}, vector};
  end
  endfunction


  function signed [10:0] conv_u2s_9_11 ;
    input [8:0]  vector ;
  begin
    conv_u2s_9_11 = {{2{1'b0}}, vector};
  end
  endfunction


  function signed [9:0] conv_u2s_18_10 ;
    input [17:0]  vector ;
  begin
    conv_u2s_18_10 = vector[9:0];
  end
  endfunction


  function  [8:0] conv_u2u_3_9 ;
    input [2:0]  vector ;
  begin
    conv_u2u_3_9 = {{6{1'b0}}, vector};
  end
  endfunction


  function signed [9:0] conv_s2s_8_10 ;
    input signed [7:0]  vector ;
  begin
    conv_s2s_8_10 = {{2{vector[7]}}, vector};
  end
  endfunction


  function signed [7:0] conv_u2s_6_8 ;
    input [5:0]  vector ;
  begin
    conv_u2s_6_8 = {{2{1'b0}}, vector};
  end
  endfunction


  function signed [7:0] conv_s2s_5_8 ;
    input signed [4:0]  vector ;
  begin
    conv_s2s_5_8 = {{3{vector[4]}}, vector};
  end
  endfunction


  function  [4:0] conv_u2u_4_5 ;
    input [3:0]  vector ;
  begin
    conv_u2u_4_5 = {1'b0, vector};
  end
  endfunction


  function  [3:0] conv_u2u_3_4 ;
    input [2:0]  vector ;
  begin
    conv_u2u_3_4 = {1'b0, vector};
  end
  endfunction


  function signed [4:0] conv_u2s_4_5 ;
    input [3:0]  vector ;
  begin
    conv_u2s_4_5 = {1'b0, vector};
  end
  endfunction


  function  [3:0] conv_u2u_2_4 ;
    input [1:0]  vector ;
  begin
    conv_u2u_2_4 = {{2{1'b0}}, vector};
  end
  endfunction


  function  [4:0] conv_u2u_3_5 ;
    input [2:0]  vector ;
  begin
    conv_u2u_3_5 = {{2{1'b0}}, vector};
  end
  endfunction


  function  [11:0] conv_u2u_11_12 ;
    input [10:0]  vector ;
  begin
    conv_u2u_11_12 = {1'b0, vector};
  end
  endfunction


  function signed [15:0] conv_s2s_15_16 ;
    input signed [14:0]  vector ;
  begin
    conv_s2s_15_16 = {vector[14], vector};
  end
  endfunction


  function signed [14:0] conv_s2s_14_15 ;
    input signed [13:0]  vector ;
  begin
    conv_s2s_14_15 = {vector[13], vector};
  end
  endfunction


  function signed [13:0] conv_s2s_12_14 ;
    input signed [11:0]  vector ;
  begin
    conv_s2s_12_14 = {{2{vector[11]}}, vector};
  end
  endfunction


  function signed [11:0] conv_u2s_11_12 ;
    input [10:0]  vector ;
  begin
    conv_u2s_11_12 = {1'b0, vector};
  end
  endfunction


  function signed [13:0] conv_u2s_12_14 ;
    input [11:0]  vector ;
  begin
    conv_u2s_12_14 = {{2{1'b0}}, vector};
  end
  endfunction


  function signed [14:0] conv_u2s_14_15 ;
    input [13:0]  vector ;
  begin
    conv_u2s_14_15 = {1'b0, vector};
  end
  endfunction


  function  [15:0] conv_u2u_15_16 ;
    input [14:0]  vector ;
  begin
    conv_u2u_15_16 = {1'b0, vector};
  end
  endfunction


  function  [14:0] conv_u2u_14_15 ;
    input [13:0]  vector ;
  begin
    conv_u2u_14_15 = {1'b0, vector};
  end
  endfunction


  function  [14:0] conv_u2u_13_15 ;
    input [12:0]  vector ;
  begin
    conv_u2u_13_15 = {{2{1'b0}}, vector};
  end
  endfunction


  function  [12:0] conv_u2u_12_13 ;
    input [11:0]  vector ;
  begin
    conv_u2u_12_13 = {1'b0, vector};
  end
  endfunction


  function  [10:0] conv_u2u_10_11 ;
    input [9:0]  vector ;
  begin
    conv_u2u_10_11 = {1'b0, vector};
  end
  endfunction


  function  [9:0] conv_u2u_9_10 ;
    input [8:0]  vector ;
  begin
    conv_u2u_9_10 = {1'b0, vector};
  end
  endfunction


  function  [9:0] conv_u2u_8_10 ;
    input [7:0]  vector ;
  begin
    conv_u2u_8_10 = {{2{1'b0}}, vector};
  end
  endfunction


  function  [7:0] conv_u2u_7_8 ;
    input [6:0]  vector ;
  begin
    conv_u2u_7_8 = {1'b0, vector};
  end
  endfunction


  function  [6:0] conv_u2u_6_7 ;
    input [5:0]  vector ;
  begin
    conv_u2u_6_7 = {1'b0, vector};
  end
  endfunction


  function  [5:0] conv_u2u_5_6 ;
    input [4:0]  vector ;
  begin
    conv_u2u_5_6 = {1'b0, vector};
  end
  endfunction


  function  [2:0] conv_u2u_2_3 ;
    input [1:0]  vector ;
  begin
    conv_u2u_2_3 = {1'b0, vector};
  end
  endfunction


  function  [5:0] conv_u2u_4_6 ;
    input [3:0]  vector ;
  begin
    conv_u2u_4_6 = {{2{1'b0}}, vector};
  end
  endfunction


  function  [17:0] conv_u2u_17_18 ;
    input [16:0]  vector ;
  begin
    conv_u2u_17_18 = {1'b0, vector};
  end
  endfunction


  function  [16:0] conv_u2u_16_17 ;
    input [15:0]  vector ;
  begin
    conv_u2u_16_17 = {1'b0, vector};
  end
  endfunction


  function  [17:0] conv_u2u_16_18 ;
    input [15:0]  vector ;
  begin
    conv_u2u_16_18 = {{2{1'b0}}, vector};
  end
  endfunction


  function signed [11:0] conv_s2s_11_12 ;
    input signed [10:0]  vector ;
  begin
    conv_s2s_11_12 = {vector[10], vector};
  end
  endfunction


  function signed [10:0] conv_s2s_10_11 ;
    input signed [9:0]  vector ;
  begin
    conv_s2s_10_11 = {vector[9], vector};
  end
  endfunction


  function signed [2:0] conv_u2s_2_3 ;
    input [1:0]  vector ;
  begin
    conv_u2s_2_3 = {1'b0, vector};
  end
  endfunction


  function  [11:0] conv_u2u_24_12 ;
    input [23:0]  vector ;
  begin
    conv_u2u_24_12 = vector[11:0];
  end
  endfunction


  function  [11:0] conv_u2u_2_12 ;
    input [1:0]  vector ;
  begin
    conv_u2u_2_12 = {{10{1'b0}}, vector};
  end
  endfunction


  function  [1:0] conv_u2u_1_2 ;
    input [0:0]  vector ;
  begin
    conv_u2u_1_2 = {1'b0, vector};
  end
  endfunction


  function  [15:0] conv_u2u_14_16 ;
    input [13:0]  vector ;
  begin
    conv_u2u_14_16 = {{2{1'b0}}, vector};
  end
  endfunction


  function  [13:0] conv_u2u_13_14 ;
    input [12:0]  vector ;
  begin
    conv_u2u_13_14 = {1'b0, vector};
  end
  endfunction


  function  [9:0] conv_u2u_20_10 ;
    input [19:0]  vector ;
  begin
    conv_u2u_20_10 = vector[9:0];
  end
  endfunction


  function  [9:0] conv_u2u_2_10 ;
    input [1:0]  vector ;
  begin
    conv_u2u_2_10 = {{8{1'b0}}, vector};
  end
  endfunction


  function  [14:0] conv_u2u_30_15 ;
    input [29:0]  vector ;
  begin
    conv_u2u_30_15 = vector[14:0];
  end
  endfunction


  function signed [14:0] conv_u2s_2_15 ;
    input [1:0]  vector ;
  begin
    conv_u2s_2_15 = {{13{1'b0}}, vector};
  end
  endfunction


  function  [11:0] conv_u2u_3_12 ;
    input [2:0]  vector ;
  begin
    conv_u2u_3_12 = {{9{1'b0}}, vector};
  end
  endfunction


  function  [2:0] conv_u2u_1_3 ;
    input [0:0]  vector ;
  begin
    conv_u2u_1_3 = {{2{1'b0}}, vector};
  end
  endfunction


  function  [15:0] conv_u2u_32_16 ;
    input [31:0]  vector ;
  begin
    conv_u2u_32_16 = vector[15:0];
  end
  endfunction


  function  [15:0] conv_u2u_2_16 ;
    input [1:0]  vector ;
  begin
    conv_u2u_2_16 = {{14{1'b0}}, vector};
  end
  endfunction


  function signed [12:0] conv_u2s_2_13 ;
    input [1:0]  vector ;
  begin
    conv_u2s_2_13 = {{11{1'b0}}, vector};
  end
  endfunction


  function  [7:0] conv_u2u_2_8 ;
    input [1:0]  vector ;
  begin
    conv_u2u_2_8 = {{6{1'b0}}, vector};
  end
  endfunction


  function signed [9:0] conv_s2s_9_10 ;
    input signed [8:0]  vector ;
  begin
    conv_s2s_9_10 = {vector[8], vector};
  end
  endfunction


  function signed [8:0] conv_s2s_7_9 ;
    input signed [6:0]  vector ;
  begin
    conv_s2s_7_9 = {{2{vector[6]}}, vector};
  end
  endfunction


  function  [5:0] conv_u2u_12_6 ;
    input [11:0]  vector ;
  begin
    conv_u2u_12_6 = vector[5:0];
  end
  endfunction


  function  [5:0] conv_u2u_2_6 ;
    input [1:0]  vector ;
  begin
    conv_u2u_2_6 = {{4{1'b0}}, vector};
  end
  endfunction


  function signed [8:0] conv_u2s_7_9 ;
    input [6:0]  vector ;
  begin
    conv_u2s_7_9 = {{2{1'b0}}, vector};
  end
  endfunction


  function signed [9:0] conv_u2s_9_10 ;
    input [8:0]  vector ;
  begin
    conv_u2s_9_10 = {1'b0, vector};
  end
  endfunction


  function  [7:0] conv_u2u_16_8 ;
    input [15:0]  vector ;
  begin
    conv_u2u_16_8 = vector[7:0];
  end
  endfunction


  function  [13:0] conv_u2u_2_14 ;
    input [1:0]  vector ;
  begin
    conv_u2u_2_14 = {{12{1'b0}}, vector};
  end
  endfunction


  function  [10:0] conv_u2u_9_11 ;
    input [8:0]  vector ;
  begin
    conv_u2u_9_11 = {{2{1'b0}}, vector};
  end
  endfunction


  function  [8:0] conv_u2u_8_9 ;
    input [7:0]  vector ;
  begin
    conv_u2u_8_9 = {1'b0, vector};
  end
  endfunction

endmodule

// ------------------------------------------------------------------
//  Design Unit:    sobel
//  Generated from file(s):
//    7) $PROJECT_HOME/sobel.cpp
// ------------------------------------------------------------------


module sobel (
  vin_rsc_z, vout_rsc_z, clk, en, arst_n
);
  input [89:0] vin_rsc_z;
  output [29:0] vout_rsc_z;
  input clk;
  input en;
  input arst_n;


  // Interconnect Declarations
  wire [89:0] vin_rsc_mgc_in_wire_d;
  wire [29:0] vout_rsc_mgc_out_stdreg_d;


  // Interconnect Declarations for Component Instantiations 
  mgc_in_wire #(.rscid(1),
  .width(90)) vin_rsc_mgc_in_wire (
      .d(vin_rsc_mgc_in_wire_d),
      .z(vin_rsc_z)
    );
  mgc_out_stdreg #(.rscid(2),
  .width(30)) vout_rsc_mgc_out_stdreg (
      .d(vout_rsc_mgc_out_stdreg_d),
      .z(vout_rsc_z)
    );
  sobel_core sobel_core_inst (
      .clk(clk),
      .en(en),
      .arst_n(arst_n),
      .vin_rsc_mgc_in_wire_d(vin_rsc_mgc_in_wire_d),
      .vout_rsc_mgc_out_stdreg_d(vout_rsc_mgc_out_stdreg_d)
    );
endmodule



