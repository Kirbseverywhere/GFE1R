	.include "MPlayDef.s"

	.equ	song01_grp, voicegroup000
	.equ	song01_pri, 0
	.equ	song01_rev, 0
	.equ	song01_mvl, 127
	.equ	song01_key, 0
	.equ	song01_tbs, 1
	.equ	song01_exg, 0
	.equ	song01_cmp, 1

	.section .rodata
	.global	song01
	.align	2


@**************** Track 1 (Midi-Chn.0) ****************@

song01_001:
@ 000   ----------------------------------------
 .byte   KEYSH , song01_key+0
Label_0_01081E46:
 .byte   TEMPO , 64*song01_tbs/2
 .byte   VOICE , 34
 .byte   VOL , 50*song01_mvl/mxv
 .byte   PAN , c_v+14
 .byte   N04 ,Cn2 ,v104
 .byte   W06
 .byte   Dn2
 .byte   W06
 .byte   Ds2
 .byte   W06
 .byte   N02 ,Fn2
 .byte   W03
 .byte   Cn2
 .byte   W06
 .byte   Dn2
 .byte   W03
 .byte   Ds2
 .byte   W03
 .byte   Fn2
 .byte   W03
 .byte   N04 ,Cn2
 .byte   W06
 .byte   Dn2
 .byte   W06
 .byte   Ds2
 .byte   W06
 .byte   N02 ,Fn2
 .byte   W03
 .byte   Cn2
 .byte   W06
 .byte   Dn2
 .byte   W03
 .byte   Ds2
 .byte   W03
 .byte   Fn2
 .byte   W03
 .byte   N04 ,Cn2
 .byte   W06
 .byte   Dn2
 .byte   W06
 .byte   Ds2
 .byte   W06
 .byte   N02 ,Fn2
 .byte   W03
 .byte   Cn2
 .byte   W03
@ 001   ----------------------------------------
Label_0_01081E7F:
 .byte   W03
 .byte   N02 ,Dn2 ,v104
 .byte   W03
 .byte   Ds2
 .byte   W03
 .byte   Fn2
 .byte   W03
 .byte   N04 ,Cn2
 .byte   W06
 .byte   Dn2
 .byte   W06
 .byte   Ds2
 .byte   W06
 .byte   N02 ,Fn2
 .byte   W03
 .byte   Cn2
 .byte   W06
 .byte   Dn2
 .byte   W03
 .byte   Ds2
 .byte   W03
 .byte   Fn2
 .byte   W03
 .byte   N04 ,Cn2
 .byte   W06
 .byte   Dn2
 .byte   W06
 .byte   Ds2
 .byte   W06
 .byte   N02 ,Fn2
 .byte   W03
 .byte   Cn2
 .byte   W06
 .byte   Dn2
 .byte   W03
 .byte   Ds2
 .byte   W03
 .byte   Fn2
 .byte   W03
 .byte   N04 ,Cn2
 .byte   W06
 .byte   Dn2
 .byte   W06
 .byte   PEND 
@ 002   ----------------------------------------
 .byte   Ds2
 .byte   W06
 .byte   N02 ,Fn2
 .byte   W03
 .byte   Cn2
 .byte   W06
 .byte   Dn2
 .byte   W03
 .byte   Ds2
 .byte   W03
 .byte   Fn2
 .byte   W03
 .byte   N04 ,Gn2 ,v116
 .byte   W12
 .byte   N04
 .byte   W06
 .byte   N04
 .byte   W12
 .byte   N04
 .byte   W06
 .byte   Gn1
 .byte   W12
 .byte   N04
 .byte   W06
 .byte   N04
 .byte   W12
 .byte   N04
 .byte   W06
@ 003   ----------------------------------------
 .byte   GOTO
  .word Label_0_01081E46
@ 004   ----------------------------------------
 .byte   N04 ,Cn2 ,v104
 .byte   W06
 .byte   Dn2
 .byte   W06
 .byte   Ds2
 .byte   W06
 .byte   N02 ,Fn2
 .byte   W03
 .byte   Cn2
 .byte   W06
 .byte   Dn2
 .byte   W03
 .byte   Ds2
 .byte   W03
 .byte   Fn2
 .byte   W03
 .byte   N04 ,Cn2
 .byte   W06
 .byte   Dn2
 .byte   W06
 .byte   Ds2
 .byte   W06
 .byte   N02 ,Fn2
 .byte   W03
 .byte   Cn2
 .byte   W06
 .byte   Dn2
 .byte   W03
 .byte   Ds2
 .byte   W03
 .byte   Fn2
 .byte   W03
 .byte   N04 ,Cn2
 .byte   W06
 .byte   Dn2
 .byte   W06
 .byte   Ds2
 .byte   W06
 .byte   N02 ,Fn2
 .byte   W03
 .byte   Cn2
 .byte   W03
 .byte   PATT
  .word Label_0_01081E7F
