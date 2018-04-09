	.include "MPlayDef.s"

	.equ	song04_grp, voicegroup000
	.equ	song04_pri, 0
	.equ	song04_rev, 0
	.equ	song04_mvl, 127
	.equ	song04_key, 0
	.equ	song04_tbs, 1
	.equ	song04_exg, 0
	.equ	song04_cmp, 1

	.section .rodata
	.global	song04
	.align	2


@**************** Track 1 (Midi-Chn.0) ****************@

song04_001:
@ 000   ----------------------------------------
 .byte   KEYSH , song04_key+0
 .byte   TEMPO , 64*song04_tbs/2
 .byte   W54
Label_0_010A65D9:
 .byte   W42
@ 001   ----------------------------------------
 .byte   W96
@ 002   ----------------------------------------
 .byte   W96
@ 003   ----------------------------------------
 .byte   W96
@ 004   ----------------------------------------
 .byte   W96
@ 005   ----------------------------------------
 .byte   W96
@ 006   ----------------------------------------
 .byte   W96
@ 007   ----------------------------------------
 .byte   W96
@ 008   ----------------------------------------
Label_0_010A65E1:
 .byte   W54
 .byte   VOICE , 60
 .byte   VOL , 65*song04_mvl/mxv
 .byte   PAN , c_v-25
 .byte   N03 ,En2 ,v108
 .byte   W06
 .byte   En2 ,v096
 .byte   W12
 .byte   En2 ,v104
 .byte   W12
 .byte   N03
 .byte   W12
 .byte   PEND 
@ 009   ----------------------------------------
Label_0_010A65F5:
 .byte   N03 ,En2 ,v104
 .byte   W06
 .byte   Fn2 ,v108
 .byte   W06
 .byte   Fn2 ,v096
 .byte   W12
 .byte   Fn2 ,v104
 .byte   W12
 .byte   N03
 .byte   W12
 .byte   N03
 .byte   W06
 .byte   En2 ,v108
 .byte   W06
 .byte   En2 ,v096
 .byte   W12
 .byte   En2 ,v104
 .byte   W12
 .byte   N03
 .byte   W12
 .byte   PEND 
 .byte   PATT
  .word Label_0_010A65F5
@ 010   ----------------------------------------
Label_0_010A6617:
 .byte   N03 ,En2 ,v104
 .byte   W06
 .byte   Fn2 ,v108
 .byte   W06
 .byte   Fn2 ,v096
 .byte   W12
 .byte   Fn2 ,v104
 .byte   W12
 .byte   N03
 .byte   W12
 .byte   N03
 .byte   W06
 .byte   En2
 .byte   W06
 .byte   N03
 .byte   W12
 .byte   N03
 .byte   W12
 .byte   N03
 .byte   W12
 .byte   PEND 
@ 011   ----------------------------------------
Label_0_010A6631:
 .byte   N03 ,En2 ,v104
 .byte   W06
 .byte   N07 ,Cn2 ,v096
 .byte   W12
 .byte   N07
 .byte   W12
 .byte   N07
 .byte   W12
 .byte   N07
 .byte   W12
 .byte   PAN , c_v-34
 .byte   N05 ,Cn2 ,v108
 .byte   W09
 .byte   N01
 .byte   W03
 .byte   N14
 .byte   W24
 .byte   N02
 .byte   W04
 .byte   N02
 .byte   W02
 .byte   PEND 
@ 012   ----------------------------------------
Label_0_010A664E:
 .byte   W02
 .byte   N02 ,Cn2 ,v108
 .byte   W04
 .byte   PAN , c_v+43
 .byte   N05 ,As2 ,v112
 .byte   W09
 .byte   N01
 .byte   W03
 .byte   N14
 .byte   W24
 .byte   N02
 .byte   W04
 .byte   N02
 .byte   W04
 .byte   N02
 .byte   W04
 .byte   PAN , c_v-14
 .byte   N05 ,Fn2 ,v116
 .byte   W09
 .byte   N01
 .byte   W03
 .byte   N14
 .byte   W24
 .byte   N02
 .byte   W04
 .byte   N02
 .byte   W02
 .byte   PEND 
@ 013   ----------------------------------------
Label_0_010A6672:
 .byte   W02
 .byte   N02 ,Fn2 ,v116
 .byte   W04
 .byte   PAN , c_v-58
 .byte   N05 ,Dn3 ,v120
 .byte   W09
 .byte   N01
 .byte   W03
 .byte   N14
 .byte   W24
 .byte   N02
 .byte   W04
 .byte   N02
 .byte   W04
 .byte   N02
 .byte   W44
 .byte   W02
 .byte   PEND 
@ 014   ----------------------------------------
 .byte   W96
@ 015   ----------------------------------------
 .byte   W54
 .byte   GOTO
  .word Label_0_010A65D9
@ 016   ----------------------------------------
 .byte   W42
 .byte   W96
@ 017   ----------------------------------------
 .byte   W96
@ 018   ----------------------------------------
 .byte   W96
@ 019   ----------------------------------------
 .byte   W96
@ 020   ----------------------------------------
 .byte   W96
@ 021   ----------------------------------------
 .byte   W96
@ 022   ----------------------------------------
 .byte   W96
 .byte   PATT
  .word Label_0_010A65E1
 .byte   PATT
  .word Label_0_010A65F5
 .byte   PATT
  .word Label_0_010A65F5
 .byte   PATT
  .word Label_0_010A6617
 .byte   PATT
  .word Label_0_010A6631
 .byte   PATT
  .word Label_0_010A664E
 .byte   PATT
  .word Label_0_010A6672
@ 023   ----------------------------------------
 .byte   W96
@ 024   ----------------------------------------
 .byte   W52
 .byte   W01
 .byte   FINE

@**************** Track 2 (Midi-Chn.1) ****************@

song04_002:
@ 000   ----------------------------------------
 .byte   KEYSH , song04_key+0
 .byte   W06
 .byte   VOICE , 60
 .byte   VOL , 65*song04_mvl/mxv
 .byte   PAN , c_v-25
 .byte   N07 ,Cn3 ,v096
 .byte   W12
 .byte   N02
 .byte   W04
 .byte   N02
 .byte   W04
 .byte   N02
 .byte   W10
 .byte   N03
 .byte   W12
 .byte   N03
 .byte   W06
Label_1_010A66D7:
 .byte   W06
 .byte   N03 ,Gn2 ,v104
 .byte   W12
 .byte   N03
 .byte   W12
 .byte   N03
 .byte   W12
@ 001   ----------------------------------------
Label_1_010A66E0:
 .byte   N03 ,Gn2 ,v104
 .byte   W12
 .byte   Fn2
 .byte   W12
 .byte   N03
 .byte   W12
 .byte   N03
 .byte   W12
 .byte   N03
 .byte   W12
 .byte   Gn2
 .byte   W12
 .byte   N03
 .byte   W12
 .byte   N03
 .byte   W12
 .byte   PEND 
 .byte   PATT
  .word Label_1_010A66E0
 .byte   PATT
  .word Label_1_010A66E0
@ 002   ----------------------------------------
Label_1_010A66FD:
 .byte   N03 ,Gn2 ,v104
 .byte   W12
 .byte   Fn2
 .byte   W12
 .byte   N03
 .byte   W12
 .byte   N03
 .byte   W12
 .byte   N03
 .byte   W06
 .byte   Gn2 ,v108
 .byte   W06
 .byte   Gn2 ,v096
 .byte   W12
 .byte   Gn2 ,v104
 .byte   W12
 .byte   N03
 .byte   W12
 .byte   PEND 
@ 003   ----------------------------------------
Label_1_010A6715:
 .byte   N03 ,Gn2 ,v104
 .byte   W06
 .byte   Fn2 ,v108
 .byte   W06
 .byte   Fn2 ,v096
 .byte   W12
 .byte   Fn2 ,v104
 .byte   W12
 .byte   N03
 .byte   W12
 .byte   N03
 .byte   W06
 .byte   Gn2 ,v108
 .byte   W06
 .byte   Gn2 ,v096
 .byte   W12
 .byte   Gn2 ,v104
 .byte   W12
 .byte   N03
 .byte   W12
 .byte   PEND 
 .byte   PATT
  .word Label_1_010A6715
 .byte   PATT
  .word Label_1_010A6715
@ 004   ----------------------------------------
 .byte   N03 ,Gn2 ,v104
 .byte   W06
 .byte   Fn2 ,v108
 .byte   W06
 .byte   Fn2 ,v096
 .byte   W12
 .byte   Fn2 ,v104
 .byte   W12
 .byte   N03
 .byte   W12
 .byte   N03
 .byte   W06
 .byte   VOICE , 41
 .byte   VOL , 30*song04_mvl/mxv
 .byte   PAN , c_v+0
 .byte   N03 ,Bn4 ,v100
 .byte   W04
 .byte   Gn4 ,v088
 .byte   W04
 .byte   Bn4
 .byte   W04
 .byte   N23 ,En5 ,v092
 .byte   W24
 .byte   N03 ,Bn4 ,v100
 .byte   W04
 .byte   Gn4 ,v088
 .byte   W02
