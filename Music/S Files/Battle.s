	.include "MPlayDef.s"

	.equ	song09_grp, voicegroup000
	.equ	song09_pri, 10
	.equ	song09_rev, 0
	.equ	song09_mvl, 127
	.equ	song09_key, 0
	.equ	song09_tbs, 1
	.equ	song09_exg, 0
	.equ	song09_cmp, 1

	.section .rodata
	.global	song09
	.align	2


@**************** Track 1 (Midi-Chn.0) ****************@

song09_001:
@ 000   ----------------------------------------
Label_0_01023078:
 .byte   TEMPO , 64*song09_tbs/2
 .byte   KEYSH , song09_key+0
 .byte   VOICE , 127
 .byte   VOL , 109*song09_mvl/mxv
 .byte   PAN , c_v-16
 .byte   N03 ,Fn1 ,v117
 .byte   N11 ,Fs2 ,v070
 .byte   W12
 .byte   N01 ,Cs2 ,v053
 .byte   W24
 .byte   Cs2
 .byte   N03 ,Fn1 ,v113
 .byte   W24
 .byte   N01 ,Cs2 ,v053
 .byte   N03 ,Fn1 ,v109
 .byte   W12
 .byte   Fn1 ,v117
 .byte   W12
 .byte   N01 ,Cs2 ,v053
 .byte   W24
@ 001   ----------------------------------------
 .byte   Cs2
 .byte   N03 ,Fn1 ,v117
 .byte   W24
 .byte   N01 ,Cs2 ,v053
 .byte   N03 ,Fn1 ,v117
 .byte   W06
 .byte   Fn1 ,v102
 .byte   W06
 .byte   Fn1 ,v117
 .byte   W12
 .byte   N01 ,Cs2 ,v053
 .byte   W24
 .byte   Cs2
 .byte   N03 ,Fn1 ,v117
 .byte   W24
@ 002   ----------------------------------------
 .byte   N01 ,Cs2 ,v053
 .byte   N03 ,Fn1 ,v113
 .byte   W12
 .byte   Fn1 ,v117
 .byte   W12
 .byte   N01 ,Cs2 ,v053
 .byte   W24
 .byte   Cs2
 .byte   N03 ,Fn1 ,v117
 .byte   W24
 .byte   N01 ,Cs2 ,v053
 .byte   N03 ,Fn1 ,v103
 .byte   W06
 .byte   Fn1 ,v107
 .byte   W06
 .byte   Fn1 ,v117
 .byte   N11 ,Fs2 ,v066
 .byte   W12
@ 003   ----------------------------------------
 .byte   N01 ,Cs2 ,v053
 .byte   W24
 .byte   Cs2
 .byte   N03 ,Fn1 ,v117
 .byte   W24
 .byte   N01 ,Cs2 ,v053
 .byte   N03 ,Fn1 ,v113
 .byte   W12
 .byte   Fn1 ,v117
 .byte   W12
 .byte   N01 ,Cs2 ,v053
 .byte   W24
@ 004   ----------------------------------------
 .byte   Cs2
 .byte   N03 ,Fn1 ,v113
 .byte   W24
 .byte   N01 ,Cs2 ,v053
 .byte   N03 ,Fn1 ,v113
 .byte   W12
 .byte   Fn1 ,v117
 .byte   N11 ,Fs2 ,v066
 .byte   W24
 .byte   N01 ,Cs2 ,v053
 .byte   N03 ,Fn1 ,v113
 .byte   W12
 .byte   Fn1 ,v117
 .byte   N11 ,An2 ,v066
 .byte   W24