@ 005   ----------------------------------------
 .byte   N04 ,Ds2 ,v104
 .byte   W06
 .byte   N02 ,Fn2
 .byte   W03
 .byte   Cn2
 .byte   W06
 .byte   Dn2
 .byte   W03
 .byte   Ds2
 .byte   W03
 .byte   Fn2
 .byte   W03
 .byte   N04 ,Gn2 ,v116
 .byte   W12
 .byte   N04
 .byte   W06
 .byte   N04
 .byte   W12
 .byte   N04
 .byte   W06
 .byte   Gn1
 .byte   W12
 .byte   N04
 .byte   W06
 .byte   N04
 .byte   W12
 .byte   N04
 .byte   W05
 .byte   FINE

@**************** Track 2 (Midi-Chn.1) ****************@

song01_002:
@ 000   ----------------------------------------
 .byte   KEYSH , song01_key+0
Label_1_01081F32:
 .byte   VOICE , 109
 .byte   VOL , 70*song01_mvl/mxv
 .byte   PAN , c_v-25
 .byte   N11 ,Cn4 ,v116
 .byte   W36
 .byte   N11
 .byte   W36
 .byte   N11
 .byte   W24
@ 001   ----------------------------------------
Label_1_01081F40:
 .byte   W06
 .byte   N05 ,Gn4 ,v116
 .byte   W06
 .byte   N11 ,Cn4
 .byte   W12
 .byte   Ds4
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   Cn4
 .byte   W36
 .byte   N11
 .byte   W12
 .byte   PEND 
@ 002   ----------------------------------------
 .byte   W24
 .byte   N05
 .byte   W12
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W12
 .byte   N05
 .byte   W06
 .byte   Bn3
 .byte   W12
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W12
 .byte   N05
 .byte   W06
@ 003   ----------------------------------------
 .byte   GOTO
  .word Label_1_01081F32
@ 004   ----------------------------------------
 .byte   N11 ,Cn4 ,v116
 .byte   W36
 .byte   N11
 .byte   W36
 .byte   N11
 .byte   W24
 .byte   PATT
  .word Label_1_01081F40
@ 005   ----------------------------------------
 .byte   W24
 .byte   N05 ,Cn4 ,v116
 .byte   W12
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W12
 .byte   N05
 .byte   W06
 .byte   Bn3
 .byte   W12
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W12
 .byte   N05
 .byte   W05
 .byte   FINE

@**************** Track 3 (Midi-Chn.2) ****************@

song01_003:
@ 000   ----------------------------------------
 .byte   KEYSH , song01_key+0
Label_2_01081F8A:
 .byte   VOICE , 109
 .byte   VOL , 72*song01_mvl/mxv
 .byte   PAN , c_v+25
 .byte   N11 ,Ds4 ,v116
 .byte   W36
 .byte   N11
 .byte   W36
 .byte   N11
 .byte   W24
@ 001   ----------------------------------------
Label_2_01081F98:
 .byte   W06
 .byte   N05 ,Ds4 ,v116
 .byte   W06
 .byte   N11
 .byte   W12
 .byte   Gn4
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   Ds4
 .byte   W36
 .byte   N11
 .byte   W12
 .byte   PEND 
@ 002   ----------------------------------------
 .byte   W24
 .byte   N05 ,Dn4
 .byte   W12
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W12
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W12
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W12
 .byte   N05
 .byte   W06
@ 003   ----------------------------------------
 .byte   GOTO
  .word Label_2_01081F8A
@ 004   ----------------------------------------
 .byte   N11 ,Ds4 ,v116
 .byte   W36
 .byte   N11
 .byte   W36
 .byte   N11
 .byte   W24
 .byte   PATT
  .word Label_2_01081F98
@ 005   ----------------------------------------
 .byte   W24
 .byte   N05 ,Dn4 ,v116
 .byte   W12
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W12
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W12
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W12
 .byte   N05
 .byte   W05
 .byte   FINE