@ 005   ----------------------------------------
Label_1_010A6767:
 .byte   W02
 .byte   N03 ,Bn4 ,v088
 .byte   W04
 .byte   N23 ,An4
 .byte   W24
 .byte   N08
 .byte   W09
 .byte   N02 ,Bn4
 .byte   W03
 .byte   N11 ,Cn5
 .byte   W12
 .byte   N03 ,Bn4 ,v100
 .byte   W04
 .byte   Gn4 ,v088
 .byte   W04
 .byte   Bn4
 .byte   W04
 .byte   N23 ,En5 ,v092
 .byte   W24
 .byte   N03 ,Bn4 ,v100
 .byte   W04
 .byte   Gn4 ,v088
 .byte   W02
 .byte   PEND 
@ 006   ----------------------------------------
 .byte   W02
 .byte   Bn4
 .byte   W04
 .byte   N23 ,Dn5
 .byte   W24
 .byte   N11 ,An4
 .byte   W12
 .byte   Fn4
 .byte   W12
 .byte   N03 ,Bn4 ,v100
 .byte   W04
 .byte   Gn4 ,v088
 .byte   W04
 .byte   Bn4
 .byte   W04
 .byte   N23 ,En5 ,v092
 .byte   W24
 .byte   N03 ,Bn4 ,v100
 .byte   W04
 .byte   Gn4 ,v088
 .byte   W02
 .byte   PATT
  .word Label_1_010A6767
@ 007   ----------------------------------------
 .byte   W02
 .byte   N03 ,Bn4 ,v088
 .byte   W04
 .byte   N23 ,Dn5
 .byte   W24
 .byte   N11 ,An4
 .byte   W12
 .byte   Fn4
 .byte   W12
 .byte   N08 ,En4 ,v112
 .byte   W09
 .byte   N02 ,Fn4
 .byte   W03
 .byte   N32 ,Gn4
 .byte   W30
@ 008   ----------------------------------------
 .byte   W06
 .byte   N08 ,Gn4 ,v116
 .byte   W09
 .byte   N02 ,An4
 .byte   W03
 .byte   N32 ,As4
 .byte   W36
 .byte   N08 ,An4 ,v120
 .byte   W09
 .byte   N02 ,Bn4
 .byte   W03
 .byte   N32 ,Cn5
 .byte   W30
@ 009   ----------------------------------------
 .byte   W06
 .byte   N08 ,Bn4
 .byte   W09
 .byte   N02 ,Cn5
 .byte   W03
 .byte   N32 ,Dn5
 .byte   W36
 .byte   VOICE , 60
 .byte   VOL , 65*song04_mvl/mxv
 .byte   PAN , c_v-25
 .byte   Ds1
 .byte   N03 ,Gn2 ,v108
 .byte   W06
 .byte   Gn2 ,v096
 .byte   W12
 .byte   Gn2 ,v108
 .byte   W06
 .byte   Gn2 ,v096
 .byte   W18
@ 010   ----------------------------------------
Label_1_010A67FA:
 .byte   N03 ,Gn2 ,v096
 .byte   W06
 .byte   Gn2 ,v108
 .byte   W06
 .byte   Gn2 ,v096
 .byte   W12
 .byte   Gn2 ,v108
 .byte   W06
 .byte   Gn2 ,v096
 .byte   W18
 .byte   N03
 .byte   W06
 .byte   As2 ,v108
 .byte   W06
 .byte   As2 ,v096
 .byte   W12
 .byte   As2 ,v108
 .byte   W06
 .byte   As2 ,v096
 .byte   W18
 .byte   PEND 
@ 011   ----------------------------------------
 .byte   N03
 .byte   W06
 .byte   As2 ,v108
 .byte   W06
 .byte   As2 ,v096
 .byte   W12
 .byte   As2 ,v108
 .byte   W06
 .byte   As2 ,v096
 .byte   W18
 .byte   N03
 .byte   W06
 .byte   GOTO
  .word Label_1_010A66D7
@ 012   ----------------------------------------
 .byte   W06
 .byte   N03 ,Gn2 ,v104
 .byte   W12
 .byte   N03
 .byte   W12
 .byte   N03
 .byte   W12
 .byte   PATT
  .word Label_1_010A66E0
 .byte   PATT
  .word Label_1_010A66E0
 .byte   PATT
  .word Label_1_010A66E0
 .byte   PATT
  .word Label_1_010A66FD
 .byte   PATT
  .word Label_1_010A6715
 .byte   PATT
  .word Label_1_010A6715
 .byte   PATT
  .word Label_1_010A6715
@ 013   ----------------------------------------
 .byte   N03 ,Gn2 ,v104
 .byte   W06
 .byte   Fn2 ,v108
 .byte   W06
 .byte   Fn2 ,v096
 .byte   W12
 .byte   Fn2 ,v104
 .byte   W12
 .byte   N03
 .byte   W12
 .byte   N03
 .byte   W06
 .byte   VOICE , 41
 .byte   VOL , 30*song04_mvl/mxv
 .byte   PAN , c_v+0
 .byte   W01
 .byte   N03 ,Bn4 ,v100
 .byte   W04
 .byte   Gn4 ,v088
 .byte   W04
 .byte   Bn4
 .byte   W04
 .byte   N23 ,En5 ,v092
 .byte   W24
 .byte   N03 ,Bn4 ,v100
 .byte   W04
 .byte   Gn4 ,v088
 .byte   W01
@ 014   ----------------------------------------
Label_1_010A6886:
 .byte   W03
 .byte   N03 ,Bn4 ,v088
 .byte   W04
 .byte   N23 ,An4
 .byte   W24
 .byte   N08
 .byte   W09
 .byte   N02 ,Bn4
 .byte   W03
 .byte   N11 ,Cn5
 .byte   W12
 .byte   N03 ,Bn4 ,v100
 .byte   W04
 .byte   Gn4 ,v088
 .byte   W04
 .byte   Bn4
 .byte   W04
 .byte   N23 ,En5 ,v092
 .byte   W24
 .byte   N03 ,Bn4 ,v100
 .byte   W04
 .byte   Gn4 ,v088
 .byte   W01
 .byte   PEND 
@ 015   ----------------------------------------
 .byte   W03
 .byte   Bn4
 .byte   W04
 .byte   N23 ,Dn5
 .byte   W24
 .byte   N11 ,An4
 .byte   W12
 .byte   Fn4
 .byte   W12
 .byte   N03 ,Bn4 ,v100
 .byte   W04
 .byte   Gn4 ,v088
 .byte   W04
 .byte   Bn4
 .byte   W04
 .byte   N23 ,En5 ,v092
 .byte   W24
 .byte   N03 ,Bn4 ,v100
 .byte   W04
 .byte   Gn4 ,v088
 .byte   W01
 .byte   PATT
  .word Label_1_010A6886
@ 016   ----------------------------------------
 .byte   W03
 .byte   N03 ,Bn4 ,v088
 .byte   W04
 .byte   N23 ,Dn5
 .byte   W24
 .byte   N11 ,An4
 .byte   W12
 .byte   Fn4
 .byte   W12
 .byte   N08 ,En4 ,v112
 .byte   W09
 .byte   N02 ,Fn4
 .byte   W03
 .byte   N32 ,Gn4
 .byte   W28
 .byte   W01
@ 017   ----------------------------------------
 .byte   W07
 .byte   N08 ,Gn4 ,v116
 .byte   W09
 .byte   N02 ,An4
 .byte   W03
 .byte   N32 ,As4
 .byte   W36
 .byte   N08 ,An4 ,v120
 .byte   W09
 .byte   N02 ,Bn4
 .byte   W03
 .byte   N32 ,Cn5
 .byte   W28
 .byte   W01
@ 018   ----------------------------------------
 .byte   W07
 .byte   N08 ,Bn4
 .byte   W09
 .byte   N02 ,Cn5
 .byte   W03
 .byte   N32 ,Dn5
 .byte   W32
 .byte   W03
 .byte   VOICE , 60
 .byte   VOL , 65*song04_mvl/mxv
 .byte   PAN , c_v-25
 .byte   Ds1
 .byte   N03 ,Gn2 ,v108
 .byte   W06
 .byte   Gn2 ,v096
 .byte   W12
 .byte   Gn2 ,v108
 .byte   W06
 .byte   Gn2 ,v096
 .byte   W18
 .byte   PATT
  .word Label_1_010A67FA
@ 019   ----------------------------------------
 .byte   N03 ,As2 ,v096
 .byte   W06
 .byte   As2 ,v108
 .byte   W06
 .byte   As2 ,v096
 .byte   W12
 .byte   As2 ,v108
 .byte   W06
 .byte   As2 ,v096
 .byte   W18
 .byte   N03
 .byte   W05
 .byte   FINE

@**************** Track 3 (Midi-Chn.2) ****************@

song04_003:
@ 000   ----------------------------------------
 .byte   KEYSH , song04_key+0
 .byte   W06
 .byte   VOICE , 60
 .byte   VOL , 67*song04_mvl/mxv
 .byte   PAN , c_v-25
 .byte   N07 ,Dn3 ,v096
 .byte   W12
 .byte   N02
 .byte   W04
 .byte   N02
 .byte   W04
 .byte   N02
 .byte   W10
 .byte   N03
 .byte   W12
 .byte   N03
 .byte   W06