@ 005   ----------------------------------------
 .byte   N01 ,Cs2 ,v053
 .byte   N03 ,Fn1 ,v113
 .byte   W12
 .byte   N02 ,Gn1 ,v117
 .byte   N09 ,Fs2 ,v071
 .byte   W06
 .byte   N02 ,Gn1 ,v117
 .byte   W12
 .byte   An1
 .byte   W06
 .byte   An1
 .byte   N11 ,Cn3 ,v081
 .byte   W03
 .byte   N02 ,Gn1 ,v079
 .byte   W03
 .byte   N01 ,An1 ,v086
 .byte   W02
 .byte   Gn1 ,v091
 .byte   W02
 .byte   An1 ,v117
 .byte   W02
 .byte   N02 ,Fn2
 .byte   W03
 .byte   Gn1 ,v072
 .byte   W03
 .byte   An1 ,v088
 .byte   W03
 .byte   Gn1 ,v097
 .byte   W03
 .byte   An1 ,v117
 .byte   N03 ,Fn1
 .byte   W03
 .byte   N02 ,Gn1 ,v101
 .byte   W03
 .byte   N05 ,Dn2 ,v105
 .byte   W06
 .byte   N03 ,Fn1 ,v117
 .byte   N05 ,Cn2
 .byte   W06
 .byte   As1
 .byte   W05
 .byte   GOTO
  .word Label_0_01023078
 .byte   FINE

@**************** Track 2 (Midi-Chn.1) ****************@

song09_002:
@ 000   ----------------------------------------
Label_1_01023178:
 .byte   TEMPO , 64*song09_tbs/2
 .byte   VOL , 80*song09_mvl/mxv
 .byte   KEYSH , song09_key+0
 .byte   VOICE , 127
 .byte   PAN , c_v+30
 .byte   W12
 .byte   N05 ,An3 ,v052
 .byte   W06
 .byte   An3 ,v027
 .byte   W06
 .byte   An3 ,v052
 .byte   W06
 .byte   An3 ,v027
 .byte   W06
 .byte   An3 ,v052
 .byte   W06
 .byte   An3 ,v071
 .byte   W06
 .byte   An3 ,v027
 .byte   W06
 .byte   An3 ,v081
 .byte   W06
 .byte   An3 ,v071
 .byte   W06
 .byte   N02 ,An3 ,v059
 .byte   W03
 .byte   An3 ,v032
 .byte   W03
 .byte   N05 ,An3 ,v076
 .byte   W06
 .byte   An3
 .byte   W06
 .byte   An3 ,v071
 .byte   W06
 .byte   An3 ,v027
 .byte   W06
@ 001   ----------------------------------------
 .byte   An3 ,v086
 .byte   W06
 .byte   An3 ,v027
 .byte   W06
 .byte   An3 ,v104
 .byte   W06
 .byte   An3 ,v071
 .byte   W06
 .byte   An3 ,v027
 .byte   W06
 .byte   An3 ,v098
 .byte   W06
 .byte   An3 ,v027
 .byte   W06
 .byte   An3 ,v081
 .byte   W06
 .byte   An3 ,v068
 .byte   W06
 .byte   An3 ,v027
 .byte   W06
 .byte   An3 ,v091
 .byte   W06
 .byte   An3 ,v027
 .byte   W06
 .byte   An3 ,v091
 .byte   W06
 .byte   N02 ,An3 ,v053
 .byte   W03
 .byte   An3 ,v029
 .byte   W03
 .byte   N05 ,An3 ,v098
 .byte   W06
 .byte   N06 ,An3 ,v068
 .byte   W12
@ 002   ----------------------------------------
 .byte   N05 ,An3 ,v081
 .byte   W06
 .byte   N06 ,An3 ,v071
 .byte   W12
 .byte   N05 ,An3 ,v098
 .byte   W06
 .byte   An3 ,v062
 .byte   W06
 .byte   An3 ,v071
 .byte   W06
 .byte   An3 ,v052
 .byte   W06
 .byte   An3
 .byte   W06
 .byte   An3 ,v076
 .byte   W06
 .byte   An3 ,v027
 .byte   W06
 .byte   An3 ,v086
 .byte   W06
 .byte   An3 ,v027
 .byte   W06
 .byte   An3 ,v104
 .byte   W06
 .byte   An3 ,v068
 .byte   W06
 .byte   An3 ,v041
 .byte   W18