@**************** Track 4 (Midi-Chn.3) ****************@

song01_004:
@ 000   ----------------------------------------
 .byte   KEYSH , song01_key+0
Label_3_01081FE2:
 .byte   VOICE , 109
 .byte   VOL , 75*song01_mvl/mxv
 .byte   PAN , c_v+25
 .byte   N11 ,Gn4 ,v116
 .byte   W36
 .byte   Gs4
 .byte   W36
 .byte   Gn4
 .byte   W24
@ 001   ----------------------------------------
Label_3_01081FF0:
 .byte   W06
 .byte   N05 ,Gn4 ,v116
 .byte   W06
 .byte   N11 ,Gs4
 .byte   W12
 .byte   As4
 .byte   W12
 .byte   Cn5
 .byte   W12
 .byte   Gn4
 .byte   W36
 .byte   Gs4
 .byte   W12
 .byte   PEND 
@ 002   ----------------------------------------
 .byte   W24
 .byte   N05 ,Gn4
 .byte   W12
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W12
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W12
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W12
 .byte   N05
 .byte   W06
@ 003   ----------------------------------------
 .byte   GOTO
  .word Label_3_01081FE2
@ 004   ----------------------------------------
 .byte   N11 ,Gn4 ,v116
 .byte   W36
 .byte   Gs4
 .byte   W36
 .byte   Gn4
 .byte   W24
 .byte   PATT
  .word Label_3_01081FF0
@ 005   ----------------------------------------
 .byte   W24
 .byte   N05 ,Gn4 ,v116
 .byte   W12
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W12
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W12
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W12
 .byte   N05
 .byte   W05
 .byte   FINE

@**************** Track 5 (Midi-Chn.4) ****************@

song01_005:
@ 000   ----------------------------------------
 .byte   KEYSH , song01_key+0
Label_4_0108203E:
 .byte   VOICE , 57
 .byte   VOL , 65*song01_mvl/mxv
 .byte   PAN , c_v-14
 .byte   N04 ,Cn4 ,v104
 .byte   W06
 .byte   Dn4
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   N02 ,Fn4
 .byte   W03
 .byte   Cn4
 .byte   W06
 .byte   Dn4
 .byte   W03
 .byte   Ds4
 .byte   W03
 .byte   Fn4
 .byte   W03
 .byte   N04 ,Cn4
 .byte   W06
 .byte   Dn4
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   N02 ,Fn4
 .byte   W03
 .byte   Cn4
 .byte   W06
 .byte   Dn4
 .byte   W03
 .byte   Ds4
 .byte   W03
 .byte   Fn4
 .byte   W03
 .byte   N04 ,Cn4
 .byte   W06
 .byte   Dn4
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   N02 ,Fn4
 .byte   W03
 .byte   Cn4
 .byte   W03
@ 001   ----------------------------------------
Label_4_01082075:
 .byte   W03
 .byte   N02 ,Dn4 ,v104
 .byte   W03
 .byte   Ds4
 .byte   W03
 .byte   Fn4
 .byte   W03
 .byte   N04 ,Cn4
 .byte   W06
 .byte   Dn4
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   N02 ,Fn4
 .byte   W03
 .byte   Cn4
 .byte   W06
 .byte   Dn4
 .byte   W03
 .byte   Ds4
 .byte   W03
 .byte   Fn4
 .byte   W03
 .byte   N04 ,Cn4
 .byte   W06
 .byte   Dn4
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   N02 ,Fn4
 .byte   W03
 .byte   Cn4
 .byte   W06
 .byte   Dn4
 .byte   W03
 .byte   Ds4
 .byte   W03
 .byte   Fn4
 .byte   W03
 .byte   N04 ,Cn4
 .byte   W06
 .byte   Dn4
 .byte   W06
 .byte   PEND 
@ 002   ----------------------------------------
 .byte   Ds4
 .byte   W06
 .byte   N02 ,Fn4
 .byte   W03
 .byte   Cn4
 .byte   W06
 .byte   Dn4
 .byte   W03
 .byte   Ds4
 .byte   W03
 .byte   Fn4
 .byte   W03
 .byte   N09 ,Gn4
 .byte   W12
 .byte   N04
 .byte   W06
 .byte   N09
 .byte   W12
 .byte   N04
 .byte   W06
 .byte   N09 ,Gn3
 .byte   W12
 .byte   N04
 .byte   W06
 .byte   N09
 .byte   W12
 .byte   N04
 .byte   W06
