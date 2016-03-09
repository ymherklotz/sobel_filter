
//------> ./rtl_mgc_ioport.v 
//------------------------------------------------------------------
//                M G C _ I O P O R T _ C O M P S
//------------------------------------------------------------------

//------------------------------------------------------------------
//                       M O D U L E S
//------------------------------------------------------------------

//------------------------------------------------------------------
//-- INPUT ENTITIES
//------------------------------------------------------------------

module mgc_in_wire (d, z);

  parameter integer rscid = 1;
  parameter integer width = 8;

  output [width-1:0] d;
  input  [width-1:0] z;

  wire   [width-1:0] d;

  assign d = z;

endmodule

//------------------------------------------------------------------

module mgc_in_wire_en (ld, d, lz, z);

  parameter integer rscid = 1;
  parameter integer width = 8;

  input              ld;
  output [width-1:0] d;
  output             lz;
  input  [width-1:0] z;

  wire   [width-1:0] d;
  wire               lz;

  assign d = z;
  assign lz = ld;

endmodule

//------------------------------------------------------------------

module mgc_in_wire_wait (ld, vd, d, lz, vz, z);

  parameter integer rscid = 1;
  parameter integer width = 8;

  input              ld;
  output             vd;
  output [width-1:0] d;
  output             lz;
  input              vz;
  input  [width-1:0] z;

  wire               vd;
  wire   [width-1:0] d;
  wire               lz;

  assign d = z;
  assign lz = ld;
  assign vd = vz;

endmodule
//------------------------------------------------------------------

module mgc_chan_in (ld, vd, d, lz, vz, z, size, req_size, sizez, sizelz);

  parameter integer rscid = 1;
  parameter integer width = 8;
  parameter integer sz_width = 8;

  input              ld;
  output             vd;
  output [width-1:0] d;
  output             lz;
  input              vz;
  input  [width-1:0] z;
  output [sz_width-1:0] size;
  input              req_size;
  input  [sz_width-1:0] sizez;
  output             sizelz;


  wire               vd;
  wire   [width-1:0] d;
  wire               lz;
  wire   [sz_width-1:0] size;
  wire               sizelz;

  assign d = z;
  assign lz = ld;
  assign vd = vz;
  assign size = sizez;
  assign sizelz = req_size;

endmodule


//------------------------------------------------------------------
//-- OUTPUT ENTITIES
//------------------------------------------------------------------

module mgc_out_stdreg (d, z);

  parameter integer rscid = 1;
  parameter integer width = 8;

  input    [width-1:0] d;
  output   [width-1:0] z;

  wire     [width-1:0] z;

  assign z = d;

endmodule

//------------------------------------------------------------------

module mgc_out_stdreg_en (ld, d, lz, z);

  parameter integer rscid = 1;
  parameter integer width = 8;

  input              ld;
  input  [width-1:0] d;
  output             lz;
  output [width-1:0] z;

  wire               lz;
  wire   [width-1:0] z;

  assign z = d;
  assign lz = ld;

endmodule

//------------------------------------------------------------------

module mgc_out_stdreg_wait (ld, vd, d, lz, vz, z);

  parameter integer rscid = 1;
  parameter integer width = 8;

  input              ld;
  output             vd;
  input  [width-1:0] d;
  output             lz;
  input              vz;
  output [width-1:0] z;

  wire               vd;
  wire               lz;
  wire   [width-1:0] z;

  assign z = d;
  assign lz = ld;
  assign vd = vz;

endmodule

//------------------------------------------------------------------

module mgc_out_prereg_en (ld, d, lz, z);

    parameter integer rscid = 1;
    parameter integer width = 8;

    input              ld;
    input  [width-1:0] d;
    output             lz;
    output [width-1:0] z;

    wire               lz;
    wire   [width-1:0] z;

    assign z = d;
    assign lz = ld;

endmodule

//------------------------------------------------------------------
//-- INOUT ENTITIES
//------------------------------------------------------------------

