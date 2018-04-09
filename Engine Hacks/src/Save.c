#include "Save.h"


void SaveUnit(UnitStruct *CurrentUnit, RevampedSavedUnit *CurrentSaveIndex) {
	CpuFill16(0, (u32)CurrentSaveIndex, 0x24);
	CpuFill16(0, (u32)CurrentSaveIndex+1, 0x24);
	if (CurrentUnit->unitDataPtr != 0) {
	
	CurrentUnit->index = (u8)Div(((u32)CurrentUnit - 0x202BE4C), 0x48) + 1;
		
	//Setup
	CurrentSaveIndex->CharIndex = CurrentUnit->unitDataPtr->CharIndex;
	CurrentSaveIndex->ClassID = CurrentUnit->classDataPtr->number;
	
	CurrentSaveIndex->Level = CurrentUnit->level;
	CurrentSaveIndex->Exp = CurrentUnit->exp;
	CurrentSaveIndex->xPos = CurrentUnit->xPos;
	CurrentSaveIndex->yPos = CurrentUnit->yPos;
	
	CurrentSaveIndex->Dead = CurrentUnit->stateflags.dead;
	CurrentSaveIndex->Undeployed = CurrentUnit->stateflags.undeployed;
	CurrentSaveIndex->SoloAnim1 = CurrentUnit->stateflags.soloAnim1;
	CurrentSaveIndex->SoloAnim2 = CurrentUnit->stateflags.soloAnim2;
	CurrentSaveIndex->MetisTome = CurrentUnit->stateflags.metisTome;
	CurrentSaveIndex->Unk1 = CurrentUnit->stateflags.somethingAboutNotBeingDrawn;
	CurrentSaveIndex->Unk2 = CurrentUnit->stateflags.unk5;
	CurrentSaveIndex->UndeployedInPreviousChapter = CurrentUnit->stateflags.undeployedInPreviousChapter;
	
	CurrentSaveIndex->MaxHP = CurrentUnit->maxHP;
	CurrentSaveIndex->Pow = CurrentUnit->pow;
	CurrentSaveIndex->Skl = CurrentUnit->skl;
	CurrentSaveIndex->Spd = CurrentUnit->spd;
	CurrentSaveIndex->Def = CurrentUnit->def;
	CurrentSaveIndex->Res = CurrentUnit->res;
	CurrentSaveIndex->Lck = CurrentUnit->lck;
	CurrentSaveIndex->ConBonus = CurrentUnit->conBonus;
	CurrentSaveIndex->MovBonus = CurrentUnit->movBonus;
	
	CurrentSaveIndex->Item1 = CurrentUnit->items[0];
	CurrentSaveIndex->Item2 = CurrentUnit->items[1];
	CurrentSaveIndex->Item3 = CurrentUnit->items[2];
	CurrentSaveIndex->Item4 = CurrentUnit->items[3];
	CurrentSaveIndex->Item5 = CurrentUnit->items[4];
	for (int i = 0; i <= 7; i++) {
		CurrentSaveIndex->WeaponRanks[i] = CurrentUnit->ranks[i];
	}
	for (int i = 0; i <= 6; i++) {
		CurrentSaveIndex->WeaponRanks[i] = CurrentUnit->ranks[i];
	}
	}
}

void LoadSavedUnit(RevampedSavedUnit *CurrentSaveIndex, UnitStruct *CurrentUnit) {
	if (CurrentSaveIndex->CharIndex != 0) {
		CurrentUnit->index = (u8)Div(((u32)CurrentUnit - 0x202BE4C), 0x48) + 1;
		
		CurrentUnit->unitDataPtr = (UnitData *)GetCharRomPointer(CurrentSaveIndex->CharIndex);
		CurrentUnit->classDataPtr = (ClassData *)GetClassOffset(CurrentSaveIndex->ClassID);
		CurrentUnit->level = CurrentSaveIndex->Level;
		CurrentUnit->exp = CurrentSaveIndex->Exp;
		
		CurrentUnit->stateflags.dead = CurrentSaveIndex->Dead;
		CurrentUnit->stateflags.undeployed = CurrentSaveIndex->Undeployed;
		CurrentUnit->stateflags.soloAnim1 = CurrentSaveIndex->SoloAnim1;
		CurrentUnit->stateflags.soloAnim2 = CurrentSaveIndex->SoloAnim2;
		CurrentUnit->stateflags.metisTome = CurrentSaveIndex->MetisTome;
		CurrentUnit->stateflags.somethingAboutNotBeingDrawn = CurrentSaveIndex->Unk1;
		CurrentUnit->stateflags.unk5 = CurrentSaveIndex->Unk2;
		CurrentUnit->stateflags.undeployedInPreviousChapter = CurrentSaveIndex->UndeployedInPreviousChapter;
	
		CurrentUnit->maxHP = CurrentSaveIndex->MaxHP;
		CurrentUnit->pow = CurrentSaveIndex->Pow;
		CurrentUnit->skl = CurrentSaveIndex->Skl;
		CurrentUnit->spd = CurrentSaveIndex->Spd ;
		CurrentUnit->def = CurrentSaveIndex->Def;
		CurrentUnit->res = CurrentSaveIndex->Res;
		CurrentUnit->lck = CurrentSaveIndex->Lck;
		CurrentUnit->conBonus = CurrentSaveIndex->ConBonus;
		CurrentUnit->movBonus = CurrentSaveIndex->MovBonus;
		
		CurrentUnit->items[0] = CurrentSaveIndex->Item1;
		CurrentUnit->items[1] = CurrentSaveIndex->Item2;
		CurrentUnit->items[2] = CurrentSaveIndex->Item3;
		CurrentUnit->items[3] = CurrentSaveIndex->Item4;
		CurrentUnit->items[4] = CurrentSaveIndex->Item5;
		for (int i = 0; i <= 7; i++) {
		CurrentUnit->ranks[i] = CurrentSaveIndex->WeaponRanks[i];
		}
		for (int i = 0; i <= 6; i++) {
		CurrentUnit->ranks[i] = CurrentSaveIndex->WeaponRanks[i];
		}
	}
}