@ 003   ----------------------------------------
 .byte   GOTO
  .word Label_4_0108203E
@ 004   ----------------------------------------
 .byte   N04 ,Cn4 ,v104
 .byte   W06
 .byte   Dn4
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   N02 ,Fn4
 .byte   W03
 .byte   Cn4
 .byte   W06
 .byte   Dn4
 .byte   W03
 .byte   Ds4
 .byte   W03
 .byte   Fn4
 .byte   W03
 .byte   N04 ,Cn4
 .byte   W06
 .byte   Dn4
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   N02 ,Fn4
 .byte   W03
 .byte   Cn4
 .byte   W06
 .byte   Dn4
 .byte   W03
 .byte   Ds4
 .byte   W03
 .byte   Fn4
 .byte   W03
 .byte   N04 ,Cn4
 .byte   W06
 .byte   Dn4
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   N02 ,Fn4
 .byte   W03
 .byte   Cn4
 .byte   W03
 .byte   PATT
  .word Label_4_01082075
@ 005   ----------------------------------------
 .byte   N04 ,Ds4 ,v104
 .byte   W06
 .byte   N02 ,Fn4
 .byte   W03
 .byte   Cn4
 .byte   W06
 .byte   Dn4
 .byte   W03
 .byte   Ds4
 .byte   W03
 .byte   Fn4
 .byte   W03
 .byte   N09 ,Gn4
 .byte   W12
 .byte   N04
 .byte   W06
 .byte   N09
 .byte   W12
 .byte   N04
 .byte   W06
 .byte   N09 ,Gn3
 .byte   W12
 .byte   N04
 .byte   W06
 .byte   N09
 .byte   W12
 .byte   N04
 .byte   W05
 .byte   FINE

@**************** Track 6 (Midi-Chn.5) ****************@

song01_006:
@ 000   ----------------------------------------
 .byte   KEYSH , song01_key+0
Label_5_01082126:
 .byte   VOICE , 109
 .byte   VOL , 55*song01_mvl/mxv
 .byte   PAN , c_v-25
 .byte   N32 ,Gn3 ,v112
 .byte   W36
 .byte   Gs3
 .byte   W36
 .byte   Gn3
 .byte   W24
@ 001   ----------------------------------------
Label_5_01082134:
 .byte   W12
 .byte   N11 ,Gs3 ,v112
 .byte   W12
 .byte   As3
 .byte   W12
 .byte   Cn4
 .byte   W12
 .byte   VOICE , 109
 .byte   VOL , 55*song01_mvl/mxv
 .byte   PAN , c_v-25
 .byte   N01 ,Cn3 ,v120
 .byte   W02
 .byte   Gn2
 .byte   W02
 .byte   Cn3
 .byte   W02
 .byte   Ds3
 .byte   W02
 .byte   Cn3
 .byte   W02
 .byte   Ds3
 .byte   W02
 .byte   Gn3
 .byte   W02
 .byte   Ds3
 .byte   W02
 .byte   Gn3
 .byte   W02
 .byte   Cn4
 .byte   W02
 .byte   Gn3
 .byte   W02
 .byte   Cn4
 .byte   W02
 .byte   Ds4
 .byte   W02
 .byte   Cn4
 .byte   W02
 .byte   Ds4
 .byte   W02
 .byte   Gn4
 .byte   W02
 .byte   Ds4
 .byte   W02
 .byte   Gn4
 .byte   W02
 .byte   Cn3
 .byte   W02
 .byte   Gs2
 .byte   W02
 .byte   Cn3
 .byte   W02
 .byte   Ds3
 .byte   W02
 .byte   Cn3
 .byte   W02
 .byte   Ds3
 .byte   W02
 .byte   PEND 
