#include "Facepetting.h" 

extern void GenerateBGTsa(u16 *MapOffset, u32 NumberOfTiles, u8 PaletteId);
#define Font_ResetAllocation ((void (*)())(0x8003D21))
#define BaseVarX 8
#define BaseConstX 3

void CreateFacepettingScreen(u32 EventEngine) {
	NewBlockingProc((u32 *)FacepettingProcCode, EventEngine);
}

void FacepettingScreenSetup(FacepettingProc *CurrentProc) {
	CurrentProc->CursorXCoord = 240/2;
	CurrentProc->CursorYCoord = 160/2;
	DrawFacepetBase(CurrentProc);
}

void DrawFacepetBase(FacepettingProc *CurrentProc) {
	
	//Make it so the bg buffers update
	SetupBG(0);
	
	//Load the background graphics and palette and tsa(generate it)
	LZ77UncompVram(0x8B12DB4, 0x6008000);
	MemCopy(0x8B1754C, (0x020228A8 + 14 * 0x20), 0x20);
	GenerateBGTsa((u16 *)BG3Buffer, 0x280, 14);
	
	MemCopy(0x859ED70, (0x020228A8 + 16 * 0x20), 0x20);
	InitDefaultFont();
	InitText(0, 0);
}

void PrintConstantsFacepettingScreen() {
	PrintInline(0, BGLoc(BG0Buffer, 0, (160-24)/8), 0, 0, 30, "Use your divine lightning to pierce my sky, baby...");
}

void FacepettingScreenLoop(FacepettingProc *CurrentProc) {
	UpdateBG3HOffset();
	DrawFacepetBase(CurrentProc);
	Font_ResetAllocation();
	DeleteFaceByIndex(0);
	EnableAllGfx((u32)CurrentProc);
	if ((sInput->currentPress & InputB) != 0) {
		ClearProcLoop((Proc *)CurrentProc);
		PlaySound(0x6B); 
	}
	else {
	MakeUIWindow(0,(160-32)/8,240/8,4,1);
	MakeUIPalette(-1);
	PrintConstantsFacepettingScreen();
	
	if ((sInput->currentPress & InputUp) != 0) {
		CurrentProc->CursorYCoord--;
	}
	
	if ((sInput->currentPress & InputRight) != 0) {
		CurrentProc->CursorXCoord++;
	}
	
	if ((sInput->currentPress & InputLeft) != 0) {
		CurrentProc->CursorXCoord--;
	}
	
	if ((sInput->currentPress & InputDown) != 0) {
		CurrentProc->CursorYCoord++;
	}
	DrawFace(0, 1, 240-128, 4, 0x102);
	DrawCursor(CurrentProc->CursorXCoord,CurrentProc->CursorYCoord);
	}
}

const _ProcCode FacepettingProcCode[] = {
	_PROC_SET_NAME("ASMC_KIRB_FACEPET"),
	_PROC_CALL_ROUTINE(LockGameLogic),
	_PROC_CALL_ROUTINE_ARG(FadeToBlack, 0x10),
	_PROC_CALL_ROUTINE(ClearOAM),
	_PROC_WHILE_ROUTINE(ClearPalette),
	_PROC_CALL_ROUTINE_ARG(FadeOut, 0x10),
	_PROC_CALL_ROUTINE(FacepettingScreenSetup),
	
	//Main Logic
	_PROC_LOOP_ROUTINE(FacepettingScreenLoop),
	//_PROC_CALL_ROUTINE_2(FixBG3Cam), //Replacing the BG3 Offset where it needs to be
	_PROC_CALL_ROUTINE(LoadMapSprites),
	//_PROC_CALL_ROUTINE(LoadMap),
	_PROC_CALL_ROUTINE(UnlockGameLogic),
	_PROC_END
};