@ 003   ----------------------------------------
 .byte   An3 ,v091
 .byte   W06
 .byte   An3 ,v027
 .byte   W06
 .byte   An3 ,v091
 .byte   W06
 .byte   An3
 .byte   W06
 .byte   An3 ,v051
 .byte   W06
 .byte   An3 ,v102
 .byte   W06
 .byte   An3 ,v037
 .byte   W06
 .byte   An3 ,v086
 .byte   W06
 .byte   N06 ,An3 ,v056
 .byte   W12
 .byte   N05 ,An3 ,v075
 .byte   W06
 .byte   An3 ,v103
 .byte   W06
 .byte   An3 ,v051
 .byte   W06
 .byte   An3 ,v073
 .byte   W06
 .byte   An3 ,v060
 .byte   W06
 .byte   An3 ,v038
 .byte   W06
@ 004   ----------------------------------------
 .byte   An3 ,v055
 .byte   W06
 .byte   An3 ,v049
 .byte   W06
 .byte   An3 ,v068
 .byte   W06
 .byte   An3 ,v081
 .byte   W06
 .byte   An3 ,v047
 .byte   W06
 .byte   An3 ,v086
 .byte   W96
@ 005   ----------------------------------------
 .byte   W52
 .byte   W01
 .byte   GOTO
  .word Label_1_01023178
 .byte   FINE

@**************** Track 3 (Midi-Chn.2) ****************@

song09_003:
@ 000   ----------------------------------------
Label_2_01023270:
 .byte   TEMPO , 64*song09_tbs/2
 .byte   KEYSH , song09_key+0
 .byte   VOICE , 33
 .byte   VOL , 76*song09_mvl/mxv
 .byte   PAN , c_v+14
 .byte   N06 ,Cn2 ,v102
 .byte   W06
 .byte   N04 ,Dn2
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
 .byte   W06
@ 001   ----------------------------------------
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
@ 002   ----------------------------------------
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
 .byte   N04 ,Gn2 ,v114
 .byte   W12
 .byte   Gn2
 .byte   W06
 .byte   Gn2
 .byte   W12
 .byte   Gn2
 .byte   W06
 .byte   Gn1
 .byte   W12
 .byte   Gn1
 .byte   W06
 .byte   Gn1
 .byte   W12
 .byte   Gn1
 .byte   W06
 .byte   Cn2 ,v102
 .byte   W06
@ 003   ----------------------------------------
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
 .byte   W06
 .byte   Dn2
 .byte   W03
@ 004   ----------------------------------------
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
 .byte   Ds2
 .byte   W06
@ 005   ----------------------------------------
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
 .byte   N04 ,Gn2 ,v114
 .byte   W12
 .byte   Gn2
 .byte   W06
 .byte   Gn2
 .byte   W12
 .byte   Gn2
 .byte   W06
 .byte   Gn1
 .byte   W12
 .byte   Gn1
 .byte   W06
 .byte   Gn1
 .byte   W12
 .byte   Gn1
 .byte   W05
 .byte   GOTO
  .word Label_2_01023270
 .byte   FINE

@**************** Track 4 (Midi-Chn.3) ****************@

song09_004:
@ 000   ----------------------------------------
Label_3_01023390:
 .byte   TEMPO , 64*song09_tbs/2
 .byte   KEYSH , song09_key+0
 .byte   VOICE , 60
 .byte   VOL , 50*song09_mvl/mxv
 .byte   PAN , c_v-25
 .byte   N11 ,Cn3 ,v114
 .byte   W36
 .byte   Cn3
 .byte   W36
 .byte   Cn3
 .byte   W30
@ 001   ----------------------------------------
 .byte   N05 ,Gn3
 .byte   W06
 .byte   N11 ,Cn3
 .byte   W12
 .byte   Ds3
 .byte   W12
 .byte   Ds3
 .byte   W12
 .byte   Cn3
 .byte   W36
 .byte   Cn3
 .byte   W36
@ 002   ----------------------------------------
 .byte   N05
 .byte   W12
 .byte   Cn3
 .byte   W06
 .byte   Cn3
 .byte   W12
 .byte   Cn3
 .byte   W06
 .byte   Bn2
 .byte   W12
 .byte   Bn2
 .byte   W06
 .byte   Bn2
 .byte   W12
 .byte   Bn2
 .byte   W06
 .byte   N11 ,Cn3
 .byte   W36