@ 002   ----------------------------------------
 .byte   Gs3
 .byte   W02
 .byte   Ds3
 .byte   W02
 .byte   Gs3
 .byte   W02
 .byte   Cn4
 .byte   W02
 .byte   Gs3
 .byte   W02
 .byte   Cn4
 .byte   W02
 .byte   Ds4
 .byte   W02
 .byte   Cn4
 .byte   W02
 .byte   Ds4
 .byte   W02
 .byte   Gs4
 .byte   W02
 .byte   Ds4
 .byte   W02
 .byte   Gs4
 .byte   W02
 .byte   Gn5
 .byte   W02
 .byte   Dn5
 .byte   W02
 .byte   Cn5
 .byte   W02
 .byte   Dn5
 .byte   W02
 .byte   Cn5
 .byte   W02
 .byte   Gn4
 .byte   W02
 .byte   Dn4
 .byte   W02
 .byte   Cn4
 .byte   W02
 .byte   Gn3
 .byte   W02
 .byte   Gn2
 .byte   W02
 .byte   Cn3
 .byte   W02
 .byte   Dn3
 .byte   W02
 .byte   Gn3
 .byte   W02
 .byte   Cn4
 .byte   W02
 .byte   Dn4
 .byte   W02
 .byte   Gn4
 .byte   W02
 .byte   Cn5
 .byte   W02
 .byte   Dn5
 .byte   W02
 .byte   Gn5
 .byte   W02
 .byte   Dn5
 .byte   W02
 .byte   Bn4
 .byte   W02
 .byte   Dn5
 .byte   W02
 .byte   Bn4
 .byte   W02
 .byte   Gn4
 .byte   W02
 .byte   Bn4
 .byte   W02
 .byte   Gn4
 .byte   W02
 .byte   Dn4
 .byte   W02
 .byte   Gn4
 .byte   W02
 .byte   Dn4
 .byte   W02
 .byte   Bn3
 .byte   W02
 .byte   Dn4
 .byte   W02
 .byte   Bn3
 .byte   W02
 .byte   Gn3
 .byte   W02
 .byte   Bn3
 .byte   W02
 .byte   Gn3
 .byte   W02
 .byte   Bn3
 .byte   W02
@ 003   ----------------------------------------
 .byte   GOTO
  .word Label_5_01082126
@ 004   ----------------------------------------
 .byte   N32 ,Gn3 ,v112
 .byte   W36
 .byte   Gs3
 .byte   W36
 .byte   Gn3
 .byte   W24
 .byte   PATT
  .word Label_5_01082134
@ 005   ----------------------------------------
 .byte   N01 ,Gs3 ,v120
 .byte   W02
 .byte   Ds3
 .byte   W02
 .byte   Gs3
 .byte   W02
 .byte   Cn4
 .byte   W02
 .byte   Gs3
 .byte   W02
 .byte   Cn4
 .byte   W02
 .byte   Ds4
 .byte   W02
 .byte   Cn4
 .byte   W02
 .byte   Ds4
 .byte   W02
 .byte   Gs4
 .byte   W02
 .byte   Ds4
 .byte   W02
 .byte   Gs4
 .byte   W02
 .byte   Gn5
 .byte   W02
 .byte   Dn5
 .byte   W02
 .byte   Cn5
 .byte   W02
 .byte   Dn5
 .byte   W02
 .byte   Cn5
 .byte   W02
 .byte   Gn4
 .byte   W02
 .byte   Dn4
 .byte   W02
 .byte   Cn4
 .byte   W02
 .byte   Gn3
 .byte   W02
 .byte   Gn2
 .byte   W02
 .byte   Cn3
 .byte   W02
 .byte   Dn3
 .byte   W02
 .byte   Gn3
 .byte   W02
 .byte   Cn4
 .byte   W02
 .byte   Dn4
 .byte   W02
 .byte   Gn4
 .byte   W02
 .byte   Cn5
 .byte   W02
 .byte   Dn5
 .byte   W02
 .byte   Gn5
 .byte   W02
 .byte   Dn5
 .byte   W02
 .byte   Bn4
 .byte   W02
 .byte   Dn5
 .byte   W02
 .byte   Bn4
 .byte   W02
 .byte   Gn4
 .byte   W02
 .byte   Bn4
 .byte   W02
 .byte   Gn4
 .byte   W02
 .byte   Dn4
 .byte   W02
 .byte   Gn4
 .byte   W02
 .byte   Dn4
 .byte   W02
 .byte   Bn3
 .byte   W02
 .byte   Dn4
 .byte   W02
 .byte   Bn3
 .byte   W02
 .byte   Gn3
 .byte   W02
 .byte   Bn3
 .byte   W02
 .byte   Gn3
 .byte   W02
 .byte   Bn3
 .byte   W01
 .byte   FINE

@******************************************************@
	.align	2

song01:
	.byte	6	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song01_pri	@ Priority
	.byte	song01_rev	@ Reverb.
    
	.word	song01_grp
    
	.word	song01_001
	.word	song01_002
	.word	song01_003
	.word	song01_004
	.word	song01_005
	.word	song01_006

	.end