module mgc_inout_stdreg_en (ldin, din, ldout, dout, lzin, lzout, z);

    parameter integer rscid = 1;
    parameter integer width = 8;

    input              ldin;
    output [width-1:0] din;
    input              ldout;
    input  [width-1:0] dout;
    output             lzin;
    output             lzout;
    inout  [width-1:0] z;

    wire   [width-1:0] din;
    wire               lzin;
    wire               lzout;
    wire   [width-1:0] z;

    assign lzin = ldin;
    assign din = ldin ? z : {width{1'bz}};
    assign lzout = ldout;
    assign z = ldout ? dout : {width{1'bz}};

endmodule

//------------------------------------------------------------------
module hid_tribuf( I_SIG, ENABLE, O_SIG);
  parameter integer width = 8;

  input [width-1:0] I_SIG;
  input ENABLE;
  inout [width-1:0] O_SIG;

  assign O_SIG = (ENABLE) ? I_SIG : { width{1'bz}};

endmodule
//------------------------------------------------------------------

module mgc_inout_stdreg_wait (ldin, vdin, din, ldout, vdout, dout, lzin, vzin, lzout, vzout, z);

    parameter integer rscid = 1;
    parameter integer width = 8;

    input              ldin;
    output             vdin;
    output [width-1:0] din;
    input              ldout;
    output             vdout;
    input  [width-1:0] dout;
    output             lzin;
    input              vzin;
    output             lzout;
    input              vzout;
    inout  [width-1:0] z;

    wire               vdin;
    wire   [width-1:0] din;
    wire               vdout;
    wire               lzin;
    wire               lzout;
    wire   [width-1:0] z;
    wire   ldout_and_vzout;

    assign lzin = ldin;
    assign vdin = vzin;
    assign din = ldin ? z : {width{1'bz}};
    assign lzout = ldout;
    assign vdout = vzout ;
    assign ldout_and_vzout = ldout && vzout ;

    hid_tribuf #(width) tb( .I_SIG(dout),
                            .ENABLE(ldout_and_vzout),
                            .O_SIG(z) );

endmodule

//------------------------------------------------------------------

module mgc_inout_buf_wait (clk, en, arst, srst, ldin, vdin, din, ldout, vdout, dout, lzin, vzin, lzout, vzout, z);

    parameter integer rscid   = 0; // resource ID
    parameter integer width   = 8; // fifo width
    parameter         ph_clk  =  1'b1; // clock polarity 1=rising edge, 0=falling edge
    parameter         ph_en   =  1'b1; // clock enable polarity
    parameter         ph_arst =  1'b1; // async reset polarity
    parameter         ph_srst =  1'b1; // sync reset polarity

    input              clk;
    input              en;
    input              arst;
    input              srst;
    input              ldin;
    output             vdin;
    output [width-1:0] din;
    input              ldout;
    output             vdout;
    input  [width-1:0] dout;
    output             lzin;
    input              vzin;
    output             lzout;
    input              vzout;
    inout  [width-1:0] z;

    wire               lzout_buf;
    wire               vzout_buf;
    wire   [width-1:0] z_buf;
    wire               vdin;
    wire   [width-1:0] din;
    wire               vdout;
    wire               lzin;
    wire               lzout;
    wire   [width-1:0] z;

    assign lzin = ldin;
    assign vdin = vzin;
    assign din = ldin ? z : {width{1'bz}};
    assign lzout = lzout_buf & ~ldin;
    assign vzout_buf = vzout & ~ldin;
    hid_tribuf #(width) tb( .I_SIG(z_buf),
                            .ENABLE((lzout_buf && (!ldin) && vzout) ),
                            .O_SIG(z)  );

    mgc_out_buf_wait
    #(
        .rscid   (rscid),
        .width   (width),
        .ph_clk  (ph_clk),
        .ph_en   (ph_en),
        .ph_arst (ph_arst),
        .ph_srst (ph_srst)
    )
    BUFF
    (
        .clk     (clk),
        .en      (en),
        .arst    (arst),
        .srst    (srst),
        .ld      (ldout),
        .vd      (vdout),
        .d       (dout),
        .lz      (lzout_buf),
        .vz      (vzout_buf),
        .z       (z_buf)
    );


endmodule

module mgc_inout_fifo_wait (clk, en, arst, srst, ldin, vdin, din, ldout, vdout, dout, lzin, vzin, lzout, vzout, z);

    parameter integer rscid   = 0; // resource ID
    parameter integer width   = 8; // fifo width
    parameter integer fifo_sz = 8; // fifo depth
    parameter         ph_clk  = 1'b1;  // clock polarity 1=rising edge, 0=falling edge
    parameter         ph_en   = 1'b1;  // clock enable polarity
    parameter         ph_arst = 1'b1;  // async reset polarity
    parameter         ph_srst = 1'b1;  // sync reset polarity
    parameter integer ph_log2 = 3;     // log2(fifo_sz)
    parameter integer pwropt  = 0;     // pwropt

    input              clk;
    input              en;
    input              arst;
    input              srst;
    input              ldin;
    output             vdin;
    output [width-1:0] din;
    input              ldout;
    output             vdout;
    input  [width-1:0] dout;
    output             lzin;
    input              vzin;
    output             lzout;
    input              vzout;
    inout  [width-1:0] z;

    wire               lzout_buf;
    wire               vzout_buf;
    wire   [width-1:0] z_buf;
    wire               comb;
    wire               vdin;
    wire   [width-1:0] din;
    wire               vdout;
    wire               lzin;
    wire               lzout;
    wire   [width-1:0] z;

    assign lzin = ldin;
    assign vdin = vzin;
    assign din = ldin ? z : {width{1'bz}};
    assign lzout = lzout_buf & ~ldin;
    assign vzout_buf = vzout & ~ldin;
    assign comb = (lzout_buf && (!ldin) && vzout);

    hid_tribuf #(width) tb2( .I_SIG(z_buf), .ENABLE(comb), .O_SIG(z)  );

    mgc_out_fifo_wait
    #(
        .rscid   (rscid),
        .width   (width),
        .fifo_sz (fifo_sz),
        .ph_clk  (ph_clk),
        .ph_en   (ph_en),
        .ph_arst (ph_arst),
        .ph_srst (ph_srst),
        .ph_log2 (ph_log2),
        .pwropt  (pwropt)
    )
    FIFO
    (
        .clk   (clk),
        .en      (en),
        .arst    (arst),
        .srst    (srst),
        .ld      (ldout),
        .vd      (vdout),
        .d       (dout),
        .lz      (lzout_buf),
        .vz      (vzout_buf),
        .z       (z_buf)
    );

endmodule

//------------------------------------------------------------------
//-- I/O SYNCHRONIZATION ENTITIES
//------------------------------------------------------------------

module mgc_io_sync (ld, lz);

    input  ld;
    output lz;

    assign lz = ld;

endmodule

module mgc_bsync_rdy (rd, rz);

    parameter integer rscid   = 0; // resource ID
    parameter ready = 1;
    parameter valid = 0;

    input  rd;
    output rz;

    wire   rz;

    assign rz = rd;

endmodule

module mgc_bsync_vld (vd, vz);

    parameter integer rscid   = 0; // resource ID
    parameter ready = 0;
    parameter valid = 1;

    output vd;
    input  vz;

    wire   vd;

    assign vd = vz;

endmodule

module mgc_bsync_rv (rd, vd, rz, vz);

    parameter integer rscid   = 0; // resource ID
    parameter ready = 1;
    parameter valid = 1;

    input  rd;
    output vd;
    output rz;
    input  vz;

    wire   vd;
    wire   rz;

    assign rz = rd;
    assign vd = vz;

endmodule

//------------------------------------------------------------------

module mgc_sync (ldin, vdin, ldout, vdout);

  input  ldin;
  output vdin;
  input  ldout;
  output vdout;

  wire   vdin;
  wire   vdout;

  assign vdin = ldout;
  assign vdout = ldin;

endmodule

///////////////////////////////////////////////////////////////////////////////
// dummy function used to preserve funccalls for modulario
// it looks like a memory read to the caller
///////////////////////////////////////////////////////////////////////////////
module funccall_inout (d, ad, bd, z, az, bz);

  parameter integer ram_id = 1;
  parameter integer width = 8;
  parameter integer addr_width = 8;

  output [width-1:0]       d;
  input  [addr_width-1:0]  ad;
  input                    bd;
  input  [width-1:0]       z;
  output [addr_width-1:0]  az;
  output                   bz;

  wire   [width-1:0]       d;
  wire   [addr_width-1:0]  az;
  wire                     bz;

  assign d  = z;
  assign az = ad;
  assign bz = bd;

endmodule


///////////////////////////////////////////////////////////////////////////////
// inlinable modular io not otherwise found in mgc_ioport
///////////////////////////////////////////////////////////////////////////////

module modulario_en_in (vd, d, vz, z);

  parameter integer rscid = 1;
  parameter integer width = 8;

  output             vd;
  output [width-1:0] d;
  input              vz;
  input  [width-1:0] z;

  wire   [width-1:0] d;
  wire               vd;

  assign d = z;
  assign vd = vz;

endmodule

//------> ./rtl_mgc_ioport_v2001.v 
//------------------------------------------------------------------

module mgc_out_reg_pos (clk, en, arst, srst, ld, d, lz, z);

    parameter integer rscid   = 1;
    parameter integer width   = 8;
    parameter         ph_en   =  1'b1;
    parameter         ph_arst =  1'b1;
    parameter         ph_srst =  1'b1;

    input              clk;
    input              en;
    input              arst;
    input              srst;
    input              ld;
    input  [width-1:0] d;
    output             lz;
    output [width-1:0] z;

    reg                lz;
    reg    [width-1:0] z;

    generate
    if (ph_arst == 1'b0)
    begin: NEG_ARST
        always @(posedge clk or negedge arst)
        if (arst == 1'b0)
        begin: B1
            lz <= 1'b0;
            z  <= {width{1'b0}};
        end
        else if (srst == ph_srst)
        begin: B2
            lz <= 1'b0;
            z  <= {width{1'b0}};
        end
        else if (en == ph_en)
        begin: B3
            lz <= ld;
            z  <= (ld) ? d : z;
        end
    end
    else
    begin: POS_ARST
        always @(posedge clk or posedge arst)
        if (arst == 1'b1)
        begin: B1
            lz <= 1'b0;
            z  <= {width{1'b0}};
        end
        else if (srst == ph_srst)
        begin: B2
            lz <= 1'b0;
            z  <= {width{1'b0}};
        end
        else if (en == ph_en)
        begin: B3
            lz <= ld;
            z  <= (ld) ? d : z;
        end
    end
    endgenerate

endmodule

//------------------------------------------------------------------

module mgc_out_reg_neg (clk, en, arst, srst, ld, d, lz, z);

    parameter integer rscid   = 1;
    parameter integer width   = 8;
    parameter         ph_en   =  1'b1;
    parameter         ph_arst =  1'b1;
    parameter         ph_srst =  1'b1;

    input              clk;
    input              en;
    input              arst;
    input              srst;
    input              ld;
    input  [width-1:0] d;
    output             lz;
    output [width-1:0] z;

    reg                lz;
    reg    [width-1:0] z;

    generate
    if (ph_arst == 1'b0)
    begin: NEG_ARST
        always @(negedge clk or negedge arst)
        if (arst == 1'b0)
        begin: B1
            lz <= 1'b0;
            z  <= {width{1'b0}};
        end
        else if (srst == ph_srst)
        begin: B2
            lz <= 1'b0;
            z  <= {width{1'b0}};
        end
        else if (en == ph_en)
        begin: B3
            lz <= ld;
            z  <= (ld) ? d : z;
        end
    end
    else
    begin: POS_ARST
        always @(negedge clk or posedge arst)
        if (arst == 1'b1)
        begin: B1
            lz <= 1'b0;
            z  <= {width{1'b0}};
        end
        else if (srst == ph_srst)
        begin: B2
            lz <= 1'b0;
            z  <= {width{1'b0}};
        end
        else if (en == ph_en)
        begin: B3
            lz <= ld;
            z  <= (ld) ? d : z;
        end
    end
    endgenerate

endmodule

//------------------------------------------------------------------

module mgc_out_reg (clk, en, arst, srst, ld, d, lz, z); // Not Supported

    parameter integer rscid   = 1;
    parameter integer width   = 8;
    parameter         ph_clk  =  1'b1;
    parameter         ph_en   =  1'b1;
    parameter         ph_arst =  1'b1;
    parameter         ph_srst =  1'b1;

    input              clk;
    input              en;
    input              arst;
    input              srst;
    input              ld;
    input  [width-1:0] d;
    output             lz;
    output [width-1:0] z;


    generate
    if (ph_clk == 1'b0)
    begin: NEG_EDGE

        mgc_out_reg_neg
        #(
            .rscid   (rscid),
            .width   (width),
            .ph_en   (ph_en),
            .ph_arst (ph_arst),
            .ph_srst (ph_srst)
        )
        mgc_out_reg_neg_inst
        (
            .clk     (clk),
            .en      (en),
            .arst    (arst),
            .srst    (srst),
            .ld      (ld),
            .d       (d),
            .lz      (lz),
            .z       (z)
        );

    end
    else
    begin: POS_EDGE

        mgc_out_reg_pos
        #(
            .rscid   (rscid),
            .width   (width),
            .ph_en   (ph_en),
            .ph_arst (ph_arst),
            .ph_srst (ph_srst)
        )
        mgc_out_reg_pos_inst
        (
            .clk     (clk),
            .en      (en),
            .arst    (arst),
            .srst    (srst),
            .ld      (ld),
            .d       (d),
            .lz      (lz),
            .z       (z)
        );

    end
    endgenerate

endmodule




//------------------------------------------------------------------

module mgc_out_buf_wait (clk, en, arst, srst, ld, vd, d, vz, lz, z); // Not supported

    parameter integer rscid   = 1;
    parameter integer width   = 8;
    parameter         ph_clk  =  1'b1;
    parameter         ph_en   =  1'b1;
    parameter         ph_arst =  1'b1;
    parameter         ph_srst =  1'b1;

    input              clk;
    input              en;
    input              arst;
    input              srst;
    input              ld;
    output             vd;
    input  [width-1:0] d;
    output             lz;
    input              vz;
    output [width-1:0] z;

    wire               filled;
    wire               filled_next;
    wire   [width-1:0] abuf;
    wire               lbuf;


    assign filled_next = (filled & (~vz)) | (filled & ld) | (ld & (~vz));

    assign lbuf = ld & ~(filled ^ vz);

    assign vd = vz | ~filled;

    assign lz = ld | filled;

    assign z = (filled) ? abuf : d;

    wire dummy;
    wire dummy_bufreg_lz;

    // Output registers:
    mgc_out_reg
    #(
        .rscid   (rscid),
        .width   (1'b1),
        .ph_clk  (ph_clk),
        .ph_en   (ph_en),
        .ph_arst (ph_arst),
        .ph_srst (ph_srst)
    )
    STATREG
    (
        .clk     (clk),
        .en      (en),
        .arst    (arst),
        .srst    (srst),
        .ld      (filled_next),
        .d       (1'b0),       // input d is unused
        .lz      (filled),
        .z       (dummy)            // output z is unused
    );

    mgc_out_reg
    #(
        .rscid   (rscid),
        .width   (width),
        .ph_clk  (ph_clk),
        .ph_en   (ph_en),
        .ph_arst (ph_arst),
        .ph_srst (ph_srst)
    )
    BUFREG
    (
        .clk     (clk),
        .en      (en),
        .arst    (arst),
        .srst    (srst),
        .ld      (lbuf),
        .d       (d),
        .lz      (dummy_bufreg_lz),
        .z       (abuf)
    );

endmodule

//------------------------------------------------------------------

module mgc_out_fifo_wait (clk, en, arst, srst, ld, vd, d, lz, vz,  z);

    parameter integer rscid   = 0; // resource ID
    parameter integer width   = 8; // fifo width
    parameter integer fifo_sz = 8; // fifo depth
    parameter         ph_clk  = 1'b1; // clock polarity 1=rising edge, 0=falling edge
    parameter         ph_en   = 1'b1; // clock enable polarity
    parameter         ph_arst = 1'b1; // async reset polarity
    parameter         ph_srst = 1'b1; // sync reset polarity
    parameter integer ph_log2 = 3; // log2(fifo_sz)
    parameter integer pwropt  = 0; // pwropt


    input                 clk;
    input                 en;
    input                 arst;
    input                 srst;
    input                 ld;    // load data
    output                vd;    // fifo full active low
    input     [width-1:0] d;
    output                lz;    // fifo ready to send
    input                 vz;    // dest ready for data
    output    [width-1:0] z;

    wire    [31:0]      size;


      // Output registers:
 mgc_out_fifo_wait_core#(
        .rscid   (rscid),
        .width   (width),
        .sz_width (32),
        .fifo_sz (fifo_sz),
        .ph_clk  (ph_clk),
        .ph_en   (ph_en),
        .ph_arst (ph_arst),
        .ph_srst (ph_srst),
        .ph_log2 (ph_log2),
        .pwropt  (pwropt)
        ) CORE (
        .clk (clk),
        .en (en),
        .arst (arst),
        .srst (srst),
        .ld (ld),
        .vd (vd),
        .d (d),
        .lz (lz),
        .vz (vz),
        .z (z),
        .size (size)
        );

endmodule



module mgc_out_fifo_wait_core (clk, en, arst, srst, ld, vd, d, lz, vz,  z, size);

    parameter integer rscid   = 0; // resource ID
    parameter integer width   = 8; // fifo width
    parameter integer sz_width = 8; // size of port for elements in fifo
    parameter integer fifo_sz = 8; // fifo depth
    parameter         ph_clk  =  1'b1; // clock polarity 1=rising edge, 0=falling edge
    parameter         ph_en   =  1'b1; // clock enable polarity
    parameter         ph_arst =  1'b1; // async reset polarity
    parameter         ph_srst =  1'b1; // sync reset polarity
    parameter integer ph_log2 = 3; // log2(fifo_sz)
    parameter integer pwropt  = 0; // pwropt

   localparam integer  fifo_b = width * fifo_sz;

    input                 clk;
    input                 en;
    input                 arst;
    input                 srst;
    input                 ld;    // load data
    output                vd;    // fifo full active low
    input     [width-1:0] d;
    output                lz;    // fifo ready to send
    input                 vz;    // dest ready for data
    output    [width-1:0] z;
    output    [sz_width-1:0]      size;

    reg      [( (fifo_sz > 0) ? fifo_sz : 1)-1:0] stat_pre;
    wire     [( (fifo_sz > 0) ? fifo_sz : 1)-1:0] stat;
    reg      [( (fifo_b > 0) ? fifo_b : 1)-1:0] buff_pre;
    wire     [( (fifo_b > 0) ? fifo_b : 1)-1:0] buff;
    reg      [( (fifo_sz > 0) ? fifo_sz : 1)-1:0] en_l;
    reg      [(((fifo_sz > 0) ? fifo_sz : 1)-1)/8:0] en_l_s;

    reg       [width-1:0] buff_nxt;

    reg                   stat_nxt;
    reg                   stat_before;
    reg                   stat_after;
    reg                   en_l_var;

    integer               i;
    genvar                eni;

    wire [32:0]           size_t;
    reg [31:0]            count;
    reg [31:0]            count_t;
    reg [32:0]            n_elem;
// pragma translate_off
    reg [31:0]            peak;
// pragma translate_on

    wire [( (fifo_sz > 0) ? fifo_sz : 1)-1:0] dummy_statreg_lz;
    wire [( (fifo_b > 0) ? fifo_b : 1)-1:0] dummy_bufreg_lz;

    generate
    if ( fifo_sz > 0 )
    begin: FIFO_REG
      assign vd = vz | ~stat[0];
      assign lz = ld | stat[fifo_sz-1];
      assign size_t = (count - (vz && stat[fifo_sz-1])) + ld;
      assign size = size_t[sz_width-1:0];
      assign z = (stat[fifo_sz-1]) ? buff[fifo_b-1:width*(fifo_sz-1)] : d;

      always @(*)
      begin: FIFOPROC
        n_elem = 33'b0;
        for (i = fifo_sz-1; i >= 0; i = i - 1)
        begin
          if (i != 0)
            stat_before = stat[i-1];
          else
            stat_before = 1'b0;

          if (i != (fifo_sz-1))
            stat_after = stat[i+1];
          else
            stat_after = 1'b1;

          stat_nxt = stat_after &
                    (stat_before | (stat[i] & (~vz)) | (stat[i] & ld) | (ld & (~vz)));

          stat_pre[i] = stat_nxt;
          en_l_var = 1'b1;
          if (!stat_nxt)
            begin
              buff_nxt = {width{1'b0}};
              en_l_var = 1'b0;
            end
          else if (vz && stat_before)
            buff_nxt[0+:width] = buff[width*(i-1)+:width];
          else if (ld && !((vz && stat_before) || ((!vz) && stat[i])))
            buff_nxt = d;
          else
            begin
              if (pwropt == 0)
                buff_nxt[0+:width] = buff[width*i+:width];
              else
                buff_nxt = {width{1'b0}};
              en_l_var = 1'b0;
            end

          if (ph_en != 0)
            en_l[i] = en & en_l_var;
          else
            en_l[i] = en | ~en_l_var;

          buff_pre[width*i+:width] = buff_nxt[0+:width];

          if ((stat_after == 1'b1) && (stat[i] == 1'b0))
            n_elem = ($unsigned(fifo_sz) - 1) - i;
        end

        if (ph_en != 0)
          en_l_s[(((fifo_sz > 0) ? fifo_sz : 1)-1)/8] = 1'b1;
        else
          en_l_s[(((fifo_sz > 0) ? fifo_sz : 1)-1)/8] = 1'b0;

        for (i = fifo_sz-1; i >= 7; i = i - 1)
        begin
          if ((i%'d2) == 0)
          begin
            if (ph_en != 0)
              en_l_s[(i/8)-1] = en & (stat[i]|stat_pre[i-1]);
            else
              en_l_s[(i/8)-1] = en | ~(stat[i]|stat_pre[i-1]);
          end
        end

        if ( stat[fifo_sz-1] == 1'b0 )
          count_t = 32'b0;
        else if ( stat[0] == 1'b1 )
          count_t = { {(32-ph_log2){1'b0}}, fifo_sz};
        else
          count_t = n_elem[31:0];
        count = count_t;
// pragma translate_off
        if ( peak < count )
          peak = count;
// pragma translate_on
      end

      if (pwropt == 0)
      begin: NOCGFIFO
        // Output registers:
        mgc_out_reg
        #(
            .rscid   (rscid),
            .width   (fifo_sz),
            .ph_clk  (ph_clk),
            .ph_en   (ph_en),
            .ph_arst (ph_arst),
            .ph_srst (ph_srst)
        )
        STATREG
        (
            .clk     (clk),
            .en      (en),
            .arst    (arst),
            .srst    (srst),
            .ld      (1'b1),
            .d       (stat_pre),
            .lz      (dummy_statreg_lz[0]),
            .z       (stat)
        );
        mgc_out_reg
        #(
            .rscid   (rscid),
            .width   (fifo_b),
            .ph_clk  (ph_clk),
            .ph_en   (ph_en),
            .ph_arst (ph_arst),
            .ph_srst (ph_srst)
        )
        BUFREG
        (
            .clk     (clk),
            .en      (en),
            .arst    (arst),
            .srst    (srst),
            .ld      (1'b1),
            .d       (buff_pre),
            .lz      (dummy_bufreg_lz[0]),
            .z       (buff)
        );
      end
      else
      begin: CGFIFO
        // Output registers:
        if ( pwropt > 1)
        begin: CGSTATFIFO2
          for (eni = fifo_sz-1; eni >= 0; eni = eni - 1)
          begin: pwroptGEN1
            mgc_out_reg
            #(
              .rscid   (rscid),
              .width   (1),
              .ph_clk  (ph_clk),
              .ph_en   (ph_en),
              .ph_arst (ph_arst),
              .ph_srst (ph_srst)
            )
            STATREG
            (
              .clk     (clk),
              .en      (en_l_s[eni/8]),
              .arst    (arst),
              .srst    (srst),
              .ld      (1'b1),
              .d       (stat_pre[eni]),
              .lz      (dummy_statreg_lz[eni]),
              .z       (stat[eni])
            );
          end
        end
        else
        begin: CGSTATFIFO
          mgc_out_reg
          #(
            .rscid   (rscid),
            .width   (fifo_sz),
            .ph_clk  (ph_clk),
            .ph_en   (ph_en),
            .ph_arst (ph_arst),
            .ph_srst (ph_srst)
          )
          STATREG
          (
            .clk     (clk),
            .en      (en),
            .arst    (arst),
            .srst    (srst),
            .ld      (1'b1),
            .d       (stat_pre),
            .lz      (dummy_statreg_lz[0]),
            .z       (stat)
          );
        end
        for (eni = fifo_sz-1; eni >= 0; eni = eni - 1)
        begin: pwroptGEN2
          mgc_out_reg
          #(
            .rscid   (rscid),
            .width   (width),
            .ph_clk  (ph_clk),
            .ph_en   (ph_en),
            .ph_arst (ph_arst),
            .ph_srst (ph_srst)
          )
          BUFREG
          (
            .clk     (clk),
            .en      (en_l[eni]),
            .arst    (arst),
            .srst    (srst),
            .ld      (1'b1),
            .d       (buff_pre[width*eni+:width]),
            .lz      (dummy_bufreg_lz[eni]),
            .z       (buff[width*eni+:width])
          );
        end
      end
    end
    else
    begin: FEED_THRU
      assign vd = vz;
      assign lz = ld;
      assign z = d;
      assign size = ld && !vz;
    end
    endgenerate

endmodule

//------------------------------------------------------------------
//-- PIPE ENTITIES
//------------------------------------------------------------------
/*
 *
 *             _______________________________________________
 * WRITER    |                                               |          READER
 *           |           MGC_PIPE                            |
 *           |           __________________________          |
 *        --<| vdout  --<| vd ---------------  vz<|-----ldin<|---
 *           |           |      FIFO              |          |
 *        ---|>ldout  ---|>ld ---------------- lz |> ---vdin |>--
 *        ---|>dout -----|>d  ---------------- dz |> ----din |>--
 *           |           |________________________|          |
 *           |_______________________________________________|
 */
// two clock pipe
module mgc_pipe (clk, en, arst, srst, ldin, vdin, din, ldout, vdout, dout, size, req_size);

    parameter integer rscid   = 0; // resource ID
    parameter integer width   = 8; // fifo width
    parameter integer sz_width = 8; // width of size of elements in fifo
    parameter integer fifo_sz = 8; // fifo depth
    parameter integer log2_sz = 3; // log2(fifo_sz)
    parameter         ph_clk  = 1'b1;  // clock polarity 1=rising edge, 0=falling edge
    parameter         ph_en   = 1'b1;  // clock enable polarity
    parameter         ph_arst = 1'b1;  // async reset polarity
    parameter         ph_srst = 1'b1;  // sync reset polarity
    parameter integer pwropt  = 0; // pwropt

    input              clk;
    input              en;
    input              arst;
    input              srst;
    input              ldin;
    output             vdin;
    output [width-1:0] din;
    input              ldout;
    output             vdout;
    input  [width-1:0] dout;
    output [sz_width-1:0]      size;
    input              req_size;


    mgc_out_fifo_wait_core
    #(
        .rscid    (rscid),
        .width    (width),
        .sz_width (sz_width),
        .fifo_sz  (fifo_sz),
        .ph_clk   (ph_clk),
        .ph_en    (ph_en),
        .ph_arst  (ph_arst),
        .ph_srst  (ph_srst),
        .ph_log2  (log2_sz),
        .pwropt   (pwropt)
    )
    FIFO
    (
        .clk     (clk),
        .en      (en),
        .arst    (arst),
        .srst    (srst),
        .ld      (ldout),
        .vd      (vdout),
        .d       (dout),
        .lz      (vdin),
        .vz      (ldin),
        .z       (din),
        .size    (size)
    );

endmodule


//------> ./rtl.v 
// ----------------------------------------------------------------------
//  HLS HDL:        Verilog Netlister
//  HLS Version:    2011a.126 Production Release
//  HLS Date:       Wed Aug  8 00:52:07 PDT 2012
// 
//  Generated by:   mg3115@EEWS104A-013
//  Generated date: Tue Mar 08 14:22:40 2016
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
  wire and_dcpl;
  reg [18:0] FRAME_p_1_lpi_1;
  reg [89:0] regs_regs_1_sva;
  reg [89:0] regs_regs_0_sva;
  reg exit_FRAME_1_sva;
  reg [89:0] regs_regs_2_lpi_1_dfm;
  reg [15:0] r_0_sva_1;
  reg [15:0] g_0_sva_1;
  reg [15:0] b_0_sva_1;
  reg [15:0] r_2_sva_1;
  reg [15:0] g_2_sva_1;
  reg [15:0] b_2_sva_1;
  reg [1:0] i_6_sva_1;
  reg exit_FRAME_lpi_1_dfm_1;
  reg [8:0] FRAME_mul_2_itm_1;
  wire [17:0] nl_FRAME_mul_2_itm_1;
  reg [5:0] FRAME_slc_green_10_itm_1;
  reg [4:0] FRAME_acc_25_itm_1;
  wire [6:0] nl_FRAME_acc_25_itm_1;
  reg [11:0] FRAME_mul_3_itm_1;
  wire [23:0] nl_FRAME_mul_3_itm_1;
  reg [8:0] FRAME_mul_itm_1;
  wire [17:0] nl_FRAME_mul_itm_1;
  reg [5:0] FRAME_slc_red_10_itm_1;
  reg [4:0] FRAME_acc_35_itm_1;
  wire [6:0] nl_FRAME_acc_35_itm_1;
  reg [9:0] FRAME_mul_1_itm_1;
  wire [19:0] nl_FRAME_mul_1_itm_1;
  reg [8:0] FRAME_mul_4_itm_1;
  wire [17:0] nl_FRAME_mul_4_itm_1;
  reg [5:0] FRAME_slc_blue_10_itm_1;
  reg [4:0] FRAME_acc_40_itm_1;
  wire [6:0] nl_FRAME_acc_40_itm_1;
  reg [11:0] FRAME_mul_5_itm_1;
  wire [23:0] nl_FRAME_mul_5_itm_1;
  reg exit_FRAME_for_sva_1_st_1;
  reg main_stage_0_2;
  wire [18:0] FRAME_p_1_sva_1;
  wire [19:0] nl_FRAME_p_1_sva_1;
  wire [1:0] FRAME_for_acc_itm;
  wire [2:0] nl_FRAME_for_acc_itm;
  wire [11:0] FRAME_acc_3_psp_sva;
  wire [12:0] nl_FRAME_acc_3_psp_sva;
  wire [1:0] i_6_sva_2;
  wire [2:0] nl_i_6_sva_2;
  wire [1:0] i_6_lpi_1_dfm;
  wire exit_FRAME_for_lpi_1_dfm;
  wire [89:0] regs_regs_2_lpi_1_dfm_mx0;
  wire [89:0] regs_regs_1_sva_dfm_mx0;
  wire [89:0] regs_regs_0_sva_dfm_mx0;
  wire exit_FRAME_lpi_1_dfm_1_mx0;
  wire [18:0] FRAME_p_1_lpi_1_dfm;
  wire [15:0] blue_2_sva;
  wire [16:0] nl_blue_2_sva;
  wire [5:0] FRAME_acc_11_psp_sva;
  wire [6:0] nl_FRAME_acc_11_psp_sva;
  wire [15:0] red_2_sva;
  wire [16:0] nl_red_2_sva;
  wire [5:0] FRAME_acc_7_psp_sva;
  wire [6:0] nl_FRAME_acc_7_psp_sva;
  wire [4:0] FRAME_acc_28_sdt;
  wire [5:0] nl_FRAME_acc_28_sdt;
  wire [15:0] green_2_sva;
  wire [16:0] nl_green_2_sva;
  wire [5:0] FRAME_acc_9_psp_sva;
  wire [6:0] nl_FRAME_acc_9_psp_sva;
  wire [4:0] FRAME_acc_18_sdt;
  wire [5:0] nl_FRAME_acc_18_sdt;
  wire [4:0] FRAME_acc_13_sdt;
  wire [5:0] nl_FRAME_acc_13_sdt;
  wire [15:0] b_2_sva_3;
  wire [16:0] nl_b_2_sva_3;
  wire [15:0] b_0_sva_3;
  wire [16:0] nl_b_0_sva_3;
  wire [15:0] g_2_sva_3;
  wire [16:0] nl_g_2_sva_3;
  wire [15:0] g_0_sva_3;
  wire [16:0] nl_g_0_sva_3;
  wire [15:0] r_2_sva_3;
  wire [16:0] nl_r_2_sva_3;
  wire [15:0] r_0_sva_3;
  wire [16:0] nl_r_0_sva_3;
  wire FRAME_for_nor_cse;
  wire [4:0] FRAME_acc_32_itm;
  wire [5:0] nl_FRAME_acc_32_itm;
  wire [4:0] FRAME_acc_17_itm;
  wire [5:0] nl_FRAME_acc_17_itm;
  wire [4:0] FRAME_acc_22_itm;
  wire [5:0] nl_FRAME_acc_22_itm;
  wire FRAME_for_or_4_itm;
  wire FRAME_for_or_3_itm;

  wire[15:0] FRAME_for_mux_10_nl;
  wire[9:0] regs_operator_17_mux_nl;
  wire[15:0] FRAME_for_mux_9_nl;
  wire[9:0] regs_operator_11_mux_nl;
  wire[15:0] FRAME_for_mux_8_nl;
  wire[9:0] regs_operator_16_mux_nl;
  wire[15:0] FRAME_for_mux_7_nl;
  wire[9:0] regs_operator_10_mux_nl;
  wire[15:0] FRAME_for_mux_6_nl;
  wire[9:0] regs_operator_15_mux_nl;
  wire[15:0] FRAME_for_mux_5_nl;
  wire[9:0] regs_operator_9_mux_nl;

  // Interconnect Declarations for Component Instantiations 
  assign nl_FRAME_acc_3_psp_sva = conv_s2s_10_12(conv_u2s_9_10(FRAME_mul_2_itm_1)
      + conv_s2s_8_10(conv_u2s_6_8(FRAME_slc_green_10_itm_1) + conv_s2s_5_8(FRAME_acc_25_itm_1)))
      + FRAME_mul_3_itm_1;
  assign FRAME_acc_3_psp_sva = nl_FRAME_acc_3_psp_sva[11:0];
  assign nl_FRAME_for_acc_itm = i_6_sva_2 + 2'b1;
  assign FRAME_for_acc_itm = nl_FRAME_for_acc_itm[1:0];
  assign nl_i_6_sva_2 = i_6_lpi_1_dfm + 2'b1;
  assign i_6_sva_2 = nl_i_6_sva_2[1:0];
  assign i_6_lpi_1_dfm = i_6_sva_1 & (signext_2_1(~ exit_FRAME_for_lpi_1_dfm));
  assign exit_FRAME_for_lpi_1_dfm = exit_FRAME_for_sva_1_st_1 | exit_FRAME_1_sva;
  assign regs_regs_2_lpi_1_dfm_mx0 = MUX_v_90_2_2({regs_regs_1_sva , regs_regs_2_lpi_1_dfm},
      and_dcpl);
  assign regs_regs_1_sva_dfm_mx0 = MUX_v_90_2_2({regs_regs_0_sva , regs_regs_1_sva},
      and_dcpl);
  assign regs_regs_0_sva_dfm_mx0 = MUX_v_90_2_2({vin_rsc_mgc_in_wire_d , regs_regs_0_sva},
      and_dcpl);
  assign exit_FRAME_lpi_1_dfm_1_mx0 = MUX_s_1_2_2({(~ (readslicef_8_1_7((conv_u2s_7_8(FRAME_p_1_sva_1[18:12])
      + 8'b10110101)))) , (exit_FRAME_lpi_1_dfm_1 & (~ exit_FRAME_for_lpi_1_dfm))},
      FRAME_for_acc_itm[1]);
  assign nl_FRAME_p_1_sva_1 = FRAME_p_1_lpi_1_dfm + 19'b1;
  assign FRAME_p_1_sva_1 = nl_FRAME_p_1_sva_1[18:0];
  assign FRAME_p_1_lpi_1_dfm = FRAME_p_1_lpi_1 & (signext_19_1(~ exit_FRAME_1_sva));
  assign nl_blue_2_sva = ({(conv_s2u_11_15(readslicef_12_11_1((conv_s2s_11_12({(~
      (regs_regs_0_sva_dfm_mx0[39:30])) , 1'b1}) + conv_s2s_11_12({(regs_regs_2_lpi_1_dfm_mx0[39:30])
      , 1'b1})))) + (b_2_sva_3[15:1])) , (readslicef_2_1_1((({(b_2_sva_3[0]) , 1'b1})
      + 2'b11)))}) + b_0_sva_3;
  assign blue_2_sva = nl_blue_2_sva[15:0];
  assign nl_FRAME_acc_11_psp_sva = ({1'b1 , ((FRAME_acc_28_sdt[4:1]) + 4'b1001) ,
      (FRAME_acc_28_sdt[0])}) + conv_u2u_5_6(conv_u2u_4_5(conv_u2u_3_4(~ (blue_2_sva[6:4]))
      + conv_u2u_3_4(blue_2_sva[9:7])) + conv_u2u_3_5(blue_2_sva[3:1]));
  assign FRAME_acc_11_psp_sva = nl_FRAME_acc_11_psp_sva[5:0];
  assign nl_FRAME_acc_32_itm = ({1'b1 , (FRAME_acc_11_psp_sva[2:0]) , 1'b1}) + conv_u2u_4_5({(~
      (FRAME_acc_11_psp_sva[5:3])) , (~ (FRAME_acc_11_psp_sva[5]))});
  assign FRAME_acc_32_itm = nl_FRAME_acc_32_itm[4:0];
  assign nl_red_2_sva = ({(conv_s2u_11_15(readslicef_12_11_1((conv_s2s_11_12({(~
      (regs_regs_0_sva_dfm_mx0[59:50])) , 1'b1}) + conv_s2s_11_12({(regs_regs_2_lpi_1_dfm_mx0[59:50])
      , 1'b1})))) + (r_2_sva_3[15:1])) , (readslicef_2_1_1((({(r_2_sva_3[0]) , 1'b1})
      + 2'b11)))}) + r_0_sva_3;
  assign red_2_sva = nl_red_2_sva[15:0];
  assign nl_FRAME_acc_7_psp_sva = ({1'b1 , ((FRAME_acc_13_sdt[4:1]) + 4'b1001) ,
      (FRAME_acc_13_sdt[0])}) + conv_u2u_5_6(conv_u2u_4_5(conv_u2u_3_4(~ (red_2_sva[6:4]))
      + conv_u2u_3_4(red_2_sva[9:7])) + conv_u2u_3_5(red_2_sva[3:1]));
  assign FRAME_acc_7_psp_sva = nl_FRAME_acc_7_psp_sva[5:0];
  assign nl_FRAME_acc_17_itm = ({1'b1 , (FRAME_acc_7_psp_sva[2:0]) , 1'b1}) + conv_u2u_4_5({(~
      (FRAME_acc_7_psp_sva[5:3])) , (~ (FRAME_acc_7_psp_sva[5]))});
  assign FRAME_acc_17_itm = nl_FRAME_acc_17_itm[4:0];
  assign nl_FRAME_acc_28_sdt = conv_u2s_3_5(~ (blue_2_sva[12:10])) + conv_s2s_3_5(blue_2_sva[15:13]);
  assign FRAME_acc_28_sdt = nl_FRAME_acc_28_sdt[4:0];
  assign nl_green_2_sva = ({(conv_s2u_11_15(readslicef_12_11_1((conv_s2s_11_12({(~
      (regs_regs_0_sva_dfm_mx0[49:40])) , 1'b1}) + conv_s2s_11_12({(regs_regs_2_lpi_1_dfm_mx0[49:40])
      , 1'b1})))) + (g_2_sva_3[15:1])) , (readslicef_2_1_1((({(g_2_sva_3[0]) , 1'b1})
      + 2'b11)))}) + g_0_sva_3;
  assign green_2_sva = nl_green_2_sva[15:0];
  assign nl_FRAME_acc_9_psp_sva = ({1'b1 , ((FRAME_acc_18_sdt[4:1]) + 4'b1001) ,
      (FRAME_acc_18_sdt[0])}) + conv_u2u_5_6(conv_u2u_4_5(conv_u2u_3_4(~ (green_2_sva[6:4]))
      + conv_u2u_3_4(green_2_sva[9:7])) + conv_u2u_3_5(green_2_sva[3:1]));
  assign FRAME_acc_9_psp_sva = nl_FRAME_acc_9_psp_sva[5:0];
  assign nl_FRAME_acc_22_itm = ({1'b1 , (FRAME_acc_9_psp_sva[2:0]) , 1'b1}) + conv_u2u_4_5({(~
      (FRAME_acc_9_psp_sva[5:3])) , (~ (FRAME_acc_9_psp_sva[5]))});
  assign FRAME_acc_22_itm = nl_FRAME_acc_22_itm[4:0];
  assign nl_FRAME_acc_18_sdt = conv_u2s_3_5(~ (green_2_sva[12:10])) + conv_s2s_3_5(green_2_sva[15:13]);
  assign FRAME_acc_18_sdt = nl_FRAME_acc_18_sdt[4:0];
  assign nl_FRAME_acc_13_sdt = conv_u2s_3_5(~ (red_2_sva[12:10])) + conv_s2s_3_5(red_2_sva[15:13]);
  assign FRAME_acc_13_sdt = nl_FRAME_acc_13_sdt[4:0];
  assign FRAME_for_mux_10_nl = MUX_v_16_2_2({b_2_sva_1 , (signext_16_11(readslicef_12_11_1((conv_s2s_11_12({(~
      (vin_rsc_mgc_in_wire_d[69:60])) , 1'b1}) + conv_s2s_11_12({(regs_regs_1_sva[69:60])
      , 1'b1})))))}, exit_FRAME_for_lpi_1_dfm);
  assign regs_operator_17_mux_nl = MUX_v_10_4_2({(regs_regs_0_sva_dfm_mx0[69:60])
      , (regs_regs_1_sva_dfm_mx0[69:60]) , (regs_regs_2_lpi_1_dfm_mx0[69:60]) , 10'b0},
      i_6_lpi_1_dfm);
  assign nl_b_2_sva_3 = (FRAME_for_mux_10_nl) + conv_s2s_11_16(conv_s2s_22_11(conv_s2s_10_11(regs_operator_17_mux_nl)
      * conv_s2s_2_11({FRAME_for_nor_cse , FRAME_for_or_4_itm})));
  assign b_2_sva_3 = nl_b_2_sva_3[15:0];
  assign FRAME_for_mux_9_nl = MUX_v_16_2_2({b_0_sva_1 , (signext_16_11(readslicef_12_11_1((conv_s2s_11_12({(~
      (vin_rsc_mgc_in_wire_d[9:0])) , 1'b1}) + conv_s2s_11_12({(regs_regs_1_sva[9:0])
      , 1'b1})))))}, exit_FRAME_for_lpi_1_dfm);
  assign regs_operator_11_mux_nl = MUX_v_10_4_2({(regs_regs_0_sva_dfm_mx0[9:0]) ,
      (regs_regs_1_sva_dfm_mx0[9:0]) , (regs_regs_2_lpi_1_dfm_mx0[9:0]) , 10'b0},
      i_6_lpi_1_dfm);
  assign nl_b_0_sva_3 = (FRAME_for_mux_9_nl) + conv_s2s_12_16(conv_s2s_24_12(conv_s2s_10_12(regs_operator_11_mux_nl)
      * conv_s2s_2_12({1'b1 , FRAME_for_or_3_itm})));
  assign b_0_sva_3 = nl_b_0_sva_3[15:0];
  assign FRAME_for_mux_8_nl = MUX_v_16_2_2({g_2_sva_1 , (signext_16_11(readslicef_12_11_1((conv_s2s_11_12({(~
      (vin_rsc_mgc_in_wire_d[79:70])) , 1'b1}) + conv_s2s_11_12({(regs_regs_1_sva[79:70])
      , 1'b1})))))}, exit_FRAME_for_lpi_1_dfm);
  assign regs_operator_16_mux_nl = MUX_v_10_4_2({(regs_regs_0_sva_dfm_mx0[79:70])
      , (regs_regs_1_sva_dfm_mx0[79:70]) , (regs_regs_2_lpi_1_dfm_mx0[79:70]) , 10'b0},
      i_6_lpi_1_dfm);
  assign nl_g_2_sva_3 = (FRAME_for_mux_8_nl) + conv_s2s_11_16(conv_s2s_22_11(conv_s2s_10_11(regs_operator_16_mux_nl)
      * conv_s2s_2_11({FRAME_for_nor_cse , FRAME_for_or_4_itm})));
  assign g_2_sva_3 = nl_g_2_sva_3[15:0];
  assign FRAME_for_mux_7_nl = MUX_v_16_2_2({g_0_sva_1 , (signext_16_11(readslicef_12_11_1((conv_s2s_11_12({(~
      (vin_rsc_mgc_in_wire_d[19:10])) , 1'b1}) + conv_s2s_11_12({(regs_regs_1_sva[19:10])
      , 1'b1})))))}, exit_FRAME_for_lpi_1_dfm);
  assign regs_operator_10_mux_nl = MUX_v_10_4_2({(regs_regs_0_sva_dfm_mx0[19:10])
      , (regs_regs_1_sva_dfm_mx0[19:10]) , (regs_regs_2_lpi_1_dfm_mx0[19:10]) , 10'b0},
      i_6_lpi_1_dfm);
  assign nl_g_0_sva_3 = (FRAME_for_mux_7_nl) + conv_s2s_12_16(conv_s2s_24_12(conv_s2s_10_12(regs_operator_10_mux_nl)
      * conv_s2s_2_12({1'b1 , FRAME_for_or_3_itm})));
  assign g_0_sva_3 = nl_g_0_sva_3[15:0];
  assign FRAME_for_mux_6_nl = MUX_v_16_2_2({r_2_sva_1 , (signext_16_11(readslicef_12_11_1((conv_s2s_11_12({(~
      (vin_rsc_mgc_in_wire_d[89:80])) , 1'b1}) + conv_s2s_11_12({(regs_regs_1_sva[89:80])
      , 1'b1})))))}, exit_FRAME_for_lpi_1_dfm);
  assign regs_operator_15_mux_nl = MUX_v_10_4_2({(regs_regs_0_sva_dfm_mx0[89:80])
      , (regs_regs_1_sva_dfm_mx0[89:80]) , (regs_regs_2_lpi_1_dfm_mx0[89:80]) , 10'b0},
      i_6_lpi_1_dfm);
  assign nl_r_2_sva_3 = (FRAME_for_mux_6_nl) + conv_s2s_11_16(conv_s2s_22_11(conv_s2s_10_11(regs_operator_15_mux_nl)
      * conv_s2s_2_11({FRAME_for_nor_cse , FRAME_for_or_4_itm})));
  assign r_2_sva_3 = nl_r_2_sva_3[15:0];
  assign FRAME_for_mux_5_nl = MUX_v_16_2_2({r_0_sva_1 , (signext_16_11(readslicef_12_11_1((conv_s2s_11_12({(~
      (vin_rsc_mgc_in_wire_d[29:20])) , 1'b1}) + conv_s2s_11_12({(regs_regs_1_sva[29:20])
      , 1'b1})))))}, exit_FRAME_for_lpi_1_dfm);
  assign regs_operator_9_mux_nl = MUX_v_10_4_2({(regs_regs_0_sva_dfm_mx0[29:20])
      , (regs_regs_1_sva_dfm_mx0[29:20]) , (regs_regs_2_lpi_1_dfm_mx0[29:20]) , 10'b0},
      i_6_lpi_1_dfm);
  assign nl_r_0_sva_3 = (FRAME_for_mux_5_nl) + conv_s2s_12_16(conv_s2s_24_12(conv_s2s_10_12(regs_operator_9_mux_nl)
      * conv_s2s_2_12({1'b1 , FRAME_for_or_3_itm})));
  assign r_0_sva_3 = nl_r_0_sva_3[15:0];
  assign FRAME_for_nor_cse = ~((i_6_lpi_1_dfm[1]) | (i_6_lpi_1_dfm[0]));
  assign FRAME_for_or_4_itm = (~((~ (i_6_lpi_1_dfm[1])) & (i_6_lpi_1_dfm[0]))) |
      FRAME_for_nor_cse;
  assign FRAME_for_or_3_itm = (~((i_6_lpi_1_dfm[0]) & (~ (i_6_lpi_1_dfm[1])))) |
      FRAME_for_nor_cse | ((i_6_lpi_1_dfm[1]) & (~ (i_6_lpi_1_dfm[0])));
  assign and_dcpl = ~(exit_FRAME_for_sva_1_st_1 | exit_FRAME_1_sva);
  always @(posedge clk or negedge arst_n) begin
    if ( ~ arst_n ) begin
      vout_rsc_mgc_out_stdreg_d <= 30'b0;
      FRAME_mul_itm_1 <= 9'b0;
      FRAME_slc_red_10_itm_1 <= 6'b0;
      FRAME_acc_35_itm_1 <= 5'b0;
      FRAME_mul_1_itm_1 <= 10'b0;
      FRAME_mul_4_itm_1 <= 9'b0;
      FRAME_slc_blue_10_itm_1 <= 6'b0;
      FRAME_acc_40_itm_1 <= 5'b0;
      FRAME_mul_5_itm_1 <= 12'b0;
      FRAME_mul_2_itm_1 <= 9'b0;
      FRAME_slc_green_10_itm_1 <= 6'b0;
      FRAME_acc_25_itm_1 <= 5'b0;
      FRAME_mul_3_itm_1 <= 12'b0;
      exit_FRAME_for_sva_1_st_1 <= 1'b0;
      i_6_sva_1 <= 2'b0;
      exit_FRAME_1_sva <= 1'b1;
      main_stage_0_2 <= 1'b0;
      regs_regs_2_lpi_1_dfm <= 90'b0;
      regs_regs_1_sva <= 90'b0;
      regs_regs_0_sva <= 90'b0;
      exit_FRAME_lpi_1_dfm_1 <= 1'b0;
      b_2_sva_1 <= 16'b0;
      b_0_sva_1 <= 16'b0;
      g_2_sva_1 <= 16'b0;
      g_0_sva_1 <= 16'b0;
      r_2_sva_1 <= 16'b0;
      r_0_sva_1 <= 16'b0;
      FRAME_p_1_lpi_1 <= 19'b0;
    end
    else begin
      if ( en ) begin
        vout_rsc_mgc_out_stdreg_d <= MUX_v_30_2_2({(({(((conv_u2s_9_10(FRAME_mul_itm_1)
            + conv_s2s_8_10(conv_u2s_6_8(FRAME_slc_red_10_itm_1) + conv_s2s_5_8(FRAME_acc_35_itm_1)))
            + FRAME_mul_1_itm_1) | (signext_10_2(FRAME_acc_3_psp_sva[11:10]))) ,
            (FRAME_acc_3_psp_sva[9:0]) , 10'b0}) | (signext_30_12(conv_s2s_10_12(conv_u2s_9_10(FRAME_mul_4_itm_1)
            + conv_s2s_8_10(conv_u2s_6_8(FRAME_slc_blue_10_itm_1) + conv_s2s_5_8(FRAME_acc_40_itm_1)))
            + FRAME_mul_5_itm_1))) , vout_rsc_mgc_out_stdreg_d}, ~(exit_FRAME_for_sva_1_st_1
            & main_stage_0_2));
        FRAME_mul_itm_1 <= nl_FRAME_mul_itm_1[8:0];
        FRAME_slc_red_10_itm_1 <= red_2_sva[9:4];
        FRAME_acc_35_itm_1 <= nl_FRAME_acc_35_itm_1[4:0];
        FRAME_mul_1_itm_1 <= nl_FRAME_mul_1_itm_1[9:0];
        FRAME_mul_4_itm_1 <= nl_FRAME_mul_4_itm_1[8:0];
        FRAME_slc_blue_10_itm_1 <= blue_2_sva[9:4];
        FRAME_acc_40_itm_1 <= nl_FRAME_acc_40_itm_1[4:0];
        FRAME_mul_5_itm_1 <= nl_FRAME_mul_5_itm_1[11:0];
        FRAME_mul_2_itm_1 <= nl_FRAME_mul_2_itm_1[8:0];
        FRAME_slc_green_10_itm_1 <= green_2_sva[9:4];
        FRAME_acc_25_itm_1 <= nl_FRAME_acc_25_itm_1[4:0];
        FRAME_mul_3_itm_1 <= nl_FRAME_mul_3_itm_1[11:0];
        exit_FRAME_for_sva_1_st_1 <= ~ (FRAME_for_acc_itm[1]);
        i_6_sva_1 <= i_6_sva_2;
        exit_FRAME_1_sva <= (~ (FRAME_for_acc_itm[1])) & exit_FRAME_lpi_1_dfm_1_mx0;
        main_stage_0_2 <= 1'b1;
        regs_regs_2_lpi_1_dfm <= regs_regs_2_lpi_1_dfm_mx0;
        regs_regs_1_sva <= regs_regs_1_sva_dfm_mx0;
        regs_regs_0_sva <= regs_regs_0_sva_dfm_mx0;
        exit_FRAME_lpi_1_dfm_1 <= exit_FRAME_lpi_1_dfm_1_mx0;
        b_2_sva_1 <= b_2_sva_3;
        b_0_sva_1 <= b_0_sva_3;
        g_2_sva_1 <= g_2_sva_3;
        g_0_sva_1 <= g_0_sva_3;
        r_2_sva_1 <= r_2_sva_3;
        r_0_sva_1 <= r_0_sva_3;
        FRAME_p_1_lpi_1 <= MUX_v_19_2_2({FRAME_p_1_sva_1 , FRAME_p_1_lpi_1_dfm},
            FRAME_for_acc_itm[1]);
      end
    end
  end
  assign nl_FRAME_mul_itm_1  = conv_u2u_3_9(red_2_sva[12:10]) * 9'b111001;
  assign nl_FRAME_acc_35_itm_1  = (conv_u2u_4_5(readslicef_5_4_1((conv_u2u_4_5({(~
      (FRAME_acc_7_psp_sva[5])) , 1'b1 , (~((FRAME_acc_17_itm[4]) & (~ (red_2_sva[15]))))
      , 1'b1}) + conv_u2u_3_5({(FRAME_acc_7_psp_sva[4:3]) , ((red_2_sva[15]) & (~
      (FRAME_acc_17_itm[4])) & ((FRAME_acc_17_itm[3]) | (FRAME_acc_17_itm[2]) | (FRAME_acc_17_itm[1])
      | (red_2_sva[0])))})))) + conv_u2u_3_5(~ (red_2_sva[9:7]))) + ({4'b1001 , (FRAME_acc_7_psp_sva[5])});
  assign nl_FRAME_mul_1_itm_1  = conv_s2s_3_10(red_2_sva[15:13]) * 10'b111000111;
  assign nl_FRAME_mul_4_itm_1  = conv_u2u_3_9(blue_2_sva[12:10]) * 9'b111001;
  assign nl_FRAME_acc_40_itm_1  = (conv_u2u_4_5(readslicef_5_4_1((conv_u2u_4_5({(~
      (FRAME_acc_11_psp_sva[5])) , 1'b1 , (~((FRAME_acc_32_itm[4]) & (~ (blue_2_sva[15]))))
      , 1'b1}) + conv_u2u_3_5({(FRAME_acc_11_psp_sva[4:3]) , ((blue_2_sva[15]) &
      (~ (FRAME_acc_32_itm[4])) & ((FRAME_acc_32_itm[3]) | (FRAME_acc_32_itm[2])
      | (FRAME_acc_32_itm[1]) | (blue_2_sva[0])))})))) + conv_u2u_3_5(~ (blue_2_sva[9:7])))
      + ({4'b1001 , (FRAME_acc_11_psp_sva[5])});
  assign nl_FRAME_mul_5_itm_1  = conv_s2s_3_12(blue_2_sva[15:13]) * 12'b111000111;
  assign nl_FRAME_mul_2_itm_1  = conv_u2u_3_9(green_2_sva[12:10]) * 9'b111001;
  assign nl_FRAME_acc_25_itm_1  = (conv_u2u_4_5(readslicef_5_4_1((conv_u2u_4_5({(~
      (FRAME_acc_9_psp_sva[5])) , 1'b1 , (~((FRAME_acc_22_itm[4]) & (~ (green_2_sva[15]))))
      , 1'b1}) + conv_u2u_3_5({(FRAME_acc_9_psp_sva[4:3]) , ((green_2_sva[15]) &
      (~ (FRAME_acc_22_itm[4])) & ((FRAME_acc_22_itm[3]) | (FRAME_acc_22_itm[2])
      | (FRAME_acc_22_itm[1]) | (green_2_sva[0])))})))) + conv_u2u_3_5(~ (green_2_sva[9:7])))
      + ({4'b1001 , (FRAME_acc_9_psp_sva[5])});
  assign nl_FRAME_mul_3_itm_1  = conv_s2s_3_12(green_2_sva[15:13]) * 12'b111000111;

  function [1:0] signext_2_1;
    input [0:0] vector;
  begin
    signext_2_1= {{1{vector[0]}}, vector};
  end
  endfunction


  function [89:0] MUX_v_90_2_2;
    input [179:0] inputs;
    input [0:0] sel;
    reg [89:0] result;
  begin
    case (sel)
      1'b0 : begin
        result = inputs[179:90];
      end
      1'b1 : begin
        result = inputs[89:0];
      end
      default : begin
        result = inputs[179:90];
      end
    endcase
    MUX_v_90_2_2 = result;
  end
  endfunction


  function [0:0] MUX_s_1_2_2;
    input [1:0] inputs;
    input [0:0] sel;
    reg [0:0] result;
  begin
    case (sel)
      1'b0 : begin
        result = inputs[1:1];
      end
      1'b1 : begin
        result = inputs[0:0];
      end
      default : begin
        result = inputs[1:1];
      end
    endcase
    MUX_s_1_2_2 = result;
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


  function [0:0] readslicef_2_1_1;
    input [1:0] vector;
    reg [1:0] tmp;
  begin
    tmp = vector >> 1;
    readslicef_2_1_1 = tmp[0:0];
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


  function [15:0] signext_16_11;
    input [10:0] vector;
  begin
    signext_16_11= {{5{vector[10]}}, vector};
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


  function [3:0] readslicef_5_4_1;
    input [4:0] vector;
    reg [4:0] tmp;
  begin
    tmp = vector >> 1;
    readslicef_5_4_1 = tmp[3:0];
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


  function signed [7:0] conv_u2s_7_8 ;
    input [6:0]  vector ;
  begin
    conv_u2s_7_8 = {1'b0, vector};
  end
  endfunction


  function  [14:0] conv_s2u_11_15 ;
    input signed [10:0]  vector ;
  begin
    conv_s2u_11_15 = {{4{vector[10]}}, vector};
  end
  endfunction


  function signed [11:0] conv_s2s_11_12 ;
    input signed [10:0]  vector ;
  begin
    conv_s2s_11_12 = {vector[10], vector};
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


  function  [8:0] conv_u2u_3_9 ;
    input [2:0]  vector ;
  begin
    conv_u2u_3_9 = {{6{1'b0}}, vector};
  end
  endfunction


  function signed [9:0] conv_s2s_3_10 ;
    input signed [2:0]  vector ;
  begin
    conv_s2s_3_10 = {{7{vector[2]}}, vector};
  end
  endfunction


  function signed [11:0] conv_s2s_3_12 ;
    input signed [2:0]  vector ;
  begin
    conv_s2s_3_12 = {{9{vector[2]}}, vector};
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


