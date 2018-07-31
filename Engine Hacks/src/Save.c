#include "Save.h"

u8 *GetSaveDataLocation(enum SaveIndices SaveSlotIndex)
{
	u8 *pSaveSlot;

	switch(SaveSlotIndex)
	{
		case SaveSlot1:
			pSaveSlot = SaveSlot1Offset;
			break;
		case SaveSlot2:
			pSaveSlot = SaveSlot2Offset;
			break;
		case SaveSlot3:
			pSaveSlot = SaveSlot3Offset;
			break;
		case SuspendBackup:
			pSaveSlot = SuspendBackupOffset;
			break;
		case Suspend:
			pSaveSlot = SuspendOffset;
			break;
		case LinkArena:
			pSaveSlot = LinkArenaOffset;
			break;
		case SaveEmpty:
			pSaveSlot = (u8 *)0xE008000; //Maybe Saved Debug Data, Useless now, so putting at unnaccessible sram
			break;
		default:
			pSaveSlot = 0;
	}

	return pSaveSlot;
}


void SaveUnit(UnitStruct *Arg1, RevampedSavedUnit *CurrentSaveIndex) {
	RevampedSavedUnit BufferedSavedUnit;
	UnitStruct *CurrentUnit = Arg1;
	UnitStruct BufferedUnit;
	if(!CurrentUnit->classDataPtr) {
		CurrentUnit = &BufferedUnit;
		ClearUnitStruct(CurrentUnit);
		BufferedSavedUnit.CharIndex = 0;
		BufferedSavedUnit.ClassID = 0;
	}
	else {
	BufferedSavedUnit.CharIndex = CurrentUnit->unitDataPtr->CharIndex;
	BufferedSavedUnit.ClassID = CurrentUnit->classDataPtr->number;
	}
	BufferedSavedUnit.Level = CurrentUnit->level;
	BufferedSavedUnit.Exp = CurrentUnit->exp;
	BufferedSavedUnit.xPos = CurrentUnit->xPos;
	BufferedSavedUnit.yPos = CurrentUnit->yPos;
	BufferedSavedUnit.MaxHP = CurrentUnit->maxHP;
	BufferedSavedUnit.Pow = CurrentUnit->pow;
	BufferedSavedUnit.Mag = CurrentUnit->mag;
	BufferedSavedUnit.Skl = CurrentUnit->skl;
	BufferedSavedUnit.Spd = CurrentUnit->spd;
	BufferedSavedUnit.Def = CurrentUnit->def;
	BufferedSavedUnit.Res = CurrentUnit->res;
	BufferedSavedUnit.Lck = CurrentUnit->lck;
	BufferedSavedUnit.ConBonus = CurrentUnit->conBonus;
	BufferedSavedUnit.MovBonus = CurrentUnit->movBonus;
	BufferedSavedUnit.Item1 = CurrentUnit->items[0];
	BufferedSavedUnit.Item2 = CurrentUnit->items[1];
	BufferedSavedUnit.Item3 = CurrentUnit->items[2];
	BufferedSavedUnit.Item4 = CurrentUnit->items[3];
	BufferedSavedUnit.Item5 = CurrentUnit->items[4];
	if (CurrentUnit->stateflags.dead != 0) {
		BufferedSavedUnit.Dead = 1;
	}
	if (CurrentUnit->stateflags.undeployed != 0) {
		BufferedSavedUnit.Undeployed = 1;
	}
	if (CurrentUnit->stateflags.soloAnim1 != 0) {
		BufferedSavedUnit.SoloAnim1 = 1;
	}
	if (CurrentUnit->stateflags.soloAnim2 != 0) {
		BufferedSavedUnit.SoloAnim2 = 1;
	}
	if (CurrentUnit->stateflags.metisTome != 0) {
		BufferedSavedUnit.MetisTome = 1;
	}
	if (CurrentUnit->stateflags.somethingAboutNotBeingDrawn != 0) {
		BufferedSavedUnit.Unk1 = 1;
	}
	if (CurrentUnit->stateflags.unk5 != 0) {
		BufferedSavedUnit.Unk2 = 1;
	}
	if (CurrentUnit->stateflags.undeployedInPreviousChapter != 0) {
		BufferedSavedUnit.UndeployedInPreviousChapter = 1;
	}
	for(int i = 0; i < 8; i++) {
		BufferedSavedUnit.WeaponRanks[i] = CurrentUnit->ranks[i];
	}
	for(int i = 0; i < 7; i++) {
		BufferedSavedUnit.SupportLevels[i] = CurrentUnit->supports[i];
	}
	SRAMTransfer_WithCheck(&BufferedSavedUnit, CurrentSaveIndex, sizeof(RevampedSavedUnit));
}
	
