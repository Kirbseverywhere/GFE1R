#include "Credits.h"
extern void GenerateBGTsa(u16 *MapOffset, u32 NumberOfTiles, u8 PaletteId);
extern CreditsDefinitions MyCreditsDefs[];

void CreditsScreenBuilder(u32 savemenuProc) {
	DeleteProc(savemenuProc);
	NewBlockingProc((u32 *)CreditsProcCode, FindProc(0x85916D4));
}

void CreditsScreenSetup(CreditsProc *CurrentProc) {
	//Make it so the bg buffers update
	SetupBG(0);
	
	//Load the background graphics and palette and tsa(generate it)
	LZ77UncompVram(0x8B12DB4, 0x6008000);
	MemCopy(0x8B1754C, (0x020228A8 + 14 * 0x20), 0x20);
	GenerateBGTsa((u16 *)BG3Buffer, 0x280, 14);
	
	MemCopy(0x859ED70, (0x020228A8 + 16 * 0x20), 0x20);
	InitDefaultFont();
	InitText(0, 0);
	
	CurrentProc->CurrentDef = MyCreditsDefs;
	DrawFace(0, CurrentProc->CurrentDef->PortraitIndex, CurrentProc->CurrentDef->PortraitX, CurrentProc->CurrentDef->PortraitY, 0x102);
}

void CreditsScreenLoop(CreditsProc *CurrentProc) {
	#define Font_ResetAllocation ((void (*)())(0x8003D21))
	Font_ResetAllocation();
	if ((sInput->newPress & InputB) != 0) {
		ClearProcLoop((Proc *)CurrentProc);
		PlaySound(0x6B); 
		DeleteFaceByIndex(0);
	}
	if ((sInput->newPress & InputRight) != 0) {
		CurrentProc->CurrentDef = ((CreditsDefinitions *)CurrentProc->CurrentDef->RightCredits);
		DeleteFaceByIndex(0);
		DrawFace(0, CurrentProc->CurrentDef->PortraitIndex, CurrentProc->CurrentDef->PortraitX, CurrentProc->CurrentDef->PortraitY, 0x102);
		PlaySound(0x6F); 
	}
	if ((sInput->newPress & InputLeft) != 0) {
		CurrentProc->CurrentDef = ((CreditsDefinitions *)CurrentProc->CurrentDef->LeftCredits);
		DeleteFaceByIndex(0);
		DrawFace(0, CurrentProc->CurrentDef->PortraitIndex, CurrentProc->CurrentDef->PortraitX, CurrentProc->CurrentDef->PortraitY, 0x102);
		PlaySound(0x6F); 
	}
	//Get the unit index/name and print it
	char Buffer[0x20];
	UncompTID((((UnitData *)GetCharRomPointer(CurrentProc->CurrentDef->PortraitIndex))->NameTID), Buffer);
	PrintInline(0, BGLoc(BG0Buffer, 0, 0), 0, 0, 30, Buffer);
	PrintInline(0, BGLoc(BG0Buffer, 0, 16), 0, 0, 6, "Creator:");
	PrintInline(0, BGLoc(BG0Buffer, 0, 18), 0, 0, 6, "Touchups:"); 
	PrintInline(0, BGLoc(BG0Buffer, 6, 16), 0, 0, 24, CurrentProc->CurrentDef->MakerName);
	PrintInline(0, BGLoc(BG0Buffer, 6, 18), 0, 0, 24, CurrentProc->CurrentDef->HelperName);
	
	
}

void Resetsavemenu() {
	NewBlockingProc((u32 *)0x8A200B8, FindProc(0x85916D4));
	
}

const _ProcCode CreditsProcCode[] = {
	_PROC_SET_NAME("KIRB_CREDITS"),
	_PROC_CALL_ROUTINE(LockGameLogic),
	_PROC_CALL_ROUTINE_ARG(NewFadeIn, 0x8),
	_PROC_WHILE_ROUTINE(FadeInExist),
	_PROC_CALL_ROUTINE(ClearOAM),
	_PROC_CALL_ROUTINE(ClearPalette),
	_PROC_CALL_ROUTINE_ARG(NewFadeOut, 0x8),
	_PROC_WHILE_ROUTINE(FadeOutExist),
	_PROC_CALL_ROUTINE(CreditsScreenSetup),
	
	//Main Logic
	_PROC_LOOP_ROUTINE(CreditsScreenLoop),
	
	//End
	_PROC_CALL_ROUTINE_ARG(NewFadeIn, 0x8),
	_PROC_WHILE_ROUTINE(FadeInExist),
	_PROC_CALL_ROUTINE(LoadMapSprites),
	_PROC_CALL_ROUTINE_ARG(NewFadeOut, 0x8),
	_PROC_WHILE_ROUTINE(FadeOutExist),
	_PROC_CALL_ROUTINE(Resetsavemenu),
	_PROC_CALL_ROUTINE(UnlockGameLogic),
	_PROC_END
};

const _ProcCode BlockProcCode[] = {
	_PROC_BLOCK,
	_PROC_END
};