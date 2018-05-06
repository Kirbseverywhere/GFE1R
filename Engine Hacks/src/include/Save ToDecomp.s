	THUMB_FUNC_START SaveUnit
SaveUnit: @ 0x080A533C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x70
	adds r7, r0, #0
	str r1, [sp, #0x6c]
	mov r1, sp
	ldr r0, [r7]
	ldrb r0, [r0, #4]
	strb r0, [r1, #0x14]
	mov r3, sp
	ldr r0, [r7, #4]
	ldrb r1, [r0, #4]
	movs r0, #0x7f
	ands r1, r0
	ldrb r2, [r3]
	movs r5, #0x80
	negs r5, r5
	adds r0, r5, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	ldr r4, [r7]
	cmp r4, #0
	bne _080A5388
	add r7, sp, #0x24
	adds r0, r7, #0
	bl ClearUnitStruct
	mov r0, sp
	strb r4, [r0, #0x14]
	mov r2, sp
	ldrb r1, [r2] 
	adds r0, r5, #0 
	ands r0, r1
	strb r0, [r2]
_080A5388:
	mov r4, sp
	movs r1, #8
	ldrsb r1, [r7, r1]
	movs r0, #0x1f
	mov r9, r0
	mov r0, r9
	ands r1, r0
	lsls r1, r1, #7
	ldrh r2, [r4]
	ldr r3, _080A5748  @ 0xFFFFF07F
	adds r0, r3, #0
	ands r0, r2
	orrs r0, r1
	strh r0, [r4]
	ldrb r2, [r7, #9]
	movs r1, #0x7f
	mov sl, r1
	ands r2, r1
	lsls r2, r2, #0xc
	ldr r0, [sp]
	ldr r1, _080A574C  @ 0xFFF80FFF
	ands r0, r1
	orrs r0, r2
	str r0, [sp]
	movs r1, #0x10
	ldrsb r1, [r7, r1]
	movs r0, #0x3f
	ands r1, r0
	lsls r1, r1, #3
	ldrh r2, [r4, #2]
	ldr r0, _080A5750  @ 0xFFFFFE07
	ands r0, r2
	orrs r0, r1
	strh r0, [r4, #2]
	movs r1, #0x11
	ldrsb r1, [r7, r1]
	movs r0, #0x3f
	ands r1, r0
	lsls r1, r1, #1
	ldrb r2, [r4, #3]
	movs r0, #0x7f
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #3]
	movs r2, #0x12
	ldrsb r2, [r7, r2]
	movs r6, #0x3f
	ands r2, r6
	lsls r2, r2, #0xc
	ldr r0, [sp, #4]
	ldr r1, _080A5754  @ 0xFFFC0FFF
	ands r0, r1
	orrs r0, r2
	str r0, [sp, #4]
	movs r1, #0x14
	ldrsb r1, [r7, r1]
	movs r5, #0x1f
	ands r1, r5
	lsls r1, r1, #2
	ldrb r2, [r4, #6]
	movs r0, #0x7d
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #6]
	mov r2, sp
	movs r0, #0x15
	ldrsb r0, [r7, r0]
	mov r4, r9
	ands r0, r4
	lsls r0, r0, #7
	ldrh r1, [r2, #6]
	ands r3, r1
	orrs r3, r0
	strh r3, [r2, #6]
	mov r4, sp
	movs r3, #0x16
	ldrsb r3, [r7, r3]
	movs r0, #0xf
	mov r8, r0
	adds r1, r3, #0
	ands r1, r0
	lsls r1, r1, #4
	ldrb r2, [r4, #7]
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #7]
	lsrs r3, r3, #4
	movs r1, #1
	mov ip, r1
	ands r3, r1
	ldrb r1, [r4, #8]
	movs r0, #2
	negs r0, r0
	ands r0, r1
	orrs r0, r3
	strb r0, [r4, #8]
	mov r3, sp
	movs r1, #0x17
	ldrsb r1, [r7, r1]
	ands r1, r5
	lsls r1, r1, #1
	movs r2, #0x3f
	negs r2, r2
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #8]
	movs r1, #0x18
	ldrsb r1, [r7, r1]
	mov r4, r9
	ands r1, r4
	lsls r1, r1, #6
	ldrh r2, [r3, #8]
	ldr r0, _080A5758  @ 0xFFFFF83F
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #8]
	movs r1, #0x19
	ldrsb r1, [r7, r1]
	lsls r1, r1, #3
	ldrb r2, [r3, #9]
	movs r0, #7
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #9]
	movs r1, #0x1a
	ldrsb r1, [r7, r1]
	ands r1, r5
	ldrb r2, [r3, #0xa]
	movs r0, #0x20
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0xa]
	movs r1, #0x1d
	ldrsb r1, [r7, r1]
	ands r1, r4
	lsls r1, r1, #5
	ldrh r2, [r3, #0xa]
	ldr r0, _080A575C  @ 0xFFFFFC1F
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #0xa]
	ldrh r2, [r7, #0x1e]
	adds r1, r2, #0
	ands r1, r6
	lsls r1, r1, #2
	ldrb r4, [r3, #0xb]
	movs r5, #3
	adds r0, r5, #0
	ands r0, r4
	orrs r0, r1
	strb r0, [r3, #0xb]
	lsrs r2, r2, #6
	strb r2, [r3, #0xc]
	ldrh r2, [r7, #0x20]
	ldr r4, _080A5760  @ 0x00003FFF
	ands r2, r4
	lsls r2, r2, #8
	ldr r0, [sp, #0xc]
	ldr r1, _080A5764  @ 0xFFC000FF
	ands r0, r1
	orrs r0, r2
	str r0, [sp, #0xc]
	ldrh r1, [r7, #0x22]
	ldr r0, _080A5768  @ 0x000003FF
	ands r0, r1
	lsls r0, r0, #6
	ldrh r2, [r3, #0xe]
	ands r6, r2
	orrs r6, r0
	strh r6, [r3, #0xe]
	lsrs r1, r1, #0xa
	mov r0, r8
	ands r1, r0
	ldrb r2, [r3, #0x10]
	movs r0, #0x10
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x10]
	ldrh r1, [r7, #0x24]
	ands r1, r4
	lsls r1, r1, #4
	ldr r0, [sp, #0x10]
	ldr r2, _080A576C  @ 0xFFFC000F
	ands r0, r2
	orrs r0, r1
	str r0, [sp, #0x10]
	mov r2, sp
	ldrh r0, [r7, #0x26]
	lsls r0, r0, #2
	ldrh r1, [r2, #0x12]
	ands r5, r1
	orrs r5, r0
	strh r5, [r2, #0x12]
	mov r1, sp
	ldrb r0, [r1, #3]
	mov r5, sl
	ands r5, r0
	strb r5, [r1, #3]
	ldrh r2, [r1, #4]
	ldr r6, _080A5770  @ 0xFFFFF000
	adds r0, r6, #0
	ands r0, r2
	strh r0, [r1, #4]
	ldr r0, [r7, #0xc]
	movs r1, #4
	mov r8, r1
	ands r0, r1
	cmp r0, #0
	beq _080A5552
	mov r0, sp
	ldrh r2, [r0, #4]
	ldr r4, _080A5774  @ 0x00000FFF
	ands r2, r4
	mov r0, ip
	lsrs r1, r0, #1
	lsls r0, r0, #7
	orrs r0, r5
	strb r0, [r3, #3]
	orrs r1, r2
	ands r1, r4
	ldrh r2, [r3, #4]
	adds r0, r6, #0
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #4]
_080A5552:
	ldr r0, [r7, #0xc]
	movs r1, #8
	mov r9, r1
	ands r0, r1
	cmp r0, #0
	beq _080A5592
	mov r3, sp
	mov r0, sp
	ldrb r4, [r0, #3]
	lsrs r1, r4, #7
	ldrh r2, [r0, #4]
	ldr r5, _080A5774  @ 0x00000FFF
	ands r2, r5
	lsls r2, r2, #1
	orrs r2, r1
	movs r0, #2
	orrs r2, r0
	adds r1, r2, #0
	mov r0, ip
	ands r1, r0
	lsls r1, r1, #7
	mov r0, sl
	ands r0, r4
	orrs r0, r1
	strb r0, [r3, #3]
	lsrs r2, r2, #1
	ands r2, r5
	ldrh r1, [r3, #4]
	adds r0, r6, #0
	ands r0, r1
	orrs r0, r2
	strh r0, [r3, #4]
_080A5592:
	ldr r0, [r7, #0xc]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _080A55D2
	mov r3, sp
	mov r0, sp
	ldrb r4, [r0, #3]
	lsrs r2, r4, #7
	ldrh r1, [r0, #4]
	ldr r5, _080A5774  @ 0x00000FFF
	ands r1, r5
	lsls r1, r1, #1
	orrs r1, r2
	mov r0, r8
	orrs r1, r0
	adds r2, r1, #0
	mov r0, ip
	ands r2, r0
	lsls r2, r2, #7
	mov r0, sl
	ands r0, r4
	orrs r0, r2
	strb r0, [r3, #3]
	lsrs r1, r1, #1
	ands r1, r5
	ldrh r2, [r3, #4]
	adds r0, r6, #0
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #4]
_080A55D2:
	ldr r0, [r7, #0xc]
	movs r1, #0x80
	lsls r1, r1, #8
	ands r0, r1
	cmp r0, #0
	beq _080A5612
	mov r3, sp
	mov r0, sp
	ldrb r4, [r0, #3]
	lsrs r2, r4, #7
	ldrh r1, [r0, #4]
	ldr r5, _080A5774  @ 0x00000FFF
	ands r1, r5
	lsls r1, r1, #1
	orrs r1, r2
	mov r0, r9
	orrs r1, r0
	adds r2, r1, #0
	mov r0, ip
	ands r2, r0
	lsls r2, r2, #7
	mov r0, sl
	ands r0, r4
	orrs r0, r2
	strb r0, [r3, #3]
	lsrs r1, r1, #1
	ands r1, r5
	ldrh r2, [r3, #4]
	adds r0, r6, #0
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #4]
_080A5612:
	ldr r0, [r7, #0xc]
	movs r1, #0x80
	lsls r1, r1, #6
	ands r0, r1
	cmp r0, #0
	beq _080A5652
	mov r3, sp
	mov r0, sp
	ldrb r4, [r0, #3]
	lsrs r1, r4, #7
	ldrh r2, [r0, #4]
	ldr r5, _080A5774  @ 0x00000FFF
	ands r2, r5
	lsls r2, r2, #1
	orrs r2, r1
	movs r0, #0x10
	orrs r2, r0
	adds r1, r2, #0
	mov r0, ip
	ands r1, r0
	lsls r1, r1, #7
	mov r0, sl
	ands r0, r4
	orrs r0, r1
	strb r0, [r3, #3]
	lsrs r2, r2, #1
	ands r2, r5
	ldrh r1, [r3, #4]
	adds r0, r6, #0
	ands r0, r1
	orrs r0, r2
	strh r0, [r3, #4]
_080A5652:
	ldr r0, [r7, #0xc]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _080A5692
	mov r3, sp
	mov r0, sp
	ldrb r4, [r0, #3]
	lsrs r1, r4, #7
	ldrh r2, [r0, #4]
	ldr r5, _080A5774  @ 0x00000FFF
	ands r2, r5
	lsls r2, r2, #1
	orrs r2, r1
	movs r0, #0x20
	orrs r2, r0
	adds r1, r2, #0
	mov r0, ip
	ands r1, r0
	lsls r1, r1, #7
	mov r0, sl
	ands r0, r4
	orrs r0, r1
	strb r0, [r3, #3]
	lsrs r2, r2, #1
	ands r2, r5
	ldrh r1, [r3, #4]
	adds r0, r6, #0
	ands r0, r1
	orrs r0, r2
	strh r0, [r3, #4]
_080A5692:
	ldr r0, [r7, #0xc]
	movs r1, #0x80
	lsls r1, r1, #0x12
	ands r0, r1
	cmp r0, #0
	beq _080A56D2
	mov r3, sp
	mov r0, sp
	ldrb r4, [r0, #3]
	lsrs r1, r4, #7
	ldrh r2, [r0, #4]
	ldr r5, _080A5774  @ 0x00000FFF
	ands r2, r5
	lsls r2, r2, #1
	orrs r2, r1
	movs r0, #0x40
	orrs r2, r0
	adds r1, r2, #0
	mov r0, ip
	ands r1, r0
	lsls r1, r1, #7
	mov r0, sl
	ands r0, r4
	orrs r0, r1
	strb r0, [r3, #3]
	lsrs r2, r2, #1
	ands r2, r5
	ldrh r1, [r3, #4]
	adds r0, r6, #0
	ands r0, r1
	orrs r0, r2
	strh r0, [r3, #4]
_080A56D2:
	ldr r0, [r7, #0xc]
	movs r1, #0x80
	lsls r1, r1, #0xe
	ands r0, r1
	cmp r0, #0
	beq _080A5712
	mov r3, sp
	mov r0, sp
	ldrb r4, [r0, #3]
	lsrs r1, r4, #7
	ldrh r2, [r0, #4]
	ldr r5, _080A5774  @ 0x00000FFF
	ands r2, r5
	lsls r2, r2, #1
	orrs r2, r1
	movs r0, #0x80
	orrs r2, r0
	adds r1, r2, #0
	mov r0, ip
	ands r1, r0
	lsls r1, r1, #7
	mov r0, sl
	ands r0, r4
	orrs r0, r1
	strb r0, [r3, #3]
	lsrs r2, r2, #1
	ands r2, r5
	ldrh r1, [r3, #4]
	adds r0, r6, #0
	ands r0, r1
	orrs r0, r2
	strh r0, [r3, #4]
_080A5712:
	movs r2, #0
	mov r5, sp
	adds r5, #0x1d
	adds r6, r7, #0
	adds r6, #0x32
	mov r4, sp
	adds r4, #0x15
	adds r3, r7, #0
	adds r3, #0x28
_080A5724:
	adds r0, r4, r2
	adds r1, r3, r2
	ldrb r1, [r1]
	strb r1, [r0]
	adds r2, #1
	cmp r2, #7
	ble _080A5724
	movs r2, #0
	adds r4, r5, #0
	adds r3, r6, #0
_080A5738:
	adds r0, r4, r2
	adds r1, r3, r2
	ldrb r1, [r1]
	strb r1, [r0]
	adds r2, #1
	cmp r2, #6
	b _080A5778
	.align 2, 0
_080A5748: .4byte 0xFFFFF07F
_080A574C: .4byte 0xFFF80FFF
_080A5750: .4byte 0xFFFFFE07
_080A5754: .4byte 0xFFFC0FFF
_080A5758: .4byte 0xFFFFF83F
_080A575C: .4byte 0xFFFFFC1F
_080A5760: .4byte 0x00003FFF
_080A5764: .4byte 0xFFC000FF
_080A5768: .4byte 0x000003FF
_080A576C: .4byte 0xFFFC000F
_080A5770: .4byte 0xFFFFF000
_080A5774: .4byte 0x00000FFF
_080A5778:
	ble _080A5738
	mov r0, sp
	ldr r1, [sp, #0x6c]
	movs r2, #0x24
	bl SRAMTransfer_WithCheck
	add sp, #0x70
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_START LoadSavedUnit
LoadSavedUnit: @ 0x080A5794
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x24
	adds r4, r1, #0
	ldr r1, _080A59D8  @ gUnknown_030067A0
	ldr r3, [r1]
	mov r1, sp
	movs r2, #0x24
	bl _call_via_r3
	mov r0, sp
	ldrb r0, [r0, #0x14]
	bl GetROMCharStruct
	str r0, [r4]
	mov r0, sp
	ldrb r0, [r0]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x19
	bl GetROMClassStruct
	str r0, [r4, #4]
	mov r0, sp
	ldrh r0, [r0]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0x1b
	strb r0, [r4, #8]
	ldr r0, [sp]
	lsls r0, r0, #0xd
	lsrs r3, r0, #0x19
	strb r3, [r4, #9]
	mov r0, sp
	ldrh r0, [r0, #2]
	lsls r0, r0, #0x17
	lsrs r0, r0, #0x1a
	strb r0, [r4, #0x10]
	mov r0, sp
	ldrb r0, [r0, #3]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1a
	strb r0, [r4, #0x11]
	ldr r0, [sp, #4]
	lsls r0, r0, #0xe
	lsrs r0, r0, #0x1a
	strb r0, [r4, #0x12]
	mov r0, sp
	ldrb r0, [r0, #6]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1b
	strb r0, [r4, #0x14]
	mov r0, sp
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0x1b
	strb r0, [r4, #0x15]
	mov r0, sp
	ldrb r1, [r0, #7]
	lsrs r1, r1, #4
	ldrb r0, [r0, #8]
	movs r5, #1
	ands r0, r5
	lsls r0, r0, #4
	orrs r0, r1
	strb r0, [r4, #0x16]
	mov r0, sp
	ldrb r0, [r0, #8]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1b
	strb r0, [r4, #0x17]
	mov r0, sp
	ldrh r0, [r0, #8]
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x1b
	strb r0, [r4, #0x18]
	mov r0, sp
	ldrb r0, [r0, #9]
	lsrs r0, r0, #3
	strb r0, [r4, #0x19]
	mov r0, sp
	ldrb r0, [r0, #0xa]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	strb r0, [r4, #0x1a]
	mov r0, sp
	ldrh r0, [r0, #0xa]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x1b
	strb r0, [r4, #0x1d]
	mov r0, sp
	ldrb r1, [r0, #0xb]
	lsrs r1, r1, #2
	ldrb r0, [r0, #0xc]
	lsls r0, r0, #6
	orrs r0, r1
	strh r0, [r4, #0x1e]
	ldr r0, [sp, #0xc]
	lsls r0, r0, #0xa
	lsrs r0, r0, #0x12
	strh r0, [r4, #0x20]
	mov r0, sp
	ldrh r2, [r0, #0xe]
	lsrs r2, r2, #6
	ldrb r0, [r0, #0x10]
	movs r1, #0xf
	ands r0, r1
	lsls r0, r0, #0xa
	orrs r0, r2
	strh r0, [r4, #0x22]
	ldr r0, [sp, #0x10]
	lsls r0, r0, #0xe
	lsrs r0, r0, #0x12
	strh r0, [r4, #0x24]
	mov r0, sp
	ldrh r0, [r0, #0x12]
	lsrs r0, r0, #2
	strh r0, [r4, #0x26]
	cmp r3, #0x63
	bls _080A5886
	movs r0, #0xff
	strb r0, [r4, #9]
_080A5886:
	movs r0, #0
	str r0, [r4, #0xc]
	mov r0, sp
	ldrb r1, [r0, #3]
	lsrs r1, r1, #7
	ldrh r0, [r0, #4]
	ldr r2, _080A59DC  @ 0x00000FFF
	ands r0, r2
	lsls r0, r0, #1
	orrs r0, r1
	ands r0, r5
	cmp r0, #0
	beq _080A58A4
	movs r0, #5
	str r0, [r4, #0xc]
_080A58A4:
	mov r0, sp
	ldrh r0, [r0, #4]
	ands r0, r2
	lsls r0, r0, #1
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080A58BC
	ldr r0, [r4, #0xc]
	movs r1, #9
	orrs r0, r1
	str r0, [r4, #0xc]
_080A58BC:
	mov r0, sp
	ldrh r0, [r0, #4]
	ands r0, r2
	lsls r0, r0, #1
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	beq _080A58D6
	ldr r0, [r4, #0xc]
	movs r1, #0x80
	lsls r1, r1, #7
	orrs r0, r1
	str r0, [r4, #0xc]
_080A58D6:
	mov r0, sp
	ldrh r0, [r0, #4]
	ands r0, r2
	lsls r0, r0, #1
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	beq _080A58F0
	ldr r0, [r4, #0xc]
	movs r1, #0x80
	lsls r1, r1, #8
	orrs r0, r1
	str r0, [r4, #0xc]
_080A58F0:
	mov r0, sp
	ldrh r0, [r0, #4]
	ands r0, r2
	lsls r0, r0, #1
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080A590A
	ldr r0, [r4, #0xc]
	movs r1, #0x80
	lsls r1, r1, #6
	orrs r0, r1
	str r0, [r4, #0xc]
_080A590A:
	mov r0, sp
	ldrh r0, [r0, #4]
	ands r0, r2
	lsls r0, r0, #1
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _080A5924
	ldr r0, [r4, #0xc]
	movs r1, #0x80
	lsls r1, r1, #9
	orrs r0, r1
	str r0, [r4, #0xc]
_080A5924:
	mov r0, sp
	ldrh r0, [r0, #4]
	ands r0, r2
	lsls r0, r0, #1
	movs r1, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080A593E
	ldr r0, [r4, #0xc]
	movs r1, #0x80
	lsls r1, r1, #0x12
	orrs r0, r1
	str r0, [r4, #0xc]
_080A593E:
	mov r0, sp
	ldrh r0, [r0, #4]
	ands r0, r2
	lsls r0, r0, #1
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080A5958
	ldr r0, [r4, #0xc]
	movs r1, #0x80
	lsls r1, r1, #0xe
	orrs r0, r1
	str r0, [r4, #0xc]
_080A5958:
	movs r2, #0
	adds r7, r4, #0
	adds r7, #0x32
	mov r6, sp
	adds r6, #0x1d
	movs r0, #0x39
	adds r0, r0, r4
	mov r8, r0
	adds r5, r4, #0
	adds r5, #0x28
	mov r3, sp
	adds r3, #0x15
_080A5970:
	adds r0, r5, r2
	adds r1, r3, r2
	ldrb r1, [r1]
	strb r1, [r0]
	adds r2, #1
	cmp r2, #7
	ble _080A5970
	movs r2, #0
	adds r5, r7, #0
	adds r3, r6, #0
_080A5984:
	adds r0, r5, r2
	adds r1, r3, r2
	ldrb r1, [r1]
	strb r1, [r0]
	adds r2, #1
	cmp r2, #6
	ble _080A5984
	adds r0, r4, #0
	bl GetUnitMaxHP
	adds r1, r0, #0
	adds r0, r4, #0
	bl SetUnitHP
	movs r0, #0
	mov r1, r8
	strb r0, [r1]
	ldrb r0, [r4, #9]
	cmp r0, #0x7f
	bne _080A59B0
	movs r0, #0xff
	strb r0, [r4, #9]
_080A59B0:
	ldrb r1, [r4, #0x10]
	movs r0, #0x10
	ldrsb r0, [r4, r0]
	cmp r0, #0x3f
	bne _080A59BE
	movs r0, #0xff
	strb r0, [r4, #0x10]
_080A59BE:
	ldrb r1, [r4, #0x11]
	movs r0, #0x11
	ldrsb r0, [r4, r0]
	cmp r0, #0x3f
	bne _080A59CC
	movs r0, #0xff
	strb r0, [r4, #0x11]
_080A59CC:
	add sp, #0x24
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080A59D8: .4byte gUnknown_030067A0
_080A59DC: .4byte 0x00000FFF