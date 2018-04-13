	THUMB_FUNC_START sub_8095524
sub_8095524: @ 0x08095524
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	bl sub_8096FAC
	bl CheckSomethingSomewhere
	lsls r0, r0, #0x18
	asrs r4, r0, #0x18
	cmp r4, #0
	bne _080955CC
	ldr r1, _0809557C  @ sub_80951B8
	ldr r3, _08095580  @ 0x00000574
	str r4, [sp]
	movs r0, #0
	movs r2, #0
	bl PrepScreen_AddOption
	ldr r1, _08095584  @ sub_80951CC
	ldr r3, _08095588  @ 0x00000576
	str r4, [sp]
	movs r0, #1
	movs r2, #0
	bl PrepScreen_AddOption
	adds r0, r5, #0
	bl sub_8095498
	bl sub_8095504
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _08095590
	ldr r1, _0809558C  @ sub_80952C0
	movs r3, #0xaf
	lsls r3, r3, #3
	str r4, [sp]
	movs r0, #7
	movs r2, #0
	bl PrepScreen_AddOption
	b _080955A0
	.align 2, 0
_0809557C: .4byte sub_80951B8
_08095580: .4byte 0x00000574
_08095584: .4byte sub_80951CC
_08095588: .4byte 0x00000576
_0809558C: .4byte sub_80952C0
_08095590:
	ldr r1, _080955C0  @ sub_80952C0
	movs r3, #0xaf
	lsls r3, r3, #3
	str r0, [sp]
	movs r0, #7
	movs r2, #1
	bl PrepScreen_AddOption
_080955A0:
	movs r4, #0
	bl sub_8094FF4
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080955AE
	movs r4, #1
_080955AE:
	ldr r1, _080955C4  @ sub_8095210
	ldr r3, _080955C8  @ 0x00000579
	movs r0, #0
	str r0, [sp]
	movs r0, #2
	adds r2, r4, #0
	bl PrepScreen_AddOption
	b _080955F8
	.align 2, 0
_080955C0: .4byte sub_80952C0
_080955C4: .4byte sub_8095210
_080955C8: .4byte 0x00000579
_080955CC:
	ldr r1, _08095630  @ sub_80951B8
	ldr r3, _08095634  @ 0x00000574
	movs r4, #0
	str r4, [sp]
	movs r0, #0
	movs r2, #0
	bl PrepScreen_AddOption
	ldr r1, _08095638  @ sub_80951CC
	ldr r3, _0809563C  @ 0x00000576
	str r4, [sp]
	movs r0, #1
	movs r2, #0
	bl PrepScreen_AddOption
	ldr r1, _08095640  @ sub_8095284
	ldr r3, _08095644  @ 0x0000075C
	str r4, [sp]
	movs r0, #3
	movs r2, #0
	bl PrepScreen_AddOption
_080955F8:
	ldr r0, _08095648  @ sub_8095290
	bl sub_8096FD0
	ldr r0, _0809564C  @ sub_8095240
	bl sub_8096FEC
	ldr r0, _08095650  @ gUnknown_02022CA8
	movs r1, #0xc
	movs r2, #0x13
	movs r3, #0
	bl TileMap_FillRect
	ldr r0, _08095654  @ gUnknown_020234A8
	movs r1, #0xc
	movs r2, #0x13
	movs r3, #0
	bl TileMap_FillRect
	bl CheckSomethingSomewhere
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08095658
	movs r0, #1
	movs r1, #5
	bl sub_8097200
	b _08095660
	.align 2, 0
_08095630: .4byte sub_80951B8
_08095634: .4byte 0x00000574
_08095638: .4byte sub_80951CC
_0809563C: .4byte 0x00000576
_08095640: .4byte sub_8095284
_08095644: .4byte 0x0000075C
_08095648: .4byte sub_8095290
_0809564C: .4byte sub_8095240
_08095650: .4byte gUnknown_02022CA8
_08095654: .4byte gUnknown_020234A8
_08095658:
	movs r0, #1
	movs r1, #6
	bl sub_8097200
_08095660:
	adds r0, r5, #0
	adds r0, #0x2d
	ldrb r0, [r0]
	bl sub_80970CC
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	
	THUMB_FUNC_START PrepScreen_AddOption
PrepScreen_AddOption: @ 0x08097024
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	adds r6, r0, #0
	adds r7, r1, #0
	mov r8, r2
	mov r9, r3
	ldr r0, _08097074  @ gUnknown_08A186EC
	bl Proc_Find
	adds r1, r0, #0
	cmp r1, #0
	beq _080970B8
	movs r4, #0
	movs r0, #0x38
	adds r0, r0, r1
	mov sl, r0
	mov r3, sl
_0809704C:
	ldr r2, [r3]
	cmp r2, #0
	beq _08097078
	adds r0, r2, #0
	adds r0, #0x39
	ldrb r0, [r0]
	cmp r0, r6
	bne _08097078
	str r7, [r2, #0x2c]
	adds r0, r2, #0
	adds r0, #0x38
	mov r1, r8
	strb r1, [r0]
	ldr r0, [r3]
	mov r2, r9
	str r2, [r0, #0x34]
	ldr r1, [sp, #0x20]
	str r1, [r0, #0x30]
	b _080970B8
	.align 2, 0
_08097074: .4byte gUnknown_08A186EC
_08097078:
	adds r3, #4
	adds r4, #1
	cmp r4, #7
	ble _0809704C
	adds r5, r1, #0
	adds r5, #0x2b
	ldrb r4, [r5]
	ldr r0, _080970C8  @ gUnknown_08A186DC
	bl Proc_Create
	lsls r1, r4, #2
	add r1, sl
	str r0, [r1]
	adds r0, #0x39
	strb r6, [r0]
	ldr r0, [r1]
	str r7, [r0, #0x2c]
	adds r0, #0x38
	mov r2, r8
	strb r2, [r0]
	ldr r0, [r1]
	mov r1, r9
	str r1, [r0, #0x34]
	ldr r2, [sp, #0x20]
	str r2, [r0, #0x30]
	adds r0, #0x3c
	movs r1, #7
	bl Text_Init
	ldrb r0, [r5]
	adds r0, #1
	strb r0, [r5]
_080970B8:
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080970C8: .4byte gUnknown_08A186DC