@ 003   ----------------------------------------
 .byte   Cn3
 .byte   W36
 .byte   Cn3
 .byte   W30
 .byte   N05 ,Gn3
 .byte   W06
 .byte   N11 ,Cn3
 .byte   W12
 .byte   Ds3
 .byte   W12
@ 004   ----------------------------------------
 .byte   Ds3
 .byte   W12
 .byte   Cn3
 .byte   W36
 .byte   Cn3
 .byte   W36
 .byte   N05
 .byte   W12
@ 005   ----------------------------------------
 .byte   Cn3
 .byte   W06
 .byte   Cn3
 .byte   W12
 .byte   Cn3
 .byte   W06
 .byte   Bn2
 .byte   W12
 .byte   Bn2
 .byte   W06
 .byte   Bn2
 .byte   W12
 .byte   Bn2
 .byte   W05
 .byte   GOTO
  .word Label_3_01023390
 .byte   FINE

@**************** Track 5 (Midi-Chn.4) ****************@

song09_005:
@ 000   ----------------------------------------
Label_4_01023400:
 .byte   TEMPO , 64*song09_tbs/2
 .byte   KEYSH , song09_key+0
 .byte   VOICE , 56
 .byte   VOL , 82*song09_mvl/mxv
 .byte   PAN , c_v+25
 .byte   N11 ,Ds4 ,v114
 .byte   W36
 .byte   Ds4
 .byte   W36
 .byte   Ds4
 .byte   W30
@ 001   ----------------------------------------
 .byte   N05
 .byte   W06
 .byte   N11
 .byte   W12
 .byte   Gn4
 .byte   W12
 .byte   Gn4
 .byte   W12
 .byte   Ds4
 .byte   W36
 .byte   Ds4
 .byte   W36
@ 002   ----------------------------------------
 .byte   N05 ,Dn4
 .byte   W12
 .byte   Dn4
 .byte   W06
 .byte   Dn4
 .byte   W12
 .byte   Dn4
 .byte   W06
 .byte   Dn4
 .byte   W12
 .byte   Dn4
 .byte   W06
 .byte   Dn4
 .byte   W12
 .byte   Dn4
 .byte   W06
 .byte   N11 ,Ds4
 .byte   W36
@ 003   ----------------------------------------
 .byte   Ds4
 .byte   W36
 .byte   Ds4
 .byte   W30
 .byte   N05
 .byte   W06
 .byte   N11
 .byte   W12
 .byte   Gn4
 .byte   W12
@ 004   ----------------------------------------
 .byte   Gn4
 .byte   W12
 .byte   Ds4
 .byte   W36
 .byte   Ds4
 .byte   W36
 .byte   N05 ,Dn4
 .byte   W12
@ 005   ----------------------------------------
 .byte   Dn4
 .byte   W06
 .byte   Dn4
 .byte   W12
 .byte   Dn4
 .byte   W06
 .byte   Dn4
 .byte   W12
 .byte   Dn4
 .byte   W06
 .byte   Dn4
 .byte   W12
 .byte   Dn4
 .byte   W05
 .byte   GOTO
  .word Label_4_01023400
 .byte   FINE

@**************** Track 6 (Midi-Chn.5) ****************@

song09_006:
@ 000   ----------------------------------------
Label_5_0102346C:
 .byte   TEMPO , 64*song09_tbs/2
 .byte   KEYSH , song09_key+0
 .byte   VOICE , 40
 .byte   VOL , 73*song09_mvl/mxv
 .byte   PAN , c_v+25
 .byte   N11 ,Gn4 ,v114
 .byte   W36
 .byte   Gs4
 .byte   W36
 .byte   Gn4
 .byte   W30
@ 001   ----------------------------------------
 .byte   N05
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
 .byte   W36