Label_2_010A694B:
 .byte   W06
 .byte   N03 ,Bn2 ,v104
 .byte   W12
 .byte   N03
 .byte   W12
 .byte   N03
 .byte   W12
@ 001   ----------------------------------------
Label_2_010A6954:
 .byte   N03 ,Bn2 ,v104
 .byte   W12
 .byte   An2
 .byte   W12
 .byte   N03
 .byte   W12
 .byte   N03
 .byte   W12
 .byte   N03
 .byte   W12
 .byte   Bn2
 .byte   W12
 .byte   N03
 .byte   W12
 .byte   N03
 .byte   W12
 .byte   PEND 
 .byte   PATT
  .word Label_2_010A6954
 .byte   PATT
  .word Label_2_010A6954
@ 002   ----------------------------------------
Label_2_010A6971:
 .byte   N03 ,Bn2 ,v104
 .byte   W12
 .byte   As2
 .byte   W12
 .byte   N03
 .byte   W12
 .byte   N03
 .byte   W12
 .byte   N03
 .byte   W06
 .byte   Bn2 ,v108
 .byte   W06
 .byte   Bn2 ,v096
 .byte   W12
 .byte   Bn2 ,v104
 .byte   W12
 .byte   N03
 .byte   W12
 .byte   PEND 
@ 003   ----------------------------------------
Label_2_010A6989:
 .byte   N03 ,Bn2 ,v104
 .byte   W06
 .byte   An2 ,v108
 .byte   W06
 .byte   An2 ,v096
 .byte   W12
 .byte   An2 ,v104
 .byte   W12
 .byte   N03
 .byte   W12
 .byte   N03
 .byte   W06
 .byte   Bn2 ,v108
 .byte   W06
 .byte   Bn2 ,v096
 .byte   W12
 .byte   Bn2 ,v104
 .byte   W12
 .byte   N03
 .byte   W12
 .byte   PEND 
 .byte   PATT
  .word Label_2_010A6989
 .byte   PATT
  .word Label_2_010A6989
@ 004   ----------------------------------------
Label_2_010A69B0:
 .byte   N03 ,Bn2 ,v104
 .byte   W06
 .byte   An2 ,v108
 .byte   W06
 .byte   An2 ,v096
 .byte   W12
 .byte   An2 ,v104
 .byte   W12
 .byte   N03
 .byte   W12
 .byte   N03
 .byte   W06
 .byte   Gn2 ,v108
 .byte   W06
 .byte   Gn2 ,v096
 .byte   W12
 .byte   Gn2 ,v104
 .byte   W12
 .byte   N03
 .byte   W12
 .byte   PEND 
@ 005   ----------------------------------------
Label_2_010A69CD:
 .byte   N03 ,Gn2 ,v104
 .byte   W06
 .byte   An2 ,v108
 .byte   W06
 .byte   An2 ,v096
 .byte   W12
 .byte   An2 ,v104
 .byte   W12
 .byte   N03
 .byte   W12
 .byte   N03
 .byte   W06
 .byte   Gn2 ,v108
 .byte   W06
 .byte   Gn2 ,v096
 .byte   W12
 .byte   Gn2 ,v104
 .byte   W12
 .byte   N03
 .byte   W12
 .byte   PEND 
 .byte   PATT
  .word Label_2_010A69CD
 .byte   PATT
  .word Label_2_010A69CD
@ 006   ----------------------------------------
Label_2_010A69F4:
 .byte   N03 ,Gn2 ,v104
 .byte   W06
 .byte   N07 ,Fn2
 .byte   W12
 .byte   N07
 .byte   W12
 .byte   N07
 .byte   W12
 .byte   N07
 .byte   W12
 .byte   VOICE , 62
 .byte   VOL , 63*song04_mvl/mxv
 .byte   PAN , c_v-25
 .byte   W18
 .byte   N02 ,Cn4
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W06
 .byte   N02
 .byte   W06
 .byte   N02
 .byte   W06
 .byte   PEND 
@ 007   ----------------------------------------
 .byte   N02
 .byte   W24
 .byte   Ds4 ,v108
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N03
 .byte   W08
 .byte   N03
 .byte   W08
 .byte   N03
 .byte   W24
 .byte   W02
 .byte   N02 ,Fn4 ,v112
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N03
 .byte   W08
 .byte   N03
 .byte   W08
 .byte   N03
 .byte   W02
@ 008   ----------------------------------------
 .byte   W06
 .byte   N10 ,Gn4 ,v116
 .byte   W18
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N05
 .byte   W12
 .byte   N05
 .byte   W12
 .byte   VOICE , 60
 .byte   VOL , 67*song04_mvl/mxv
 .byte   PAN , c_v-25
 .byte   N03 ,Bn2 ,v108
 .byte   W06
 .byte   Bn2 ,v096
 .byte   W12
 .byte   Bn2 ,v108
 .byte   W06
 .byte   Bn2 ,v096
 .byte   W18
@ 009   ----------------------------------------
Label_2_010A6A4E:
 .byte   N03 ,Bn2 ,v096
 .byte   W06
 .byte   Cn3 ,v108
 .byte   W06
 .byte   Cn3 ,v096
 .byte   W12
 .byte   Cn3 ,v108
 .byte   W06
 .byte   Cn3 ,v096
 .byte   W18
 .byte   N03
 .byte   W06
 .byte   Ds3 ,v108
 .byte   W06
 .byte   Ds3 ,v096
 .byte   W12
 .byte   Ds3 ,v108
 .byte   W06
 .byte   Ds3 ,v096
 .byte   W18
 .byte   PEND 
@ 010   ----------------------------------------
 .byte   N03
 .byte   W06
 .byte   Dn3 ,v108
 .byte   W06
 .byte   Dn3 ,v096
 .byte   W12
 .byte   Dn3 ,v108
 .byte   W06
 .byte   Dn3 ,v096
 .byte   W18
 .byte   N03
 .byte   W06
 .byte   GOTO
  .word Label_2_010A694B
@ 011   ----------------------------------------
 .byte   W06
 .byte   N03 ,Bn2 ,v104
 .byte   W12
 .byte   N03
 .byte   W12
 .byte   N03
 .byte   W12
 .byte   PATT
  .word Label_2_010A6954
 .byte   PATT
  .word Label_2_010A6954
 .byte   PATT
  .word Label_2_010A6954
 .byte   PATT
  .word Label_2_010A6971
 .byte   PATT
  .word Label_2_010A6989
 .byte   PATT
  .word Label_2_010A6989
 .byte   PATT
  .word Label_2_010A6989
 .byte   PATT
  .word Label_2_010A69B0
 .byte   PATT
  .word Label_2_010A69CD
 .byte   PATT
  .word Label_2_010A69CD
 .byte   PATT
  .word Label_2_010A69CD
 .byte   PATT
  .word Label_2_010A69F4
@ 012   ----------------------------------------
 .byte   N02 ,Cn4 ,v104
 .byte   W24
 .byte   Ds4 ,v108
 .byte   W03
 .byte   N02
 .byte   W04
 .byte   N03
 .byte   W08
 .byte   N03
 .byte   W08
 .byte   N03
 .byte   W24
 .byte   W01
 .byte   N02 ,Fn4 ,v112
 .byte   W03
 .byte   N02
 .byte   W04
 .byte   N03
 .byte   W08
 .byte   N03
 .byte   W08
 .byte   N03
 .byte   W01
@ 013   ----------------------------------------
 .byte   W07
 .byte   N10 ,Gn4 ,v116
 .byte   W18
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N05
 .byte   W12
 .byte   N05
 .byte   W11
 .byte   VOICE , 60
 .byte   VOL , 67*song04_mvl/mxv
 .byte   PAN , c_v-25
 .byte   N03 ,Bn2 ,v108
 .byte   W06
 .byte   Bn2 ,v096
 .byte   W12
 .byte   Bn2 ,v108
 .byte   W06
 .byte   Bn2 ,v096
 .byte   W18
 .byte   PATT
  .word Label_2_010A6A4E
@ 014   ----------------------------------------
 .byte   N03 ,Ds3 ,v096
 .byte   W06
 .byte   Dn3 ,v108
 .byte   W06
 .byte   Dn3 ,v096
 .byte   W12
 .byte   Dn3 ,v108
 .byte   W06
 .byte   Dn3 ,v096
 .byte   W18
 .byte   N03
 .byte   W05
 .byte   FINE

@**************** Track 4 (Midi-Chn.3) ****************@

song04_004:
@ 000   ----------------------------------------
 .byte   KEYSH , song04_key+0
 .byte   W06
 .byte   VOICE , 60
 .byte   VOL , 70*song04_mvl/mxv
 .byte   PAN , c_v+25
 .byte   N07 ,Gn3 ,v096
 .byte   W12
 .byte   N02
 .byte   W04
 .byte   N02
 .byte   W04
 .byte   N02
 .byte   W04
 .byte   N03 ,Gn2
 .byte   W06
 .byte   Gn3
 .byte   W06
 .byte   Gn2
 .byte   W06
 .byte   Gn3
 .byte   W06
