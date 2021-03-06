// ----------------------------------------------------------------------
//  HLS HDL:        Verilog Netlister
//  HLS Version:    2011a.126 Production Release
//  HLS Date:       Wed Aug  8 00:52:07 PDT 2012
// 
//  Generated by:   mg3115@EEWS104A-013
//  Generated date: Tue Mar 08 14:22:16 2016
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



  // Interconnect Declarations for Component Instantiations 
  always @(*)
  begin : core
    // Interconnect Declarations
    reg [18:0] FRAME_p_1_lpi_1;
    reg [89:0] regs_regs_1_sva;
    reg [89:0] regs_regs_0_sva;
    reg exit_FRAME_1_sva;
    reg [18:0] FRAME_p_1_lpi_1_dfm;
    reg exit_FRAME_for_lpi_1_dfm;
    reg [89:0] regs_regs_0_sva_1;
    reg [89:0] regs_regs_0_sva_dfm;
    reg [89:0] regs_regs_1_sva_dfm;
    reg [89:0] regs_regs_2_lpi_1_dfm;
    reg [1:0] i_6_lpi_1_dfm;
    reg FRAME_for_slc_YMATRIX_rom_11_psp_sva;
    reg [15:0] r_0_sva_1;
    reg [15:0] g_0_sva_1;
    reg [15:0] b_0_sva_1;
    reg [15:0] r_2_sva_1;
    reg [15:0] g_2_sva_1;
    reg [15:0] b_2_sva_1;
    reg [1:0] i_6_sva_1;
    reg exit_FRAME_for_sva_1;
    reg [15:0] red_2_sva;
    reg [15:0] green_2_sva;
    reg [15:0] blue_2_sva;
    reg [5:0] FRAME_acc_7_psp_sva;
    reg [3:0] FRAME_acc_8_psp_sva;
    reg [5:0] FRAME_acc_9_psp_sva;
    reg [3:0] FRAME_acc_10_psp_sva;
    reg [11:0] FRAME_acc_3_psp_sva;
    reg [5:0] FRAME_acc_11_psp_sva;
    reg [3:0] FRAME_acc_12_psp_sva;
    reg [18:0] FRAME_p_1_sva_1;
    reg exit_FRAME_lpi_1_dfm_1;
    reg exit_FRAME_for_lpi_1_dfm_2;
    reg [8:0] FRAME_mul_2_itm;
    reg [8:0] FRAME_mul_2_itm_1;
    reg [5:0] FRAME_slc_green_10_itm;
    reg [5:0] FRAME_slc_green_10_itm_1;
    reg [4:0] FRAME_acc_25_itm;
    reg [4:0] FRAME_acc_25_itm_1;
    reg [11:0] FRAME_mul_3_itm;
    reg [11:0] FRAME_mul_3_itm_1;
    reg [8:0] FRAME_mul_itm;
    reg [8:0] FRAME_mul_itm_1;
    reg [5:0] FRAME_slc_red_10_itm;
    reg [5:0] FRAME_slc_red_10_itm_1;
    reg [4:0] FRAME_acc_35_itm;
    reg [4:0] FRAME_acc_35_itm_1;
    reg [9:0] FRAME_mul_1_itm;
    reg [9:0] FRAME_mul_1_itm_1;
    reg [8:0] FRAME_mul_4_itm;
    reg [8:0] FRAME_mul_4_itm_1;
    reg [5:0] FRAME_slc_blue_10_itm;
    reg [5:0] FRAME_slc_blue_10_itm_1;
    reg [4:0] FRAME_acc_40_itm;
    reg [4:0] FRAME_acc_40_itm_1;
    reg [11:0] FRAME_mul_5_itm;
    reg [11:0] FRAME_mul_5_itm_1;
    reg exit_FRAME_for_sva_1_st_1;
    reg main_stage_0_2;
    reg [10:0] r_0_sva_2;
    reg [10:0] g_0_sva_2;
    reg [10:0] b_0_sva_2;
    reg [10:0] r_2_sva_2;
    reg [10:0] g_2_sva_2;
    reg [10:0] b_2_sva_2;
    reg [4:0] FRAME_acc_13_sdt;
    reg [4:0] FRAME_acc_18_sdt;
    reg [4:0] FRAME_acc_28_sdt;
    reg FRAME_for_nor_cse;
    reg FRAME_for_slc_XMATRIX_rom_11_psp_sva_1;

    reg[15:0] FRAME_for_mux_5_nl;
    reg[9:0] regs_operator_9_mux_nl;
    reg[15:0] FRAME_for_mux_7_nl;
    reg[9:0] regs_operator_10_mux_nl;
    reg[15:0] FRAME_for_mux_9_nl;
    reg[9:0] regs_operator_11_mux_nl;
    reg[15:0] FRAME_for_mux_6_nl;
    reg[9:0] regs_operator_15_mux_nl;
    reg[15:0] FRAME_for_mux_8_nl;
    reg[9:0] regs_operator_16_mux_nl;
    reg[15:0] FRAME_for_mux_10_nl;
    reg[9:0] regs_operator_17_mux_nl;
    begin : core_rlpExit
      forever begin : core_rlp
        // C-Step 0 of Loop 'core_rlp'
        FRAME_p_1_lpi_1 = 19'b0;
        regs_regs_1_sva = 90'b0;
        regs_regs_0_sva = 90'b0;
        exit_FRAME_1_sva = 1'b1;
        main_stage_0_2 = 1'b0;
        begin : mainExit
          forever begin : main
            // C-Step 0 of Loop 'main'
            begin : waitLoop0Exit
              forever begin : waitLoop0
                @(posedge clk or negedge ( arst_n ));
                if ( ~ arst_n )
                  disable core_rlpExit;
                if ( en )
                  disable waitLoop0Exit;
              end
            end
            // C-Step 1 of Loop 'main'
            if ( main_stage_0_2 ) begin
              if ( exit_FRAME_for_sva_1_st_1 ) begin
                FRAME_acc_3_psp_sva = conv_s2s_10_12(conv_u2s_9_10(FRAME_mul_2_itm_1)
                    + conv_s2s_8_10(conv_u2s_6_8(FRAME_slc_green_10_itm_1) + conv_s2s_5_8(FRAME_acc_25_itm_1)))
                    + FRAME_mul_3_itm_1;
                vout_rsc_mgc_out_stdreg_d <= ({(((conv_u2s_9_10(FRAME_mul_itm_1)
                    + conv_s2s_8_10(conv_u2s_6_8(FRAME_slc_red_10_itm_1) + conv_s2s_5_8(FRAME_acc_35_itm_1)))
                    + FRAME_mul_1_itm_1) | (signext_10_2(FRAME_acc_3_psp_sva[11:10])))
                    , (FRAME_acc_3_psp_sva[9:0]) , 10'b0}) | (signext_30_12(conv_s2s_10_12(conv_u2s_9_10(FRAME_mul_4_itm_1)
                    + conv_s2s_8_10(conv_u2s_6_8(FRAME_slc_blue_10_itm_1) + conv_s2s_5_8(FRAME_acc_40_itm_1)))
                    + FRAME_mul_5_itm_1));
              end
            end
            FRAME_p_1_sva_1 = 19'b0;
            b_2_sva_2 = 11'b0;
            g_2_sva_2 = 11'b0;
            r_2_sva_2 = 11'b0;
            b_0_sva_2 = 11'b0;
            g_0_sva_2 = 11'b0;
            r_0_sva_2 = 11'b0;
            FRAME_p_1_lpi_1_dfm = FRAME_p_1_lpi_1 & (signext_19_1(~ exit_FRAME_1_sva));
            exit_FRAME_for_lpi_1_dfm = exit_FRAME_for_lpi_1_dfm_2 | exit_FRAME_1_sva;
            if ( exit_FRAME_for_lpi_1_dfm ) begin
              regs_regs_0_sva_1 = vin_rsc_mgc_in_wire_d;
              r_0_sva_2 = readslicef_12_11_1((conv_s2s_11_12({(~ (regs_regs_0_sva_1[29:20]))
                  , 1'b1}) + conv_s2s_11_12({(regs_regs_1_sva[29:20]) , 1'b1})));
              g_0_sva_2 = readslicef_12_11_1((conv_s2s_11_12({(~ (regs_regs_0_sva_1[19:10]))
                  , 1'b1}) + conv_s2s_11_12({(regs_regs_1_sva[19:10]) , 1'b1})));
              b_0_sva_2 = readslicef_12_11_1((conv_s2s_11_12({(~ (regs_regs_0_sva_1[9:0]))
                  , 1'b1}) + conv_s2s_11_12({(regs_regs_1_sva[9:0]) , 1'b1})));
              r_2_sva_2 = readslicef_12_11_1((conv_s2s_11_12({(~ (regs_regs_0_sva_1[89:80]))
                  , 1'b1}) + conv_s2s_11_12({(regs_regs_1_sva[89:80]) , 1'b1})));
              g_2_sva_2 = readslicef_12_11_1((conv_s2s_11_12({(~ (regs_regs_0_sva_1[79:70]))
                  , 1'b1}) + conv_s2s_11_12({(regs_regs_1_sva[79:70]) , 1'b1})));
              b_2_sva_2 = readslicef_12_11_1((conv_s2s_11_12({(~ (regs_regs_0_sva_1[69:60]))
                  , 1'b1}) + conv_s2s_11_12({(regs_regs_1_sva[69:60]) , 1'b1})));
              regs_regs_0_sva_dfm = regs_regs_0_sva_1;
              regs_regs_1_sva_dfm = regs_regs_0_sva;
              regs_regs_2_lpi_1_dfm = regs_regs_1_sva;
            end
            else begin
              regs_regs_0_sva_dfm = regs_regs_0_sva;
              regs_regs_1_sva_dfm = regs_regs_1_sva;
            end
            i_6_lpi_1_dfm = i_6_sva_1 & (signext_2_1(~ exit_FRAME_for_lpi_1_dfm));
            FRAME_for_nor_cse = ~((i_6_lpi_1_dfm[1]) | (i_6_lpi_1_dfm[0]));
            FRAME_for_slc_YMATRIX_rom_11_psp_sva = (~((i_6_lpi_1_dfm[0]) & (~ (i_6_lpi_1_dfm[1]))))
                | FRAME_for_nor_cse | ((i_6_lpi_1_dfm[1]) & (~ (i_6_lpi_1_dfm[0])));
            FRAME_for_mux_5_nl = MUX_v_16_2_2({r_0_sva_1 , ({{5{r_0_sva_2[10]}},
                r_0_sva_2})}, exit_FRAME_for_lpi_1_dfm);
            regs_operator_9_mux_nl = MUX_v_10_4_2({(regs_regs_0_sva_dfm[29:20]) ,
                (regs_regs_1_sva_dfm[29:20]) , (regs_regs_2_lpi_1_dfm[29:20]) , 10'b0},
                i_6_lpi_1_dfm);
            r_0_sva_1 = (FRAME_for_mux_5_nl) + conv_s2s_12_16(conv_s2s_24_12(conv_s2s_10_12(regs_operator_9_mux_nl)
                * conv_s2s_2_12({1'b1 , FRAME_for_slc_YMATRIX_rom_11_psp_sva})));
            FRAME_for_mux_7_nl = MUX_v_16_2_2({g_0_sva_1 , ({{5{g_0_sva_2[10]}},
                g_0_sva_2})}, exit_FRAME_for_lpi_1_dfm);
            regs_operator_10_mux_nl = MUX_v_10_4_2({(regs_regs_0_sva_dfm[19:10])
                , (regs_regs_1_sva_dfm[19:10]) , (regs_regs_2_lpi_1_dfm[19:10]) ,
                10'b0}, i_6_lpi_1_dfm);
            g_0_sva_1 = (FRAME_for_mux_7_nl) + conv_s2s_12_16(conv_s2s_24_12(conv_s2s_10_12(regs_operator_10_mux_nl)
                * conv_s2s_2_12({1'b1 , FRAME_for_slc_YMATRIX_rom_11_psp_sva})));
            FRAME_for_mux_9_nl = MUX_v_16_2_2({b_0_sva_1 , ({{5{b_0_sva_2[10]}},
                b_0_sva_2})}, exit_FRAME_for_lpi_1_dfm);
            regs_operator_11_mux_nl = MUX_v_10_4_2({(regs_regs_0_sva_dfm[9:0]) ,
                (regs_regs_1_sva_dfm[9:0]) , (regs_regs_2_lpi_1_dfm[9:0]) , 10'b0},
                i_6_lpi_1_dfm);
            b_0_sva_1 = (FRAME_for_mux_9_nl) + conv_s2s_12_16(conv_s2s_24_12(conv_s2s_10_12(regs_operator_11_mux_nl)
                * conv_s2s_2_12({1'b1 , FRAME_for_slc_YMATRIX_rom_11_psp_sva})));
            FRAME_for_slc_XMATRIX_rom_11_psp_sva_1 = (~((~ (i_6_lpi_1_dfm[1])) &
                (i_6_lpi_1_dfm[0]))) | FRAME_for_nor_cse;
            FRAME_for_mux_6_nl = MUX_v_16_2_2({r_2_sva_1 , ({{5{r_2_sva_2[10]}},
                r_2_sva_2})}, exit_FRAME_for_lpi_1_dfm);
            regs_operator_15_mux_nl = MUX_v_10_4_2({(regs_regs_0_sva_dfm[89:80])
                , (regs_regs_1_sva_dfm[89:80]) , (regs_regs_2_lpi_1_dfm[89:80]) ,
                10'b0}, i_6_lpi_1_dfm);
            r_2_sva_1 = (FRAME_for_mux_6_nl) + conv_s2s_11_16(conv_s2s_22_11(conv_s2s_10_11(regs_operator_15_mux_nl)
                * conv_s2s_2_11({FRAME_for_nor_cse , FRAME_for_slc_XMATRIX_rom_11_psp_sva_1})));
            FRAME_for_mux_8_nl = MUX_v_16_2_2({g_2_sva_1 , ({{5{g_2_sva_2[10]}},
                g_2_sva_2})}, exit_FRAME_for_lpi_1_dfm);
            regs_operator_16_mux_nl = MUX_v_10_4_2({(regs_regs_0_sva_dfm[79:70])
                , (regs_regs_1_sva_dfm[79:70]) , (regs_regs_2_lpi_1_dfm[79:70]) ,
                10'b0}, i_6_lpi_1_dfm);
            g_2_sva_1 = (FRAME_for_mux_8_nl) + conv_s2s_11_16(conv_s2s_22_11(conv_s2s_10_11(regs_operator_16_mux_nl)
                * conv_s2s_2_11({FRAME_for_nor_cse , FRAME_for_slc_XMATRIX_rom_11_psp_sva_1})));
            FRAME_for_mux_10_nl = MUX_v_16_2_2({b_2_sva_1 , ({{5{b_2_sva_2[10]}},
                b_2_sva_2})}, exit_FRAME_for_lpi_1_dfm);
            regs_operator_17_mux_nl = MUX_v_10_4_2({(regs_regs_0_sva_dfm[69:60])
                , (regs_regs_1_sva_dfm[69:60]) , (regs_regs_2_lpi_1_dfm[69:60]) ,
                10'b0}, i_6_lpi_1_dfm);
            b_2_sva_1 = (FRAME_for_mux_10_nl) + conv_s2s_11_16(conv_s2s_22_11(conv_s2s_10_11(regs_operator_17_mux_nl)
                * conv_s2s_2_11({FRAME_for_nor_cse , FRAME_for_slc_XMATRIX_rom_11_psp_sva_1})));
            i_6_sva_1 = i_6_lpi_1_dfm + 2'b1;
            exit_FRAME_for_sva_1 = ~ (readslicef_3_1_2((({1'b1 , i_6_sva_1}) + 3'b1)));
            if ( exit_FRAME_for_sva_1 ) begin
              red_2_sva = ({(conv_s2u_10_15(~ (regs_regs_0_sva_dfm[59:50])) + conv_s2u_10_15(regs_regs_2_lpi_1_dfm[59:50])
                  + (r_2_sva_1[15:1]) + 15'b1) , (readslicef_2_1_1((({(r_2_sva_1[0])
                  , 1'b1}) + 2'b11)))}) + r_0_sva_1;
              green_2_sva = ({(conv_s2u_10_15(~ (regs_regs_0_sva_dfm[49:40])) + conv_s2u_10_15(regs_regs_2_lpi_1_dfm[49:40])
                  + (g_2_sva_1[15:1]) + 15'b1) , (readslicef_2_1_1((({(g_2_sva_1[0])
                  , 1'b1}) + 2'b11)))}) + g_0_sva_1;
              blue_2_sva = ({(conv_s2u_10_15(~ (regs_regs_0_sva_dfm[39:30])) + conv_s2u_10_15(regs_regs_2_lpi_1_dfm[39:30])
                  + (b_2_sva_1[15:1]) + 15'b1) , (readslicef_2_1_1((({(b_2_sva_1[0])
                  , 1'b1}) + 2'b11)))}) + b_0_sva_1;
              FRAME_acc_13_sdt = conv_u2s_3_5(~ (red_2_sva[12:10])) + conv_s2s_3_5(red_2_sva[15:13]);
              FRAME_acc_7_psp_sva = ({(conv_s2u_4_5(FRAME_acc_13_sdt[4:1]) + 5'b11001)
                  , (FRAME_acc_13_sdt[0])}) + conv_u2u_5_6(conv_u2u_4_5(conv_u2u_3_4(~
                  (red_2_sva[6:4])) + conv_u2u_3_4(red_2_sva[9:7])) + conv_u2u_3_5(red_2_sva[3:1]));
              FRAME_acc_8_psp_sva = readslicef_5_4_1((({1'b1 , (FRAME_acc_7_psp_sva[2:0])
                  , 1'b1}) + conv_u2u_4_5({(~ (FRAME_acc_7_psp_sva[5:3])) , (~ (FRAME_acc_7_psp_sva[5]))})));
              FRAME_acc_18_sdt = conv_u2s_3_5(~ (green_2_sva[12:10])) + conv_s2s_3_5(green_2_sva[15:13]);
              FRAME_acc_9_psp_sva = ({(conv_s2u_4_5(FRAME_acc_18_sdt[4:1]) + 5'b11001)
                  , (FRAME_acc_18_sdt[0])}) + conv_u2u_5_6(conv_u2u_4_5(conv_u2u_3_4(~
                  (green_2_sva[6:4])) + conv_u2u_3_4(green_2_sva[9:7])) + conv_u2u_3_5(green_2_sva[3:1]));
              FRAME_acc_10_psp_sva = readslicef_5_4_1((({1'b1 , (FRAME_acc_9_psp_sva[2:0])
                  , 1'b1}) + conv_u2u_4_5({(~ (FRAME_acc_9_psp_sva[5:3])) , (~ (FRAME_acc_9_psp_sva[5]))})));
              FRAME_mul_2_itm = conv_u2u_18_9(conv_u2u_3_9(green_2_sva[12:10]) *
                  9'b111001);
              FRAME_slc_green_10_itm = green_2_sva[9:4];
              FRAME_acc_25_itm = (conv_u2u_4_5(readslicef_5_4_1((conv_u2u_4_5({(~
                  (FRAME_acc_9_psp_sva[5])) , 1'b1 , (~((FRAME_acc_10_psp_sva[3])
                  & (~ (green_2_sva[15])))) , 1'b1}) + conv_u2u_3_5({(FRAME_acc_9_psp_sva[4:3])
                  , ((green_2_sva[15]) & (~ (FRAME_acc_10_psp_sva[3])) & ((FRAME_acc_10_psp_sva[2])
                  | (FRAME_acc_10_psp_sva[1]) | (FRAME_acc_10_psp_sva[0]) | (green_2_sva[0])))}))))
                  + conv_u2u_3_5(~ (green_2_sva[9:7]))) + ({4'b1001 , (FRAME_acc_9_psp_sva[5])});
              FRAME_mul_3_itm = conv_u2u_24_12(conv_s2s_3_12(green_2_sva[15:13])
                  * 12'b111000111);
              FRAME_acc_28_sdt = conv_u2s_3_5(~ (blue_2_sva[12:10])) + conv_s2s_3_5(blue_2_sva[15:13]);
              FRAME_acc_11_psp_sva = ({(conv_s2u_4_5(FRAME_acc_28_sdt[4:1]) + 5'b11001)
                  , (FRAME_acc_28_sdt[0])}) + conv_u2u_5_6(conv_u2u_4_5(conv_u2u_3_4(~
                  (blue_2_sva[6:4])) + conv_u2u_3_4(blue_2_sva[9:7])) + conv_u2u_3_5(blue_2_sva[3:1]));
              FRAME_acc_12_psp_sva = readslicef_5_4_1((({1'b1 , (FRAME_acc_11_psp_sva[2:0])
                  , 1'b1}) + conv_u2u_4_5({(~ (FRAME_acc_11_psp_sva[5:3])) , (~ (FRAME_acc_11_psp_sva[5]))})));
              FRAME_mul_itm = conv_u2u_18_9(conv_u2u_3_9(red_2_sva[12:10]) * 9'b111001);
              FRAME_slc_red_10_itm = red_2_sva[9:4];
              FRAME_acc_35_itm = (conv_u2u_4_5(readslicef_5_4_1((conv_u2u_4_5({(~
                  (FRAME_acc_7_psp_sva[5])) , 1'b1 , (~((FRAME_acc_8_psp_sva[3])
                  & (~ (red_2_sva[15])))) , 1'b1}) + conv_u2u_3_5({(FRAME_acc_7_psp_sva[4:3])
                  , ((red_2_sva[15]) & (~ (FRAME_acc_8_psp_sva[3])) & ((FRAME_acc_8_psp_sva[2])
                  | (FRAME_acc_8_psp_sva[1]) | (FRAME_acc_8_psp_sva[0]) | (red_2_sva[0])))}))))
                  + conv_u2u_3_5(~ (red_2_sva[9:7]))) + ({4'b1001 , (FRAME_acc_7_psp_sva[5])});
              FRAME_mul_1_itm = conv_u2u_20_10(conv_s2s_3_10(red_2_sva[15:13]) *
                  10'b111000111);
              FRAME_mul_4_itm = conv_u2u_18_9(conv_u2u_3_9(blue_2_sva[12:10]) * 9'b111001);
              FRAME_slc_blue_10_itm = blue_2_sva[9:4];
              FRAME_acc_40_itm = (conv_u2u_4_5(readslicef_5_4_1((conv_u2u_4_5({(~
                  (FRAME_acc_11_psp_sva[5])) , 1'b1 , (~((FRAME_acc_12_psp_sva[3])
                  & (~ (blue_2_sva[15])))) , 1'b1}) + conv_u2u_3_5({(FRAME_acc_11_psp_sva[4:3])
                  , ((blue_2_sva[15]) & (~ (FRAME_acc_12_psp_sva[3])) & ((FRAME_acc_12_psp_sva[2])
                  | (FRAME_acc_12_psp_sva[1]) | (FRAME_acc_12_psp_sva[0]) | (blue_2_sva[0])))}))))
                  + conv_u2u_3_5(~ (blue_2_sva[9:7]))) + ({4'b1001 , (FRAME_acc_11_psp_sva[5])});
              FRAME_mul_5_itm = conv_u2u_24_12(conv_s2s_3_12(blue_2_sva[15:13]) *
                  12'b111000111);
              FRAME_p_1_sva_1 = FRAME_p_1_lpi_1_dfm + 19'b1;
              exit_FRAME_lpi_1_dfm_1 = ~ (readslicef_8_1_7((conv_u2s_7_8(FRAME_p_1_sva_1[18:12])
                  + 8'b10110101)));
            end
            else begin
              exit_FRAME_lpi_1_dfm_1 = exit_FRAME_lpi_1_dfm_1 & (~ exit_FRAME_for_lpi_1_dfm);
            end
            exit_FRAME_for_lpi_1_dfm_2 = exit_FRAME_for_sva_1;
            regs_regs_0_sva = regs_regs_0_sva_dfm;
            regs_regs_1_sva = regs_regs_1_sva_dfm;
            FRAME_p_1_lpi_1 = MUX_v_19_2_2({FRAME_p_1_lpi_1_dfm , FRAME_p_1_sva_1},
                exit_FRAME_for_sva_1);
            exit_FRAME_1_sva = exit_FRAME_for_sva_1 & exit_FRAME_lpi_1_dfm_1;
            FRAME_mul_2_itm_1 = FRAME_mul_2_itm;
            FRAME_slc_green_10_itm_1 = FRAME_slc_green_10_itm;
            FRAME_acc_25_itm_1 = FRAME_acc_25_itm;
            FRAME_mul_3_itm_1 = FRAME_mul_3_itm;
            FRAME_mul_itm_1 = FRAME_mul_itm;
            FRAME_slc_red_10_itm_1 = FRAME_slc_red_10_itm;
            FRAME_acc_35_itm_1 = FRAME_acc_35_itm;
            FRAME_mul_1_itm_1 = FRAME_mul_1_itm;
            FRAME_mul_4_itm_1 = FRAME_mul_4_itm;
            FRAME_slc_blue_10_itm_1 = FRAME_slc_blue_10_itm;
            FRAME_acc_40_itm_1 = FRAME_acc_40_itm;
            FRAME_mul_5_itm_1 = FRAME_mul_5_itm;
            exit_FRAME_for_sva_1_st_1 = exit_FRAME_for_sva_1;
            main_stage_0_2 = 1'b1;
          end
        end
      end
    end
    FRAME_for_slc_XMATRIX_rom_11_psp_sva_1 = 1'b0;
    FRAME_for_nor_cse = 1'b0;
    FRAME_acc_28_sdt = 5'b0;
    FRAME_acc_18_sdt = 5'b0;
    FRAME_acc_13_sdt = 5'b0;
    b_2_sva_2 = 11'b0;
    g_2_sva_2 = 11'b0;
    r_2_sva_2 = 11'b0;
    b_0_sva_2 = 11'b0;
    g_0_sva_2 = 11'b0;
    r_0_sva_2 = 11'b0;
    main_stage_0_2 = 1'b0;
    exit_FRAME_for_sva_1_st_1 = 1'b0;
    FRAME_mul_5_itm_1 = 12'b0;
    FRAME_mul_5_itm = 12'b0;
    FRAME_acc_40_itm_1 = 5'b0;
    FRAME_acc_40_itm = 5'b0;
    FRAME_slc_blue_10_itm_1 = 6'b0;
    FRAME_slc_blue_10_itm = 6'b0;
    FRAME_mul_4_itm_1 = 9'b0;
    FRAME_mul_4_itm = 9'b0;
    FRAME_mul_1_itm_1 = 10'b0;
    FRAME_mul_1_itm = 10'b0;
    FRAME_acc_35_itm_1 = 5'b0;
    FRAME_acc_35_itm = 5'b0;
    FRAME_slc_red_10_itm_1 = 6'b0;
    FRAME_slc_red_10_itm = 6'b0;
    FRAME_mul_itm_1 = 9'b0;
    FRAME_mul_itm = 9'b0;
    FRAME_mul_3_itm_1 = 12'b0;
    FRAME_mul_3_itm = 12'b0;
    FRAME_acc_25_itm_1 = 5'b0;
    FRAME_acc_25_itm = 5'b0;
    FRAME_slc_green_10_itm_1 = 6'b0;
    FRAME_slc_green_10_itm = 6'b0;
    FRAME_mul_2_itm_1 = 9'b0;
    FRAME_mul_2_itm = 9'b0;
    exit_FRAME_for_lpi_1_dfm_2 = 1'b0;
    exit_FRAME_lpi_1_dfm_1 = 1'b0;
    FRAME_p_1_sva_1 = 19'b0;
    FRAME_acc_12_psp_sva = 4'b0;
    FRAME_acc_11_psp_sva = 6'b0;
    FRAME_acc_3_psp_sva = 12'b0;
    FRAME_acc_10_psp_sva = 4'b0;
    FRAME_acc_9_psp_sva = 6'b0;
    FRAME_acc_8_psp_sva = 4'b0;
    FRAME_acc_7_psp_sva = 6'b0;
    blue_2_sva = 16'b0;
    green_2_sva = 16'b0;
    red_2_sva = 16'b0;
    exit_FRAME_for_sva_1 = 1'b0;
    i_6_sva_1 = 2'b0;
    b_2_sva_1 = 16'b0;
    g_2_sva_1 = 16'b0;
    r_2_sva_1 = 16'b0;
    b_0_sva_1 = 16'b0;
    g_0_sva_1 = 16'b0;
    r_0_sva_1 = 16'b0;
    FRAME_for_slc_YMATRIX_rom_11_psp_sva = 1'b0;
    i_6_lpi_1_dfm = 2'b0;
    regs_regs_2_lpi_1_dfm = 90'b0;
    regs_regs_1_sva_dfm = 90'b0;
    regs_regs_0_sva_dfm = 90'b0;
    regs_regs_0_sva_1 = 90'b0;
    exit_FRAME_for_lpi_1_dfm = 1'b0;
    FRAME_p_1_lpi_1_dfm = 19'b0;
    exit_FRAME_1_sva = 1'b0;
    regs_regs_0_sva = 90'b0;
    regs_regs_1_sva = 90'b0;
    FRAME_p_1_lpi_1 = 19'b0;
    vout_rsc_mgc_out_stdreg_d <= 30'b0;
  end


  function [9:0] signext_10_2;
    input [1:0] vector;
  begin
    signext_10_2= {{8{vector[1]}}, vector};
  end
  endfunction


  function [29:0] signext_30_12;
    input [11:0] vector;
  begin
    signext_30_12= {{18{vector[11]}}, vector};
  end
  endfunction


  function [18:0] signext_19_1;
    input [0:0] vector;
  begin
    signext_19_1= {{18{vector[0]}}, vector};
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


  function [1:0] signext_2_1;
    input [0:0] vector;
  begin
    signext_2_1= {{1{vector[0]}}, vector};
  end
  endfunction


  function [15:0] MUX_v_16_2_2;
    input [31:0] inputs;
    input [0:0] sel;
    reg [15:0] result;
  begin
    case (sel)
      1'b0 : begin
        result = inputs[31:16];
      end
      1'b1 : begin
        result = inputs[15:0];
      end
      default : begin
        result = inputs[31:16];
      end
    endcase
    MUX_v_16_2_2 = result;
  end
  endfunction


  function [9:0] MUX_v_10_4_2;
    input [39:0] inputs;
    input [1:0] sel;
    reg [9:0] result;
  begin
    case (sel)
      2'b00 : begin
        result = inputs[39:30];
      end
      2'b01 : begin
        result = inputs[29:20];
      end
      2'b10 : begin
        result = inputs[19:10];
      end
      2'b11 : begin
        result = inputs[9:0];
      end
      default : begin
        result = inputs[39:30];
      end
    endcase
    MUX_v_10_4_2 = result;
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


  function [0:0] readslicef_2_1_1;
    input [1:0] vector;
    reg [1:0] tmp;
  begin
    tmp = vector >> 1;
    readslicef_2_1_1 = tmp[0:0];
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


  function [0:0] readslicef_8_1_7;
    input [7:0] vector;
    reg [7:0] tmp;
  begin
    tmp = vector >> 7;
    readslicef_8_1_7 = tmp[0:0];
  end
  endfunction


  function [18:0] MUX_v_19_2_2;
    input [37:0] inputs;
    input [0:0] sel;
    reg [18:0] result;
  begin
    case (sel)
      1'b0 : begin
        result = inputs[37:19];
      end
      1'b1 : begin
        result = inputs[18:0];
      end
      default : begin
        result = inputs[37:19];
      end
    endcase
    MUX_v_19_2_2 = result;
  end
  endfunction


  function signed [11:0] conv_s2s_10_12 ;
    input signed [9:0]  vector ;
  begin
    conv_s2s_10_12 = {{2{vector[9]}}, vector};
  end
  endfunction


  function signed [9:0] conv_u2s_9_10 ;
    input [8:0]  vector ;
  begin
    conv_u2s_9_10 = {1'b0, vector};
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


  function signed [11:0] conv_s2s_11_12 ;
    input signed [10:0]  vector ;
  begin
    conv_s2s_11_12 = {vector[10], vector};
  end
  endfunction


  function signed [15:0] conv_s2s_12_16 ;
    input signed [11:0]  vector ;
  begin
    conv_s2s_12_16 = {{4{vector[11]}}, vector};
  end
  endfunction


  function signed [11:0] conv_s2s_24_12 ;
    input signed [23:0]  vector ;
  begin
    conv_s2s_24_12 = vector[11:0];
  end
  endfunction


  function signed [11:0] conv_s2s_2_12 ;
    input signed [1:0]  vector ;
  begin
    conv_s2s_2_12 = {{10{vector[1]}}, vector};
  end
  endfunction


  function signed [15:0] conv_s2s_11_16 ;
    input signed [10:0]  vector ;
  begin
    conv_s2s_11_16 = {{5{vector[10]}}, vector};
  end
  endfunction


  function signed [10:0] conv_s2s_22_11 ;
    input signed [21:0]  vector ;
  begin
    conv_s2s_22_11 = vector[10:0];
  end
  endfunction


  function signed [10:0] conv_s2s_10_11 ;
    input signed [9:0]  vector ;
  begin
    conv_s2s_10_11 = {vector[9], vector};
  end
  endfunction


  function signed [10:0] conv_s2s_2_11 ;
    input signed [1:0]  vector ;
  begin
    conv_s2s_2_11 = {{9{vector[1]}}, vector};
  end
  endfunction


  function  [14:0] conv_s2u_10_15 ;
    input signed [9:0]  vector ;
  begin
    conv_s2u_10_15 = {{5{vector[9]}}, vector};
  end
  endfunction


  function signed [4:0] conv_u2s_3_5 ;
    input [2:0]  vector ;
  begin
    conv_u2s_3_5 = {{2{1'b0}}, vector};
  end
  endfunction


  function signed [4:0] conv_s2s_3_5 ;
    input signed [2:0]  vector ;
  begin
    conv_s2s_3_5 = {{2{vector[2]}}, vector};
  end
  endfunction


  function  [4:0] conv_s2u_4_5 ;
    input signed [3:0]  vector ;
  begin
    conv_s2u_4_5 = {vector[3], vector};
  end
  endfunction


  function  [5:0] conv_u2u_5_6 ;
    input [4:0]  vector ;
  begin
    conv_u2u_5_6 = {1'b0, vector};
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


  function  [4:0] conv_u2u_3_5 ;
    input [2:0]  vector ;
  begin
    conv_u2u_3_5 = {{2{1'b0}}, vector};
  end
  endfunction


  function  [8:0] conv_u2u_18_9 ;
    input [17:0]  vector ;
  begin
    conv_u2u_18_9 = vector[8:0];
  end
  endfunction


  function  [8:0] conv_u2u_3_9 ;
    input [2:0]  vector ;
  begin
    conv_u2u_3_9 = {{6{1'b0}}, vector};
  end
  endfunction


  function  [11:0] conv_u2u_24_12 ;
    input [23:0]  vector ;
  begin
    conv_u2u_24_12 = vector[11:0];
  end
  endfunction


  function signed [11:0] conv_s2s_3_12 ;
    input signed [2:0]  vector ;
  begin
    conv_s2s_3_12 = {{9{vector[2]}}, vector};
  end
  endfunction


  function  [9:0] conv_u2u_20_10 ;
    input [19:0]  vector ;
  begin
    conv_u2u_20_10 = vector[9:0];
  end
  endfunction


  function signed [9:0] conv_s2s_3_10 ;
    input signed [2:0]  vector ;
  begin
    conv_s2s_3_10 = {{7{vector[2]}}, vector};
  end
  endfunction


  function signed [7:0] conv_u2s_7_8 ;
    input [6:0]  vector ;
  begin
    conv_u2s_7_8 = {1'b0, vector};
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



