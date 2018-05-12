
.org 0x00
.thumb

NameStart:
	push	{lr}
	push	{r6}
	mov		r6, r8
	push	{r6, r7}
	push	{r0-r3}
	mov		r1, r8
	ldr		r0, [r1]
	ldrh	r0, [r0]
	ldr		r4, TxtBufferRt
	bl		Goto_r4
	mov		r6, r0
	ldr 	r4, Font_ResetAllocation
	bl 		Goto_r4
	pop		{r0-r3}
	sub 	sp, #8
	mov 	r4, #0x40
	mul 	r1, r4
	lsl 	r0, #1 @x2
	add 	r0, r1
	ldr 	r1, RectTileBuffer
	add 	r1, r0
	mov 	r0, sp
	str 	r3, [r0]
	str 	r6, [r0, #4]
	mov 	r0, #0
	mov 	r3, #0
	ldr 	r4, PrintInline
	bl 		Goto_r4
	add 	sp, #8
	pop		{r6, r7}
	pop		{r6}
	pop		{r4}
	
	Goto_r4:
	bx		r4
	
	Goto_r3:
	bx		r3
	
	Goto_r2:
	bx		r2


.align 2

TxtBufferRt:
.long 0x0800A241 @ u16 text id
PrintInline:
.long 0x0800443D @ int TextStruct, int TilePointerRoot, int ColorID, int localX, int TileWidth, char *Text
Font_ResetAllocation:
.long 0x8003D21
RectTileBuffer:
.long 0x2003D2C