Label_3_010A6B38:
 .byte   PAN , c_v+25
 .byte   N03 ,Gn1 ,v076
 .byte   W06
 .byte   PAN , c_v+25
 .byte   N03 ,Dn3 ,v104
 .byte   W06
 .byte   PAN , c_v+25
 .byte   N03 ,Gn1 ,v076
 .byte   W06
 .byte   PAN , c_v+25
 .byte   N03 ,Dn3 ,v104
 .byte   W06
 .byte   PAN , c_v+25
 .byte   N03 ,Gn1 ,v076
 .byte   W06
 .byte   PAN , c_v+25
 .byte   N03 ,Dn3 ,v104
 .byte   W06
 .byte   PAN , c_v+25
 .byte   N03 ,Gn1 ,v076
 .byte   W06
@ 001   ----------------------------------------
Label_3_010A6B62:
 .byte   PAN , c_v+25
 .byte   N03 ,Dn3 ,v104
 .byte   W06
 .byte   PAN , c_v+25
 .byte   N03 ,Fn1 ,v076
 .byte   W06
 .byte   PAN , c_v+25
 .byte   N03 ,Cn3 ,v104
 .byte   W06
 .byte   PAN , c_v+25
 .byte   N03 ,Fn1 ,v076
 .byte   W06
 .byte   PAN , c_v+25
 .byte   N03 ,Cn3 ,v104
 .byte   W06
 .byte   PAN , c_v+25
 .byte   N03 ,Fn1 ,v076
 .byte   W06
 .byte   PAN , c_v+25
 .byte   N03 ,Cn3 ,v104
 .byte   W06
 .byte   PAN , c_v+25
 .byte   N03 ,Fn1 ,v076
 .byte   W06
 .byte   PAN , c_v+25
 .byte   N03 ,Cn3 ,v104
 .byte   W06
 .byte   PAN , c_v+25
 .byte   N03 ,Gn1 ,v076
 .byte   W06
 .byte   PAN , c_v+25
 .byte   N03 ,Dn3 ,v104
 .byte   W06
 .byte   PAN , c_v+25
 .byte   N03 ,Gn1 ,v076
 .byte   W06
 .byte   PAN , c_v+25
 .byte   N03 ,Dn3 ,v104
 .byte   W06
 .byte   PAN , c_v+25
 .byte   N03 ,Gn1 ,v076
 .byte   W06
 .byte   PAN , c_v+25
 .byte   N03 ,Dn3 ,v104
 .byte   W06
 .byte   PAN , c_v+25
 .byte   N03 ,Gn1 ,v076
 .byte   W06
 .byte   PEND 
 .byte   PATT
  .word Label_3_010A6B62
 .byte   PATT
  .word Label_3_010A6B62
@ 002   ----------------------------------------
Label_3_010A6BCD:
 .byte   PAN , c_v+25
 .byte   N03 ,Dn3 ,v104
 .byte   W06
 .byte   PAN , c_v+25
 .byte   N03 ,As1 ,v072
 .byte   W06
 .byte   PAN , c_v+25
 .byte   N03 ,Dn3 ,v104
 .byte   W06
 .byte   PAN , c_v+25
 .byte   N03 ,As1 ,v072
 .byte   W06
 .byte   PAN , c_v+25
 .byte   N03 ,Dn3 ,v104
 .byte   W06
 .byte   PAN , c_v+25
 .byte   N03 ,As1 ,v072
 .byte   W06
 .byte   PAN , c_v+25
 .byte   N03 ,Dn3 ,v104
 .byte   W06
 .byte   PAN , c_v+25
 .byte   N03 ,As1 ,v072
 .byte   W06
 .byte   PAN , c_v+25
 .byte   N03 ,Dn3 ,v104
 .byte   W06
 .byte   Dn3 ,v108
 .byte   W06
 .byte   Dn3 ,v096
 .byte   W12
 .byte   Dn3 ,v104
 .byte   W12
 .byte   N03
 .byte   W12
 .byte   PEND 
@ 003   ----------------------------------------
Label_3_010A6C0F:
 .byte   N03 ,Dn3 ,v104
 .byte   W06
 .byte   Cn3 ,v108
 .byte   W06
 .byte   Cn3 ,v096
 .byte   W12
 .byte   Cn3 ,v104
 .byte   W12
 .byte   N03
 .byte   W12
 .byte   N03
 .byte   W06
 .byte   Dn3 ,v108
 .byte   W06
 .byte   Dn3 ,v096
 .byte   W12
 .byte   Dn3 ,v104
 .byte   W12
 .byte   N03
 .byte   W12
 .byte   PEND 
 .byte   PATT
  .word Label_3_010A6C0F
 .byte   PATT
  .word Label_3_010A6C0F
@ 004   ----------------------------------------
Label_3_010A6C36:
 .byte   N03 ,Dn3 ,v104
 .byte   W06
 .byte   Cn3 ,v108
 .byte   W06
 .byte   Cn3 ,v096
 .byte   W12
 .byte   Cn3 ,v104
 .byte   W12
 .byte   N03
 .byte   W12
 .byte   N03
 .byte   W06
 .byte   Bn2 ,v108
 .byte   W06
 .byte   Bn2 ,v096
 .byte   W12
 .byte   Bn2 ,v104
 .byte   W12
 .byte   N03
 .byte   W12
 .byte   PEND 
@ 005   ----------------------------------------
Label_3_010A6C53:
 .byte   N03 ,Bn2 ,v104
 .byte   W06
 .byte   Cn3 ,v108
 .byte   W06
 .byte   Cn3 ,v096
 .byte   W12
 .byte   Cn3 ,v104
 .byte   W12
 .byte   N03
 .byte   W12
 .byte   N03
 .byte   W06
 .byte   Bn2 ,v108
 .byte   W06
 .byte   Bn2 ,v096
 .byte   W12
 .byte   Bn2 ,v104
 .byte   W12
 .byte   N03
 .byte   W12
 .byte   PEND 
 .byte   PATT
  .word Label_3_010A6C53
 .byte   PATT
  .word Label_3_010A6C53
@ 006   ----------------------------------------
Label_3_010A6C7A:
 .byte   N03 ,Bn2 ,v104
 .byte   W06
 .byte   N07 ,An2
 .byte   W12
 .byte   N07
 .byte   W12
 .byte   N07
 .byte   W12
 .byte   N07
 .byte   W12
 .byte   VOICE , 62
 .byte   VOL , 67*song04_mvl/mxv
 .byte   PAN , c_v+34
 .byte   W18
 .byte   N02 ,En4
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W06
 .byte   N02
 .byte   W06
 .byte   N02
 .byte   W06
 .byte   PEND 
@ 007   ----------------------------------------
 .byte   N02
 .byte   W24
 .byte   Gn4 ,v108
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N03
 .byte   W08
 .byte   N03
 .byte   W08
 .byte   N03
 .byte   W24
 .byte   W02
 .byte   N02 ,An4 ,v112
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N04
 .byte   W08
 .byte   N04
 .byte   W08
 .byte   N04
 .byte   W02
@ 008   ----------------------------------------
 .byte   W06
 .byte   N10 ,Bn4 ,v116
 .byte   W18
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N05
 .byte   W12
 .byte   N05
 .byte   W12
 .byte   VOICE , 60
 .byte   VOL , 70*song04_mvl/mxv
 .byte   PAN , c_v+25
 .byte   N03 ,Dn3 ,v108
 .byte   W06
 .byte   Dn3 ,v096
 .byte   W12
 .byte   Dn3 ,v108
 .byte   W06
 .byte   Dn3 ,v096
 .byte   W18
@ 009   ----------------------------------------
Label_3_010A6CD4:
 .byte   N03 ,Dn3 ,v096
 .byte   W06
 .byte   En3 ,v108
 .byte   W06
 .byte   En3 ,v096
 .byte   W12
 .byte   En3 ,v108
 .byte   W06
 .byte   En3 ,v096
 .byte   W18
 .byte   N03
 .byte   W06
 .byte   Gn3 ,v108
 .byte   W06
 .byte   Gn3 ,v096
 .byte   W12
 .byte   Gn3 ,v108
 .byte   W06
 .byte   Gn3 ,v096
 .byte   W18
 .byte   PEND 
@ 010   ----------------------------------------
 .byte   N03
 .byte   W06
 .byte   Fn3 ,v108
 .byte   W06
 .byte   Fn3 ,v096
 .byte   W12
 .byte   Fn3 ,v108
 .byte   W06
 .byte   Fn3 ,v096
 .byte   W18
 .byte   N03
 .byte   W06
 .byte   GOTO
  .word Label_3_010A6B38
@ 011   ----------------------------------------
 .byte   PAN , c_v+25
 .byte   N03 ,Gn1 ,v076
 .byte   W06
 .byte   PAN , c_v+25
 .byte   N03 ,Dn3 ,v104
 .byte   W06
 .byte   PAN , c_v+25
 .byte   N03 ,Gn1 ,v076
 .byte   W06
 .byte   PAN , c_v+25
 .byte   N03 ,Dn3 ,v104
 .byte   W06
 .byte   PAN , c_v+25
 .byte   N03 ,Gn1 ,v076
 .byte   W06
 .byte   PAN , c_v+25
 .byte   N03 ,Dn3 ,v104
 .byte   W06
 .byte   PAN , c_v+25
 .byte   N03 ,Gn1 ,v076
 .byte   W06
 .byte   PATT
  .word Label_3_010A6B62
 .byte   PATT
  .word Label_3_010A6B62
 .byte   PATT
  .word Label_3_010A6B62
 .byte   PATT
  .word Label_3_010A6BCD
 .byte   PATT
  .word Label_3_010A6C0F
 .byte   PATT
  .word Label_3_010A6C0F
 .byte   PATT
  .word Label_3_010A6C0F
 .byte   PATT
  .word Label_3_010A6C36
 .byte   PATT
  .word Label_3_010A6C53
 .byte   PATT
  .word Label_3_010A6C53
 .byte   PATT
  .word Label_3_010A6C53
 .byte   PATT
  .word Label_3_010A6C7A
