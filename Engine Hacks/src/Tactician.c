#include "Tactician.h" 

extern void GenerateBGTsa(u16 *MapOffset, u32 NumberOfTiles, u8 PaletteId);
extern MenuDefinition MUMenuDefinition;
extern u16 StatTextIdList[];
extern u8 MaleClassList[];
extern u8 FemaleClassList[];

#pragma long_calls

UnitStruct *GetUnitByCharId(u8 CharID);

#pragma long_calls_off

extern u8 MaleMUCharID[];
extern u8 FemaleMUCharID[];
extern u8 CharIDTable[2];

typedef struct {
	u16 Class;
	u16 Weapon;
} ClassWeaponComparisonList;

extern ClassWeaponComparisonList ClassWeaponList[];
#define Font_ResetAllocation ((void (*)())(0x8003D21))
#define BaseVarX 8
#define BaseConstX 3

void CreateTacticianScreen(u32 EventEngine) {
	NewBlockingProc((u32 *)TacticianProcCode, EventEngine);
}

void TacticianScreenSetup(TacticianProc *CurrentProc) {
	CurrentProc->ClassIndex = 0;
	CurrentProc->CurrentDef = &MUMenuDefinition;
	sMU->Gender = 0;
	sMU->Boon = 0; //S/M
	sMU->Bane = 3; //Luck
	DrawBase(CurrentProc);
}