@ 002   ----------------------------------------
 .byte   N05 ,Gn4
 .byte   W12
 .byte   Gn4
 .byte   W06
 .byte   Gn4
 .byte   W12
 .byte   Gn4
 .byte   W06
 .byte   Gn4
 .byte   W12
 .byte   Gn4
 .byte   W06
 .byte   Gn4
 .byte   W12
 .byte   Gn4
 .byte   W06
 .byte   N11
 .byte   W36
@ 003   ----------------------------------------
 .byte   Gs4
 .byte   W36
 .byte   Gn4
 .byte   W30
 .byte   N05
 .byte   W06
 .byte   N11 ,Gs4
 .byte   W12
 .byte   As4
 .byte   W12
@ 004   ----------------------------------------
 .byte   Cn5
 .byte   W12
 .byte   Gn4
 .byte   W36
 .byte   Gs4
 .byte   W36
 .byte   N05 ,Gn4
 .byte   W12
@ 005   ----------------------------------------
 .byte   Gn4
 .byte   W06
 .byte   Gn4
 .byte   W12
 .byte   Gn4
 .byte   W06
 .byte   Gn4
 .byte   W12
 .byte   Gn4
 .byte   W06
 .byte   Gn4
 .byte   W12
 .byte   Gn4
 .byte   W05
 .byte   GOTO
  .word Label_5_0102346C
 .byte   FINE

@**************** Track 7 (Midi-Chn.6) ****************@

song09_007:
@ 000   ----------------------------------------
Label_6_010DD030:
 .byte   TEMPO , 64*song09_tbs/2
 .byte   KEYSH , song09_key+0
 .byte   VOICE , 56
 .byte   VOL , 100*song09_mvl/mxv
 .byte   PAN , c_v-14
 .byte   N04 ,Cn4 ,v102
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
 .byte   W06
@ 001   ----------------------------------------
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
@ 002   ----------------------------------------
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
 .byte   Cn4
 .byte   W06
@ 003   ----------------------------------------
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
 .byte   W06
 .byte   Dn4
 .byte   W03
@ 004   ----------------------------------------
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
 .byte   Ds4
 .byte   W06
@ 005   ----------------------------------------
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
 .byte   GOTO
  .word Label_6_010DD030
 .byte   FINE

@**************** Track 8 (Midi-Chn.7) ****************@

song09_008:
@ 000   ----------------------------------------
Label_7_010DD13C:
 .byte   TEMPO , 64*song09_tbs/2
 .byte   KEYSH , song09_key+0
 .byte   VOICE , 46
 .byte   VOL , 77*song09_mvl/mxv
 .byte   PAN , c_v-25
 .byte   N32 ,Gn3 ,v109
 .byte   W16
 .byte   N03
 .byte   W20
 .byte   N32 ,Gs3
 .byte   W16
 .byte   N03
 .byte   W20
 .byte   N32 ,Gn3
 .byte   W16
 .byte   N03
 .byte   W20
@ 001   ----------------------------------------
 .byte   N11 ,Gs3
 .byte   W12
 .byte   As3
 .byte   W12
 .byte   Cn4
 .byte   W12
 .byte   N01 ,Cn3 ,v118
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
@ 002   ----------------------------------------
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
 .byte   N32 ,Gn3 ,v109
 .byte   W16
@ 003   ----------------------------------------
 .byte   N03
 .byte   W20
 .byte   N32 ,Gs3
 .byte   W16
 .byte   N03
 .byte   W20
 .byte   N32 ,Gn3
 .byte   W16
 .byte   N03
 .byte   W20
 .byte   N11 ,Gs3
 .byte   W12
@ 004   ----------------------------------------
 .byte   As3
 .byte   W12
 .byte   Cn4
 .byte   W12
 .byte   N01 ,Cn3 ,v118
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
@ 005   ----------------------------------------
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
 .byte   GOTO
  .word Label_7_010DD13C
 .byte   FINE

@******************************************************@
	.align	2

song09:
	.byte	8	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song09_pri	@ Priority
	.byte	song09_rev	@ Reverb.
    
	.word	song09_grp
    
	.word	song09_001
	.word	song09_002
	.word	song09_003
	.word	song09_004
	.word	song09_005
	.word	song09_006
	.word	song09_007
	.word	song09_008

	.end