@ 012   ----------------------------------------
 .byte   N02 ,En4 ,v104
 .byte   W24
 .byte   Gn4 ,v108
 .byte   W03
 .byte   N02
 .byte   W04
 .byte   N03
 .byte   W08
 .byte   N03
 .byte   W08
 .byte   N03
 .byte   W24
 .byte   W01
 .byte   N02 ,An4 ,v112
 .byte   W03
 .byte   N02
 .byte   W04
 .byte   N04
 .byte   W08
 .byte   N04
 .byte   W08
 .byte   N04
 .byte   W01
@ 013   ----------------------------------------
 .byte   W07
 .byte   N10 ,Bn4 ,v116
 .byte   W18
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N05
 .byte   W12
 .byte   N05
 .byte   W11
 .byte   VOICE , 60
 .byte   VOL , 70*song04_mvl/mxv
 .byte   PAN , c_v+25
 .byte   N03 ,Dn3 ,v108
 .byte   W06
 .byte   Dn3 ,v096
 .byte   W12
 .byte   Dn3 ,v108
 .byte   W06
 .byte   Dn3 ,v096
 .byte   W18
 .byte   PATT
  .word Label_3_010A6CD4
@ 014   ----------------------------------------
 .byte   N03 ,Gn3 ,v096
 .byte   W06
 .byte   Fn3 ,v108
 .byte   W06
 .byte   Fn3 ,v096
 .byte   W12
 .byte   Fn3 ,v108
 .byte   W06
 .byte   Fn3 ,v096
 .byte   W18
 .byte   N03
 .byte   W05
 .byte   FINE

@**************** Track 5 (Midi-Chn.4) ****************@

song04_005:
@ 000   ----------------------------------------
 .byte   KEYSH , song04_key+0
 .byte   W06
 .byte   VOICE , 34
 .byte   VOL , 60*song04_mvl/mxv
 .byte   PAN , c_v+14
 .byte   N10 ,Gn3 ,v104
 .byte   W12
 .byte   N03
 .byte   W04
 .byte   N03
 .byte   W04
 .byte   N03
 .byte   W04
 .byte   N10
 .byte   W12
 .byte   N10
 .byte   W12
Label_4_010A6DDB:
 .byte   PAN , c_v-25
 .byte   N10 ,Gn3 ,v104
 .byte   W12
 .byte   N10
 .byte   W12
 .byte   N10
 .byte   W12
 .byte   N10
 .byte   W06
@ 001   ----------------------------------------
Label_4_010A6DE7:
 .byte   W06
 .byte   N10 ,Fn3 ,v108
 .byte   W12
 .byte   N10
 .byte   W12
 .byte   N10
 .byte   W12
 .byte   N10
 .byte   W12
 .byte   Gn3 ,v104
 .byte   W12
 .byte   N10
 .byte   W12
 .byte   N10
 .byte   W12
 .byte   N10
 .byte   W06
 .byte   PEND 
 .byte   PATT
  .word Label_4_010A6DE7
 .byte   PATT
  .word Label_4_010A6DE7
@ 002   ----------------------------------------
 .byte   W06
 .byte   N10 ,As3 ,v100
 .byte   W12
 .byte   N10
 .byte   W12
 .byte   N10
 .byte   W12
 .byte   N10
 .byte   W12
 .byte   PAN , c_v+0
 .byte   N10 ,Gn3 ,v104
 .byte   W12
 .byte   N10
 .byte   W12
 .byte   N10
 .byte   W12
 .byte   N10
 .byte   W06
 .byte   PATT
  .word Label_4_010A6DE7
 .byte   PATT
  .word Label_4_010A6DE7
 .byte   PATT
  .word Label_4_010A6DE7
@ 003   ----------------------------------------
Label_4_010A6E2C:
 .byte   W06
 .byte   N10 ,Fn3 ,v108
 .byte   W12
 .byte   N10
 .byte   W12
 .byte   N10
 .byte   W12
 .byte   N10
 .byte   W12
 .byte   En3 ,v112
 .byte   W12
 .byte   N10
 .byte   W12
 .byte   N10
 .byte   W12
 .byte   N10
 .byte   W06
 .byte   PEND 
 .byte   PATT
  .word Label_4_010A6E2C
 .byte   PATT
  .word Label_4_010A6E2C
 .byte   PATT
  .word Label_4_010A6E2C
@ 004   ----------------------------------------
 .byte   W06
 .byte   N10 ,Fn3 ,v108
 .byte   W12
 .byte   N10
 .byte   W12
 .byte   N10
 .byte   W12
 .byte   N10
 .byte   W12
 .byte   N08 ,En3 ,v112
 .byte   W09
 .byte   N02
 .byte   W03
 .byte   N21
 .byte   W24
 .byte   N03
 .byte   W04
 .byte   N03
 .byte   W02
@ 005   ----------------------------------------
 .byte   W02
 .byte   N03
 .byte   W04
 .byte   N08 ,Ds3
 .byte   W09
 .byte   N02
 .byte   W03
 .byte   N21
 .byte   W24
 .byte   N03
 .byte   W04
 .byte   N03
 .byte   W04
 .byte   N03
 .byte   W04
 .byte   N08 ,Dn3 ,v116
 .byte   W09
 .byte   N02
 .byte   W03
 .byte   N21
 .byte   W24
 .byte   N03
 .byte   W04
 .byte   N03
 .byte   W02
@ 006   ----------------------------------------
 .byte   W02
 .byte   N03
 .byte   W04
 .byte   N08 ,Gn3 ,v120
 .byte   W09
 .byte   N02
 .byte   W03
 .byte   N21
 .byte   W24
 .byte   N03
 .byte   W04
 .byte   N03
 .byte   W04
 .byte   N03
 .byte   W04
 .byte   N10 ,Gn3 ,v108
 .byte   W18
 .byte   N05 ,Dn3 ,v116
 .byte   W18
 .byte   N10 ,Gn3 ,v104
 .byte   W06
@ 007   ----------------------------------------
 .byte   W06
 .byte   Gn3 ,v108
 .byte   W18
 .byte   N05 ,Dn3 ,v116
 .byte   W18
 .byte   N10 ,Gn3 ,v104
 .byte   W12
 .byte   Gn3 ,v108
 .byte   W18
 .byte   N05 ,Dn3 ,v116
 .byte   W18
 .byte   N10 ,Gn3 ,v104
 .byte   W06
@ 008   ----------------------------------------
 .byte   W06
 .byte   As3 ,v108
 .byte   W18
 .byte   N05 ,Fn3 ,v116
 .byte   W18
 .byte   N10 ,As3 ,v104
 .byte   W12
 .byte   GOTO
  .word Label_4_010A6DDB
@ 009   ----------------------------------------
 .byte   W01
 .byte   PAN , c_v-25
 .byte   N10 ,Gn3 ,v104
 .byte   W12
 .byte   N10
 .byte   W12
 .byte   N10
 .byte   W12
 .byte   N10
 .byte   W05
Label_4_010A6ED5:
 .byte   W07
 .byte   N10 ,Fn3 ,v108
 .byte   W12
 .byte   N10
 .byte   W12
 .byte   N10
 .byte   W12
 .byte   N10
 .byte   W12
@ 010   ----------------------------------------
 .byte   Gn3 ,v104
 .byte   W12
 .byte   N10
 .byte   W12
 .byte   N10
 .byte   W12
 .byte   N10
 .byte   W05
 .byte   PEND 
 .byte   PATT
  .word Label_4_010A6ED5
 .byte   PATT
  .word Label_4_010A6ED5
@ 011   ----------------------------------------
 .byte   W07
 .byte   N10 ,As3 ,v100
 .byte   W12
 .byte   N10
 .byte   W12
 .byte   N10
 .byte   W12
 .byte   N10
 .byte   W12
 .byte   PAN , c_v+0
 .byte   N10 ,Gn3 ,v104
 .byte   W12
 .byte   N10
 .byte   W12
 .byte   N10
 .byte   W12
 .byte   N10
 .byte   W05
 .byte   PATT
  .word Label_4_010A6ED5
 .byte   PATT
  .word Label_4_010A6ED5
 .byte   PATT
  .word Label_4_010A6ED5
@ 012   ----------------------------------------
Label_4_010A6F1A:
 .byte   W07
 .byte   N10 ,Fn3 ,v108
 .byte   W12
 .byte   N10
 .byte   W12
 .byte   N10
 .byte   W12
 .byte   N10
 .byte   W12
 .byte   En3 ,v112
 .byte   W12
 .byte   N10
 .byte   W12
 .byte   N10
 .byte   W12
 .byte   N10
 .byte   W05
 .byte   PEND 
 .byte   PATT
  .word Label_4_010A6F1A
 .byte   PATT
  .word Label_4_010A6F1A
 .byte   PATT
  .word Label_4_010A6F1A
