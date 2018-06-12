.thumb
@draws the stat screen

.set NoAltIconDraw, 1 @ 

.include "mss_defs.s"
.set SkillGetter, IconGraphic+4
.set SkillTester, SkillGetter+4
.set SaviorID, SkillTester+4
.set CelerityID, SaviorID+4
.set SS_SkillsText, CelerityID+4
.set SS_TalkText, SS_SkillsText+4
.set Display_Growths_options, SS_TalkText+4
.set Growth_Getters_Table, Display_Growths_options+4
.set Get_Palette_Index, Growth_Getters_Table+4
.equ GetCharge, Get_Palette_Index+4
.equ RatingTextID, GetCharge+4

page_start


@load the growth getters onto the stack, if needed
.set growth_getters_table_loc, (Growth_Getters_Table - . - 6)
ldr		r0, =growth_getters_table_loc
add		r0,pc
ldr		r0,[r0]
str		r0,[sp,#0xC]
.set growths_options_loc, (Display_Growths_options - . - 6)
ldr		r0, =growths_options_loc
add		r0,pc
ldr		r0,[r0]
mov		r1,#0x10		@set if stat name color should reflect growth
and		r0,r1
mov		r1,r8
ldrb	r1,[r1,#0xB]
mov		r2,#0xC0
tst		r1,r2
beq		IsPlayerUnit
mov		r0,#0
IsPlayerUnit:
str		r0,[sp,#0x14]


draw_textID_at 13, 3, textID=0x4fe, growth_func=2 @str
draw_textID_at 13, 5, textID=0x4ff, growth_func=3 @mag
draw_textID_at 13, 7, textID=0x4EC, growth_func=4 @skl
draw_textID_at 13, 9, textID=0x4ED, growth_func=5 @spd
draw_textID_at 13, 11, textID=0x4ee, growth_func=6 @luck
draw_textID_at 13, 13, textID=0x4ef, growth_func=7 @def
draw_textID_at 13, 15, textID=0x4f0, growth_func=8 @res

b 	NoRescue
.ltorg 
NoRescue:

ldr		r0,=StatScreenStruct
sub		r0,#1
mov		r1,r8
ldrb	r1,[r1,#0xB]
mov		r2,#0xC0
tst		r1,r2
beq		Label2
ldrb	r1,[r0]
mov		r2,#0xFE
and		r1,r2
strb	r1,[r0]			@don't display enemy growths
Label2:
ldrb	r0,[r0]
mov		r1,#1
tst		r0,r1
beq		ShowStats
b		ShowGrowths

ShowStats:
draw_str_bar_at 16, 3
draw_mag_bar_at 16, 5
draw_skl_bar_at 16, 7
draw_spd_bar_at 16, 9
draw_luck_bar_at 16, 11
draw_def_bar_at 16, 13
draw_res_bar_at 16, 15
draw_textID_at 13, 17, 0x4f6 @move
draw_move_bar_with_getter_at 16, 17

b		NextColumn
.ltorg

ShowGrowths:
ldr		r0,[sp,#0xC]
ldr		r0,[r0,#4]		@str growth getter
draw_growth_at 17, 3
ldr		r0,[sp,#0xC]
ldr		r0,[r0,#8]		@mag growth getter
draw_growth_at 17, 5
ldr		r0,[sp,#0xC]
ldr		r0,[r0,#12]		@skl growth getter
draw_growth_at 17, 7
ldr		r0,[sp,#0xC]
ldr		r0,[r0,#16]		@spd growth getter
draw_growth_at 17, 9
ldr		r0,[sp,#0xC]
ldr		r0,[r0,#20]		@luk growth getter
draw_growth_at 17, 11
ldr		r0,[sp,#0xC]
ldr		r0,[r0,#24]		@def growth getter
draw_growth_at 17, 13
ldr		r0,[sp,#0xC]
ldr		r0,[r0,#28]		@res growth getter
draw_growth_at 17, 15
ldr		r0,[sp,#0xC]
ldr		r0,[r0]			@hp growth getter (not displaying because there's no room atm)
draw_growth_at 17, 17
draw_textID_at 13, 17, textID=0x4E9, growth_func=1 @hp name
b		NextColumn
.ltorg

NextColumn:


draw_textID_at 21, 3, textID=0x4f8 @aid
draw_number_at 25, 3, 0x80189B8, 2 @aid getter
draw_aid_icon_at 26, 3

draw_trv_text_at 21, 5

draw_textID_at 21, 7, textID=0x4f1 @affin

draw_affinity_icon_at 24, 7

draw_status_text_at 21, 9

.set ss_talkloc, (SS_TalkText - . - 6)
  ldr r0, =ss_talkloc
  add r0, pc
  ldr r0, [r0]
draw_talk_text_at 21, 11

.set ss_RatingText, (RatingTextID - . - 6)
ldr r0, =ss_RatingText
add r0, pc
ldr r0, [r0]
draw_textID_at 21, 13, width=4
mov r0, #0
mov r2, r8
mov r3, #0x14
RatingLoop:
ldrb r1, [r2, r3]
add r0, r1
add r3, #1
cmp r3, #0x1B
bne RatingLoop
ldrb r1, [r2, #0x1D] @ mov
add r0, r1
add r2, #0x3A @ mag
ldrb r1, [r2]
add r0, r1
draw_number_at 27, 13 @Unit Rating

draw_textID_at 21, 15, textID=0x4f7 @con
draw_con_bar_with_getter_at 24, 15

Nexty:

b skipliterals
.ltorg
skipliterals:
@ draw_textID_at 13, 15, textID=0x4f6 @move
@ draw_move_bar_at 16, 15

@blh DrawBWLNumbers

ldr		r0,=StatScreenStruct
sub		r0,#0x2
ldrb	r0,[r0]
cmp		r0,#0x0
beq		DoNotUpdate
ldr		r0,=BgBitfield
ldrb	r1,[r0]
mov		r2,#0x5
orr		r1,r2
strb	r1,[r0]
ldr		r0,=CopyToBG
mov		r14,r0
ldr		r0,=Const_2003D2C
ldr		r1,=Const_2022D40
mov		r2,#0x12
mov		r3,#0x12
.short	0xF800
ldr		r0,=CopyToBG
mov		r14,r0
ldr		r0,=Const_200472C
ldr		r1,=Const_2023D40
mov		r2,#0x12
mov		r3,#0x12
.short	0xF800
ldr		r0,=StatScreenStruct
sub		r0,#0x2
mov		r1,#0x0
strb	r1,[r0]
b DoNotUpdate
.ltorg

DoNotUpdate:
page_end

.ltorg

Restore_Palette:
@r0=thing to store back, r1=0 if we can skip this
cmp		r1,#0
beq		RestoreDone
cmp		r0,#0
beq		RestoreDone
ldr		r1,Const2_2028E70
ldr		r1,[r1]
strh	r0,[r1,#0x10]
RestoreDone:
bx		r14

.align
Const2_2028E70:
.long 0x02028E70

.include "Get Talkee.asm"

.ltorg
IconGraphic:
@POIN SkillIcons at the end here
@POIN SkillGetter after that
@POIN SkillTester after THAT
@WORD SaviorID lol
