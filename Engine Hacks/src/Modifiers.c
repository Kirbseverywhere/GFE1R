#include "Modifiers.h" 

extern void GenerateBGTsa(u16 *MapOffset, u32 NumberOfTiles, u8 PaletteId);
extern ModifierMenu MyModifiers[];

void ModifierScreenSetup(ModifierProc *CurrentProc) {
	CurrentProc->CurrentDef = MyModifiers;
	CurrentProc->CursorIndex = 0;
	CurrentProc->NumberOfEntries = 0;
	//Make it so the bg buffers update
	SetupBG(0);
	
	//Load the background graphics and palette and tsa(generate it)
	LZ77UncompVram(0x8B12DB4, 0x6008000);
	MemCopy(0x8B1754C, (0x020228A8 + 6 * 0x20), 0x20);
	GenerateBGTsa((u16 *)BG3Buffer, 0x280, 6);
	
	MemCopy(0x859ED70, (0x020228A8 + 16 * 0x20), 0x20);
	InitDefaultFont();
	InitText(0, 0);
}

void ModifierScreenLoop(ModifierProc *CurrentProc) {
	Font_ResetAllocation();
	for(int i = 0; CurrentProc->CurrentDef[i].Flag != 0; i++) {
		char Buffer[40];
		UncompTID(CurrentProc->CurrentDef[i].NameID, Buffer);
		PrintInline(0, BG0Buffer + ((CurrentProc->CurrentDef[i].X * 2) + (CurrentProc->CurrentDef[i].Y * 0x20)) + 10, CurrentProc->CurrentDef[i].TextColor, 0, 0x20 - (CurrentProc->CurrentDef[i].X * 2) + 3, Buffer);
	}
	if ((sInput->newPress & InputB) != 0) {
		ClearProcLoop((Proc *)CurrentProc);
		PlaySound(0x6B); 
	}
}

const _ProcCode ModifierProcCode[] = {
	_PROC_SET_NAME("KIRB_MODIFIERS"),
	_PROC_CALL_ROUTINE(EnableAllGfxOffset),
	_PROC_CALL_ROUTINE_ARG(NewFadeIn, 8),
	_PROC_WHILE_ROUTINE(FadeInExist),
	_PROC_CALL_ROUTINE(ModifierScreenSetup),
	_PROC_LOOP_ROUTINE(ModifierScreenLoop),
	_PROC_CALL_ROUTINE_ARG(NewFadeOut, 8),
	_PROC_WHILE_ROUTINE(FadeOutExist),
	_PROC_CALL_ROUTINE(0x80AC3DD),
	_PROC_END
};