@ 013   ----------------------------------------
 .byte   W07
 .byte   N10 ,Fn3 ,v108
 .byte   W12
 .byte   N10
 .byte   W12
 .byte   N10
 .byte   W12
 .byte   N10
 .byte   W12
 .byte   N08 ,En3 ,v112
 .byte   W09
 .byte   N02
 .byte   W03
 .byte   N21
 .byte   W24
 .byte   N03
 .byte   W04
 .byte   N03
 .byte   W01
@ 014   ----------------------------------------
 .byte   W03
 .byte   N03
 .byte   W04
 .byte   N08 ,Ds3
 .byte   W09
 .byte   N02
 .byte   W03
 .byte   N21
 .byte   W24
 .byte   N03
 .byte   W04
 .byte   N03
 .byte   W04
 .byte   N03
 .byte   W04
 .byte   N08 ,Dn3 ,v116
 .byte   W09
 .byte   N02
 .byte   W03
 .byte   N21
 .byte   W24
 .byte   N03
 .byte   W04
 .byte   N03
 .byte   W01
@ 015   ----------------------------------------
 .byte   W03
 .byte   N03
 .byte   W04
 .byte   N08 ,Gn3 ,v120
 .byte   W09
 .byte   N02
 .byte   W03
 .byte   N21
 .byte   W24
 .byte   N03
 .byte   W04
 .byte   N03
 .byte   W04
 .byte   N03
 .byte   W04
 .byte   N10 ,Gn3 ,v108
 .byte   W18
 .byte   N05 ,Dn3 ,v116
 .byte   W18
 .byte   N10 ,Gn3 ,v104
 .byte   W05
@ 016   ----------------------------------------
 .byte   W07
 .byte   Gn3 ,v108
 .byte   W18
 .byte   N05 ,Dn3 ,v116
 .byte   W18
 .byte   N10 ,Gn3 ,v104
 .byte   W12
 .byte   Gn3 ,v108
 .byte   W18
 .byte   N05 ,Dn3 ,v116
 .byte   W18
 .byte   N10 ,Gn3 ,v104
 .byte   W05
@ 017   ----------------------------------------
 .byte   W07
 .byte   As3 ,v108
 .byte   W18
 .byte   N05 ,Fn3 ,v116
 .byte   W18
 .byte   N10 ,As3 ,v104
 .byte   W10
 .byte   FINE

@**************** Track 6 (Midi-Chn.5) ****************@

song04_006:
@ 000   ----------------------------------------
 .byte   KEYSH , song04_key+0
 .byte   W06
 .byte   VOICE , 62
 .byte   VOL , 67*song04_mvl/mxv
 .byte   PAN , c_v+34
 .byte   N12 ,Fn3 ,v124
 .byte   W18
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N08 ,As3
 .byte   W12
 .byte   N08
 .byte   W12
Label_5_010A6FCA:
 .byte   VOICE , 41
 .byte   VOL , 76*song04_mvl/mxv
 .byte   PAN , c_v+14
 .byte   N03 ,Dn3 ,v104
 .byte   W04
 .byte   Gn3
 .byte   W04
 .byte   Bn3
 .byte   W04
 .byte   N23 ,Dn4
 .byte   W30
@ 001   ----------------------------------------
Label_5_010A6FDB:
 .byte   N02 ,Dn4 ,v104
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N06
 .byte   W09
 .byte   N02 ,Cn4
 .byte   W03
 .byte   N32
 .byte   W36
 .byte   N03 ,Dn3
 .byte   W04
 .byte   Gn3
 .byte   W04
 .byte   Bn3
 .byte   W04
 .byte   N23 ,Dn4
 .byte   W30
 .byte   PEND 
@ 002   ----------------------------------------
Label_5_010A6FF3:
 .byte   N02 ,Dn4 ,v104
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N06
 .byte   W09
 .byte   N02 ,Cn4
 .byte   W03
 .byte   N32 ,En4
 .byte   W36
 .byte   N03 ,Dn3 ,v108
 .byte   W04
 .byte   Gn3 ,v096
 .byte   W04
 .byte   Bn3
 .byte   W04
 .byte   N23 ,Dn4 ,v104
 .byte   W30
 .byte   PEND 
@ 003   ----------------------------------------
Label_5_010A700F:
 .byte   N02 ,Dn4 ,v104
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N06
 .byte   W09
 .byte   N02 ,Cn4
 .byte   W03
 .byte   N32
 .byte   W36
 .byte   N03 ,Dn3 ,v108
 .byte   W04
 .byte   Gn3 ,v096
 .byte   W04
 .byte   Bn3
 .byte   W04
 .byte   N23 ,Dn4 ,v104
 .byte   W30
 .byte   PEND 
@ 004   ----------------------------------------
Label_5_010A702A:
 .byte   N02 ,Dn4 ,v104
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N06
 .byte   W09
 .byte   N02 ,Ds4
 .byte   W03
 .byte   N32 ,Fn4
 .byte   W36
 .byte   VOICE , 41
 .byte   VOL , 74*song04_mvl/mxv
 .byte   PAN , c_v+0
 .byte   N03 ,Gn4 ,v096
 .byte   W04
 .byte   Dn4 ,v084
 .byte   W04
 .byte   Gn4
 .byte   W04
 .byte   N23 ,Bn4 ,v092
 .byte   W24
 .byte   N03 ,Gn4 ,v096
 .byte   W04
 .byte   Dn4 ,v084
 .byte   W02
 .byte   PEND 
@ 005   ----------------------------------------
Label_5_010A7053:
 .byte   W02
 .byte   N03 ,Bn4 ,v084
 .byte   W04
 .byte   N22 ,An4
 .byte   W24
 .byte   N08
 .byte   W09
 .byte   N02 ,Bn4
 .byte   W03
 .byte   N11 ,Cn5
 .byte   W12
 .byte   N03 ,Gn4 ,v096
 .byte   W04
 .byte   Dn4 ,v084
 .byte   W04
 .byte   Gn4
 .byte   W04
 .byte   N23 ,Bn4 ,v092
 .byte   W24
 .byte   N03 ,Gn4 ,v096
 .byte   W04
 .byte   Dn4 ,v084
 .byte   W02
 .byte   PEND 
@ 006   ----------------------------------------
Label_5_010A7078:
 .byte   W02
 .byte   N03 ,Bn4 ,v084
 .byte   W04
 .byte   N22 ,An4
 .byte   W24
 .byte   N11 ,Fn4
 .byte   W12
 .byte   Cn4
 .byte   W12
 .byte   N03 ,Gn4 ,v096
 .byte   W04
 .byte   Dn4 ,v084
 .byte   W04
 .byte   Gn4
 .byte   W04
 .byte   N23 ,Bn4 ,v092
 .byte   W24
 .byte   N03 ,Gn4 ,v096
 .byte   W04
 .byte   Dn4 ,v084
 .byte   W02
 .byte   PEND 
@ 007   ----------------------------------------
Label_5_010A709A:
 .byte   W02
 .byte   N03 ,Bn4 ,v084
 .byte   W04
 .byte   N22 ,An4 ,v092
 .byte   W24
 .byte   N08
 .byte   W09
 .byte   N02 ,Bn4
 .byte   W03
 .byte   N11 ,Cn5
 .byte   W12
 .byte   N03 ,Gn4 ,v096
 .byte   W04
 .byte   Dn4 ,v084
 .byte   W04
 .byte   Gn4
 .byte   W04
 .byte   N23 ,Bn4 ,v092
 .byte   W24
 .byte   N03 ,Gn4 ,v096
 .byte   W04
 .byte   Dn4 ,v084
 .byte   W02
 .byte   PEND 
@ 008   ----------------------------------------
Label_5_010A70C0:
 .byte   W02
 .byte   N03 ,Bn4 ,v084
 .byte   W04
 .byte   N23 ,An4 ,v096
 .byte   W24
 .byte   N11 ,Fn4
 .byte   W12
 .byte   Cn4
 .byte   W12
 .byte   VOICE , 41
 .byte   VOL , 74*song04_mvl/mxv
 .byte   PAN , c_v+0
 .byte   N03 ,Bn3 ,v100
 .byte   W04
 .byte   Gn3 ,v088
 .byte   W04
 .byte   Bn3
 .byte   W04
 .byte   N23 ,En4 ,v092
 .byte   W24
 .byte   N03 ,Bn3 ,v100
 .byte   W04
 .byte   Gn3 ,v088
 .byte   W02
 .byte   PEND 
@ 009   ----------------------------------------
Label_5_010A70E9:
 .byte   W02
 .byte   N03 ,Bn3 ,v088
 .byte   W04
 .byte   N23 ,An3 ,v092
 .byte   W24
 .byte   N08
 .byte   W09
 .byte   N02 ,Bn3
 .byte   W03
 .byte   N11 ,Cn4
 .byte   W12
 .byte   N03 ,Bn3 ,v100
 .byte   W04
 .byte   Gn3 ,v088
 .byte   W04
 .byte   Bn3
 .byte   W04
 .byte   N23 ,En4 ,v092
 .byte   W24
 .byte   N03 ,Bn3 ,v100
 .byte   W04
 .byte   Gn3 ,v088
 .byte   W02
 .byte   PEND 