#define ReadSramFast ((void (*)(void *org, void *dest, int size))(0x3002B08+1))

void LoadSavedUnit(RevampedSavedUnit *CurrentSaveIndex, UnitStruct *CurrentUnit) {
	RevampedSavedUnit BufferedSavedUnit;
	ReadSramFast(CurrentSaveIndex, &BufferedSavedUnit, sizeof(RevampedSavedUnit));
	CurrentUnit->unitDataPtr = GetROMCharStruct(BufferedSavedUnit.CharIndex);
	CurrentUnit->classDataPtr = GetROMClassStruct(BufferedSavedUnit.ClassID);
	CurrentUnit->level = BufferedSavedUnit.Level;
	CurrentUnit->exp = BufferedSavedUnit.Exp; 
	CurrentUnit->xPos = BufferedSavedUnit.xPos;
	CurrentUnit->yPos = BufferedSavedUnit.yPos;
	CurrentUnit->maxHP = BufferedSavedUnit.MaxHP;
	CurrentUnit->pow = BufferedSavedUnit.Pow;
	CurrentUnit->skl = BufferedSavedUnit.Skl;
	CurrentUnit->spd = BufferedSavedUnit.Spd;
	CurrentUnit->def = BufferedSavedUnit.Def;
	CurrentUnit->res = BufferedSavedUnit.Res;
	CurrentUnit->lck = BufferedSavedUnit.Lck;
	CurrentUnit->conBonus = BufferedSavedUnit.ConBonus;
	CurrentUnit->movBonus = BufferedSavedUnit.MovBonus;
	CurrentUnit->items[0] = BufferedSavedUnit.Item1;
	CurrentUnit->items[1] = BufferedSavedUnit.Item2;
	CurrentUnit->items[2] = BufferedSavedUnit.Item3;
	CurrentUnit->items[3] = BufferedSavedUnit.Item4;
	CurrentUnit->items[4] = BufferedSavedUnit.Item5;
	if(BufferedSavedUnit.Exp > 100) {
		CurrentUnit->exp = -1;
	}
	if (BufferedSavedUnit.Dead != 0) {
		CurrentUnit->stateflags.dead = 1;
		CurrentUnit->stateflags.notDrawn = 1;
	}
	if (BufferedSavedUnit.Undeployed != 0) {
		CurrentUnit->stateflags.undeployed = 1;
		CurrentUnit->stateflags.notDrawn = 1;
	}
	if (BufferedSavedUnit.SoloAnim1 != 0) {
		CurrentUnit->stateflags.soloAnim1 = 1;
	}
	if (BufferedSavedUnit.SoloAnim2 != 0) {
		CurrentUnit->stateflags.soloAnim2 = 1;
	}
	if (BufferedSavedUnit.MetisTome != 0) {
		CurrentUnit->stateflags.metisTome = 1;
	}
	if (BufferedSavedUnit.Unk1 != 0) {
		CurrentUnit->stateflags.somethingAboutNotBeingDrawn = 1;
	}
	if (BufferedSavedUnit.Unk2 != 0) {
		CurrentUnit->stateflags.unk5 = 1;
	}
	if (BufferedSavedUnit.UndeployedInPreviousChapter != 0) {
		CurrentUnit->stateflags.undeployedInPreviousChapter = 1;
	}
	for(int i = 0; i < 8; i++) {
		CurrentUnit->ranks[i] = BufferedSavedUnit.WeaponRanks[i];
	}
	for(int i = 0; i < 7; i++) {
		CurrentUnit->supports[i] = BufferedSavedUnit.SupportLevels[i];
	}
	SetUnitHP(CurrentUnit, (u8)GetUnitMaxHP(CurrentUnit));
	CurrentUnit->supportBits = 0;
	if(CurrentUnit->exp == 0x7F) {
		CurrentUnit->exp = -1;
	}
	if(CurrentUnit->xPos == 0x3F) {
		CurrentUnit->xPos = -1;
	}
	if(CurrentUnit->yPos == 0x3F) {
		CurrentUnit->yPos = -1;
	}
}