void DrawBase(TacticianProc *CurrentProc) {
	
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

void PrintConstantsTacticianScreen() {
	//PrintInline(0, BGLoc(BG0Buffer, 6, 4), 0, 0, 9, "My Unit Creator.");
	PrintInline(0, BGLoc(BG0Buffer, BaseConstX, 8), 0, 0, 5, "Name:");
	PrintInline(0, BGLoc(BG0Buffer, BaseConstX, 10), 0, 0, 5, "Gender:");
	PrintInline(0, BGLoc(BG0Buffer, BaseConstX, 12), 0, 0, 5, "Boon:");
	PrintInline(0, BGLoc(BG0Buffer, BaseConstX, 14), 0, 0, 5, "Bane:");
	PrintInline(0, BGLoc(BG0Buffer, BaseConstX, 16), 0, 0, 5, "Class:");
}

void TacticianScreenLoop(TacticianProc *CurrentProc) {
	UpdateBG3HOffset();
	DrawBase(CurrentProc);
	Font_ResetAllocation();
	DeleteFaceByIndex(0);
	EnableAllGfx((u32)CurrentProc);
	if ((sInput->newPress & InputB) != 0) {
		ClearProcLoop((Proc *)CurrentProc);
		PlaySound(0x6B); 
	}
	else {
	MakeUIWindow(2,6,15,14,1);
	MakeUIPalette(-1);
	PrintConstantsTacticianScreen();
	PrintInline(0, BGLoc(BG0Buffer, BaseVarX, 8), 0, 0, 8, sMU->Name);
	if (sMU->Gender == 0) PrintInline(0, BGLoc(BG0Buffer, BaseVarX, 10), 0, 0, 6, "Male"); else PrintInline(0, BGLoc(BG0Buffer, BaseVarX, 10), 0, 0, 6, "Female");
	char Buffer[20];
	UncompTID(StatTextIdList[sMU->Boon], Buffer);
	PrintInline(0, BGLoc(BG0Buffer, BaseVarX, 12), 0, 0, 4, Buffer);
	UncompTID(StatTextIdList[sMU->Bane], Buffer);
	PrintInline(0, BGLoc(BG0Buffer, BaseVarX, 14), 0, 0, 4, Buffer);
	if (sMU->Gender == 0) UncompTID(((ClassData *)GetClassOffset(MaleClassList[CurrentProc->ClassIndex]))->nameTextId, Buffer); else UncompTID(((ClassData *)GetClassOffset(FemaleClassList[CurrentProc->ClassIndex]))->nameTextId, Buffer); 
	PrintInline(0, BGLoc(BG0Buffer, BaseVarX, 16), 0, 0, 10, Buffer);
	if (sMU->Gender == 0) sMU->Class = MaleClassList[CurrentProc->ClassIndex]; else sMU->Class = FemaleClassList[CurrentProc->ClassIndex];
	
	if ((sInput->newPress & InputUp) != 0) {
		if (CurrentProc->CurrentDef->UpDef != 0) CurrentProc->CurrentDef = ((MenuDefinition *)CurrentProc->CurrentDef->UpDef);
	}
	
	if ((sInput->newPress & InputRight) != 0) {
		if (CurrentProc->CurrentDef->RightDef != 0) CurrentProc->CurrentDef = ((MenuDefinition *)CurrentProc->CurrentDef->RightDef);
	}
	
	if ((sInput->newPress & InputLeft) != 0) {
		if (CurrentProc->CurrentDef->LeftDef != 0) CurrentProc->CurrentDef = ((MenuDefinition *)CurrentProc->CurrentDef->LeftDef);
	}
	
	if ((sInput->newPress & InputDown) != 0) {
		if (CurrentProc->CurrentDef->DownDef != 0) CurrentProc->CurrentDef = ((MenuDefinition *)CurrentProc->CurrentDef->DownDef);
	}
	
	if ((sInput->newPress & InputA) != 0) {
		if (CurrentProc->CurrentDef->OnPress != 0) CurrentProc->CurrentDef->OnPress((Proc *)CurrentProc);
	}
	DrawFace(0, (sMU->Gender)+8, 180, 32, 0x102);
	DrawCursor(CurrentProc->CurrentDef->CursorXCoord,CurrentProc->CurrentDef->CursorYCoord);
	DrawHighlight(1,0,(CurrentProc->CurrentDef->CursorXCoord / 8)+1,(CurrentProc->CurrentDef->CursorYCoord / 8), 8);
	}
}

void GenderButtonEffect() {
	sMU->Gender++;
}

void BoonButtonEffect() {
	if (sMU->Boon < 5) sMU->Boon++; else sMU->Boon = 0;
}

void BaneButtonEffect() {
	if (sMU->Bane < 5) sMU->Bane++; else sMU->Bane = 0;
}

void ClassButtonEffect(TacticianProc *CurrentProc) {
	if (CurrentProc->ClassIndex < 3) CurrentProc->ClassIndex++; else CurrentProc->ClassIndex = 0;
}

void ApplyMUDataChange() {
	UnitStruct2 *MyUnit = ((UnitStruct2*)GetUnitByCharId(CharIDTable[0]));
	MyUnit->classDataPtr = (ClassData *)GetClassOffset(sMU->Class);
	MyUnit->stats[sMU->Boon] += 2;
	MyUnit->stats[sMU->Bane] -= 2;
	for(int i = 0; i < 8; i++) {
		MyUnit->ranks[i] = ((ClassData *)GetClassOffset(sMU->Class))->ranks[i];
	}
	for(int i = 0; ClassWeaponList[i].Class != 0; i++) {
		if(sMU->Class == ClassWeaponList[i].Class) {
			MyUnit->items[0] = ClassWeaponList[i].Weapon;
			return;
		}
	}
}

void ApplyMUCharacterChange() {
	#define GetCharOffset ((u32 (*)(u32 ID))(0x8019464+1))
	((UnitStruct*)GetUnitByCharId(CharIDTable[0]))->unitDataPtr = (UnitData *)GetCharOffset(CharIDTable[sMU->Gender]);
}

const _ProcCode TacticianProcCode[] = {
	_PROC_SET_NAME("ASMC_KIRB_MU"),
	_PROC_CALL_ROUTINE(LockGameLogic),
	_PROC_CALL_ROUTINE_ARG(FadeToBlack, 0x10),
	_PROC_CALL_ROUTINE(ClearOAM),
	_PROC_WHILE_ROUTINE(ClearPalette),
	_PROC_CALL_ROUTINE_ARG(FadeOut, 0x10),
	_PROC_CALL_ROUTINE(TacticianScreenSetup),
	
	//Main Logic
	_PROC_LOOP_ROUTINE(TacticianScreenLoop),
	//_PROC_CALL_ROUTINE_2(FixBG3Cam), //Replacing the BG3 Offset where it needs to be
	_PROC_CALL_ROUTINE(LoadMapSprites),
	//_PROC_CALL_ROUTINE(LoadMap),
	_PROC_CALL_ROUTINE(UnlockGameLogic),
	_PROC_END
};