@ 010   ----------------------------------------
Label_5_010A710F:
 .byte   W02
 .byte   N03 ,Bn3 ,v088
 .byte   W04
 .byte   N23 ,Dn4 ,v092
 .byte   W24
 .byte   N11 ,An3
 .byte   W12
 .byte   Fn3
 .byte   W12
 .byte   N03 ,Bn3 ,v100
 .byte   W04
 .byte   Gn3 ,v088
 .byte   W04
 .byte   Bn3
 .byte   W04
 .byte   N23 ,En4 ,v092
 .byte   W24
 .byte   N03 ,Bn3 ,v100
 .byte   W04
 .byte   Gn3 ,v088
 .byte   W02
 .byte   PEND 
 .byte   PATT
  .word Label_5_010A70E9
@ 011   ----------------------------------------
Label_5_010A7137:
 .byte   W02
 .byte   N03 ,Bn3 ,v088
 .byte   W04
 .byte   N23 ,Dn4 ,v092
 .byte   W24
 .byte   N11 ,An3
 .byte   W12
 .byte   Fn3
 .byte   W12
 .byte   N08 ,En3 ,v112
 .byte   W09
 .byte   N02 ,Fn3
 .byte   W03
 .byte   N32 ,Gn3
 .byte   W30
 .byte   PEND 
@ 012   ----------------------------------------
Label_5_010A7150:
 .byte   W06
 .byte   N08 ,Gn3 ,v116
 .byte   W09
 .byte   N02 ,An3
 .byte   W03
 .byte   N32 ,As3
 .byte   W36
 .byte   N08 ,An3 ,v120
 .byte   W09
 .byte   N02 ,Bn3
 .byte   W03
 .byte   N32 ,Cn4
 .byte   W30
 .byte   PEND 
@ 013   ----------------------------------------
Label_5_010A7166:
 .byte   W06
 .byte   N08 ,Bn3 ,v120
 .byte   W09
 .byte   N02 ,Cn4
 .byte   W03
 .byte   N32 ,Dn4
 .byte   W36
 .byte   VOICE , 61
 .byte   VOL , 74*song04_mvl/mxv
 .byte   PAN , c_v+14
 .byte   N03 ,Gn3 ,v116
 .byte   W06
 .byte   N02 ,Dn3 ,v112
 .byte   W03
 .byte   Cn3
 .byte   W03
 .byte   N16 ,Bn2
 .byte   W18
 .byte   N02
 .byte   W03
 .byte   Cn3
 .byte   W03
 .byte   N05 ,Dn3
 .byte   W06
 .byte   PEND 
@ 014   ----------------------------------------
Label_5_010A718C:
 .byte   N05 ,Gn3 ,v112
 .byte   W06
 .byte   N07 ,Gn3 ,v116
 .byte   W09
 .byte   N01 ,Dn3 ,v112
 .byte   W03
 .byte   N32
 .byte   W36
 .byte   N03 ,Gn3 ,v120
 .byte   W06
 .byte   N02 ,Dn3 ,v116
 .byte   W03
 .byte   Cn3
 .byte   W03
 .byte   N16 ,As2
 .byte   W18
 .byte   N02
 .byte   W03
 .byte   Cn3
 .byte   W03
 .byte   N05 ,Dn3
 .byte   W06
 .byte   PEND 
@ 015   ----------------------------------------
 .byte   Gn3
 .byte   W06
 .byte   N07 ,Gn3 ,v120
 .byte   W09
 .byte   N01 ,Fn3 ,v116
 .byte   W03
 .byte   N32 ,Fn3 ,v124
 .byte   W36
 .byte   GOTO
  .word Label_5_010A6FCA
@ 016   ----------------------------------------
 .byte   VOICE , 41
 .byte   VOL , 76*song04_mvl/mxv
 .byte   PAN , c_v+14
 .byte   N03 ,Dn3 ,v104
 .byte   W04
 .byte   Gn3
 .byte   W04
 .byte   Bn3
 .byte   W04
 .byte   N23 ,Dn4
 .byte   W30
 .byte   PATT
  .word Label_5_010A6FDB
 .byte   PATT
  .word Label_5_010A6FF3
 .byte   PATT
  .word Label_5_010A700F
 .byte   PATT
  .word Label_5_010A702A
 .byte   PATT
  .word Label_5_010A7053
 .byte   PATT
  .word Label_5_010A7078
 .byte   PATT
  .word Label_5_010A709A
 .byte   PATT
  .word Label_5_010A70C0
 .byte   PATT
  .word Label_5_010A70E9
 .byte   PATT
  .word Label_5_010A710F
 .byte   PATT
  .word Label_5_010A70E9
 .byte   PATT
  .word Label_5_010A7137
 .byte   PATT
  .word Label_5_010A7150
 .byte   PATT
  .word Label_5_010A7166
 .byte   PATT
  .word Label_5_010A718C
@ 017   ----------------------------------------
 .byte   N05 ,Gn3 ,v116
 .byte   W06
 .byte   N07 ,Gn3 ,v120
 .byte   W09
 .byte   N01 ,Fn3 ,v116
 .byte   W03
 .byte   N32 ,Fn3 ,v124
 .byte   W32
 .byte   W03
 .byte   FINE

@**************** Track 7 (Midi-Chn.6) ****************@

song04_007:
@ 000   ----------------------------------------
 .byte   KEYSH , song04_key+0
 .byte   W06
 .byte   VOICE , 62
 .byte   VOL , 63*song04_mvl/mxv
 .byte   PAN , c_v-25
 .byte   N12 ,Cn3 ,v124
 .byte   W18
 .byte   N02
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N08 ,Fn3
 .byte   W12
 .byte   N08
 .byte   W12
Label_6_010A7246:
 .byte   W01
 .byte   VOICE , 41
 .byte   VOL , 24*song04_mvl/mxv
 .byte   PAN , c_v+0
 .byte   N03 ,Dn4 ,v104
 .byte   W04
 .byte   Gn4
 .byte   W04
 .byte   Bn4
 .byte   W04
 .byte   N23 ,Dn5
 .byte   W28
 .byte   W01
@ 001   ----------------------------------------
Label_6_010A7259:
 .byte   W01
 .byte   N02 ,Dn5 ,v104
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N06
 .byte   W09
 .byte   N02 ,Cn5
 .byte   W03
 .byte   N32
 .byte   W36
 .byte   N03 ,Dn4
 .byte   W04
 .byte   Gn4
 .byte   W04
 .byte   Bn4
 .byte   W04
 .byte   N23 ,Dn5
 .byte   W28
 .byte   W01
 .byte   PEND 
@ 002   ----------------------------------------
Label_6_010A7273:
 .byte   W01
 .byte   N02 ,Dn5 ,v104
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N06
 .byte   W09
 .byte   N02 ,Cn5
 .byte   W03
 .byte   N32 ,En5
 .byte   W32
 .byte   W03
 .byte   VOICE , 41
 .byte   VOL , 73*song04_mvl/mxv
 .byte   PAN , c_v-14
 .byte   N03 ,Bn2
 .byte   W04
 .byte   Dn3
 .byte   W04
 .byte   Gn3
 .byte   W04
 .byte   N23 ,Bn3
 .byte   W30
 .byte   PEND 
@ 003   ----------------------------------------
Label_6_010A7294:
 .byte   N02 ,Bn3 ,v104
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N06
 .byte   W09
 .byte   N02 ,An3
 .byte   W03
 .byte   N32
 .byte   W36
 .byte   N03 ,Bn2
 .byte   W04
 .byte   Dn3
 .byte   W04
 .byte   Gn3
 .byte   W04
 .byte   N23 ,Bn3
 .byte   W30
 .byte   PEND 
@ 004   ----------------------------------------
Label_6_010A72AC:
 .byte   N02 ,Bn3 ,v104
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N06
 .byte   W09
 .byte   N02 ,Cn4
 .byte   W03
 .byte   N32 ,Dn4
 .byte   W36
 .byte   VOICE , 41
 .byte   VOL , 74*song04_mvl/mxv
 .byte   PAN , c_v+0
 .byte   N03 ,Dn3 ,v120
 .byte   W04
 .byte   Bn2 ,v108
 .byte   W04
 .byte   Dn3
 .byte   W04
 .byte   N23 ,Gn3 ,v112
 .byte   W24
 .byte   N03 ,Dn3 ,v120
 .byte   W04
 .byte   Bn2 ,v108
 .byte   W02
 .byte   PEND 
@ 005   ----------------------------------------
Label_6_010A72D5:
 .byte   W02
 .byte   N03 ,Gn3 ,v108
 .byte   W04
 .byte   N23 ,Fn3 ,v112
 .byte   W24
 .byte   N08
 .byte   W09
 .byte   N02 ,Gn3
 .byte   W03
 .byte   N11 ,An3
 .byte   W12
 .byte   N03 ,Dn3 ,v120
 .byte   W04
 .byte   Bn2 ,v108
 .byte   W04
 .byte   Dn3
 .byte   W04
 .byte   N23 ,Gn3 ,v112
 .byte   W24
 .byte   N03 ,Dn3 ,v120
 .byte   W04
 .byte   Bn2 ,v108
 .byte   W02
 .byte   PEND 
@ 006   ----------------------------------------
Label_6_010A72FB:
 .byte   W02
 .byte   N03 ,Gn3 ,v108
 .byte   W04
 .byte   N23 ,Fn3 ,v112
 .byte   W24
 .byte   N11 ,Cn3
 .byte   W12
 .byte   An2
 .byte   W12
 .byte   N03 ,Dn3 ,v120
 .byte   W04
 .byte   Bn2 ,v108
 .byte   W04
 .byte   Dn3
 .byte   W04
 .byte   N23 ,Gn3 ,v112
 .byte   W24
 .byte   N03 ,Dn3 ,v120
 .byte   W04
 .byte   Bn2 ,v108
 .byte   W02
 .byte   PEND 
 .byte   PATT
  .word Label_6_010A72D5
@ 007   ----------------------------------------
Label_6_010A7323:
 .byte   W02
 .byte   N03 ,Gn3 ,v108
 .byte   W04
 .byte   N23 ,Fn3 ,v112
 .byte   W24
 .byte   N11 ,Cn3
 .byte   W12
 .byte   An2
 .byte   W12
 .byte   VOICE , 41
 .byte   VOL , 74*song04_mvl/mxv
 .byte   PAN , c_v+0
 .byte   N03 ,Gn2 ,v116
 .byte   W04
 .byte   En2 ,v104
 .byte   W04
 .byte   Gn2
 .byte   W04
 .byte   N23 ,Bn2 ,v112
 .byte   W24
 .byte   N03 ,Gn2 ,v116
 .byte   W04
 .byte   En2 ,v104
 .byte   W02
 .byte   PEND 
@ 008   ----------------------------------------
Label_6_010A734C:
 .byte   W02
 .byte   N03 ,Gn2 ,v104
 .byte   W04
 .byte   N23 ,Fn2 ,v112
 .byte   W24
 .byte   N08
 .byte   W09
 .byte   N02 ,Gn2
 .byte   W03
 .byte   N11 ,An2
 .byte   W12
 .byte   N03 ,Gn2 ,v116
 .byte   W04
 .byte   En2 ,v104
 .byte   W04
 .byte   Gn2
 .byte   W04
 .byte   N23 ,Bn2 ,v112
 .byte   W24
 .byte   N03 ,Gn2 ,v116
 .byte   W04
 .byte   En2 ,v104
 .byte   W02
 .byte   PEND 
@ 009   ----------------------------------------
Label_6_010A7372:
 .byte   W02
 .byte   N03 ,Gn2 ,v104
 .byte   W04
 .byte   N23 ,An2 ,v112
 .byte   W24
 .byte   N11 ,Fn2
 .byte   W12
 .byte   Cn2
 .byte   W12
 .byte   N03 ,Gn2 ,v116
 .byte   W04
 .byte   En2 ,v104
 .byte   W04
 .byte   Gn2
 .byte   W04
 .byte   N23 ,Bn2 ,v112
 .byte   W24
 .byte   N03 ,Gn2 ,v116
 .byte   W04
 .byte   En2 ,v104
 .byte   W02
 .byte   PEND 
 .byte   PATT
  .word Label_6_010A734C
@ 010   ----------------------------------------
Label_6_010A739A:
 .byte   W02
 .byte   N03 ,Gn2 ,v104
 .byte   W04
 .byte   N23 ,An2 ,v112
 .byte   W24
 .byte   N11 ,Fn2
 .byte   W12
 .byte   Cn2
 .byte   W12
 .byte   N08 ,Cn3
 .byte   W09
 .byte   N02 ,Dn3
 .byte   W03
 .byte   N32 ,En3
 .byte   W30
 .byte   PEND 
@ 011   ----------------------------------------
Label_6_010A73B2:
 .byte   W06
 .byte   N08 ,Ds3 ,v116
 .byte   W09
 .byte   N02 ,Fn3
 .byte   W03
 .byte   N32 ,Gn3
 .byte   W36
 .byte   N08 ,Fn3 ,v120
 .byte   W09
 .byte   N02 ,Gn3
 .byte   W03
 .byte   N32 ,An3
 .byte   W30
 .byte   PEND 
@ 012   ----------------------------------------
 .byte   W06
 .byte   N08 ,Gn3
 .byte   W09
 .byte   N02 ,An3
 .byte   W03
 .byte   N32 ,Bn3
 .byte   W36
 .byte   VOICE , 61
 .byte   VOL , 71*song04_mvl/mxv
 .byte   PAN , c_v-14
 .byte   N03 ,Dn3 ,v116
 .byte   W06
 .byte   N02 ,Bn2 ,v112
 .byte   W03
 .byte   An2
 .byte   W03
 .byte   N16 ,Gn2
 .byte   W18
 .byte   N02
 .byte   W03
 .byte   An2
 .byte   W03
 .byte   N05 ,Bn2
 .byte   W06
@ 013   ----------------------------------------
 .byte   Dn3
 .byte   W06
 .byte   N07 ,Dn3 ,v116
 .byte   W09
 .byte   N01 ,Gn2
 .byte   W03
 .byte   N32
 .byte   W36
 .byte   N03 ,Dn3 ,v120
 .byte   W06
 .byte   N02 ,As2 ,v116
 .byte   W03
 .byte   An2
 .byte   W03
 .byte   N16 ,Gn2
 .byte   W18
 .byte   N02
 .byte   W03
 .byte   An2
 .byte   W03
 .byte   N05 ,As2
 .byte   W06
@ 014   ----------------------------------------
 .byte   Dn3
 .byte   W06
 .byte   N07 ,Ds3 ,v120
 .byte   W09
 .byte   N01 ,Dn3 ,v116
 .byte   W03
 .byte   N32 ,Dn3 ,v124
 .byte   W36
 .byte   GOTO
  .word Label_6_010A7246
@ 015   ----------------------------------------
 .byte   W01
 .byte   VOICE , 41
 .byte   VOL , 24*song04_mvl/mxv
 .byte   PAN , c_v+0
 .byte   N03 ,Dn4 ,v104
 .byte   W04
 .byte   Gn4
 .byte   W04
 .byte   Bn4
 .byte   W04
 .byte   N23 ,Dn5
 .byte   W28
 .byte   W01
 .byte   PATT
  .word Label_6_010A7259
 .byte   PATT
  .word Label_6_010A7273
 .byte   PATT
  .word Label_6_010A7294
 .byte   PATT
  .word Label_6_010A72AC
 .byte   PATT
  .word Label_6_010A72D5
 .byte   PATT
  .word Label_6_010A72FB
 .byte   PATT
  .word Label_6_010A72D5
 .byte   PATT
  .word Label_6_010A7323
 .byte   PATT
  .word Label_6_010A734C
 .byte   PATT
  .word Label_6_010A7372
 .byte   PATT
  .word Label_6_010A734C
 .byte   PATT
  .word Label_6_010A739A
 .byte   PATT
  .word Label_6_010A73B2
@ 016   ----------------------------------------
 .byte   W06
 .byte   N08 ,Gn3 ,v120
 .byte   W09
 .byte   N02 ,An3
 .byte   W03
 .byte   N32 ,Bn3
 .byte   W36
 .byte   W01
 .byte   VOICE , 61
 .byte   VOL , 71*song04_mvl/mxv
 .byte   PAN , c_v-14
 .byte   N03 ,Dn3 ,v116
 .byte   W06
 .byte   N02 ,Bn2 ,v112
 .byte   W03
 .byte   An2
 .byte   W03
 .byte   N16 ,Gn2
 .byte   W18
 .byte   N02
 .byte   W03
 .byte   An2
 .byte   W03
 .byte   N05 ,Bn2
 .byte   W05
@ 017   ----------------------------------------
 .byte   W01
 .byte   Dn3
 .byte   W06
 .byte   N07 ,Dn3 ,v116
 .byte   W09
 .byte   N01 ,Gn2
 .byte   W03
 .byte   N32
 .byte   W36
 .byte   N03 ,Dn3 ,v120
 .byte   W06
 .byte   N02 ,As2 ,v116
 .byte   W03
 .byte   An2
 .byte   W03
 .byte   N16 ,Gn2
 .byte   W18
 .byte   N02
 .byte   W03
 .byte   An2
 .byte   W03
 .byte   N05 ,As2
 .byte   W05
@ 018   ----------------------------------------
 .byte   W01
 .byte   Dn3
 .byte   W06
 .byte   N07 ,Ds3 ,v120
 .byte   W09
 .byte   N01 ,Dn3 ,v116
 .byte   W03
 .byte   N32 ,Dn3 ,v124
 .byte   W32
 .byte   W02
 .byte   FINE

@******************************************************@
	.align	2

song04:
	.byte	7	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song04_pri	@ Priority
	.byte	song04_rev	@ Reverb.
    
	.word	song04_grp
    
	.word	song04_001
	.word	song04_002
	.word	song04_003
	.word	song04_004
	.word	song04_005
	.word	song04_006
	.word	song04_007

	.end
