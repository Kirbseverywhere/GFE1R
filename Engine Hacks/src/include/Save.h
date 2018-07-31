#include "types.h"
#include "SRAM.h"
#include "class.h"
#include "character structs.h"
#include "lib.h"

typedef struct __attribute__ ((packed)) {
	u32 ClassID:7; //6
	u32 Level:5; //11
	u32 Exp:7; //18
	u32 xPos:6; //24
	u32 yPos:6; //30
	
	// Bitfield
	u32 Dead:1; //31 
	u32 Undeployed:1; //0 //0x4
	u32 SoloAnim1:1; //1
	u32 SoloAnim2:1; //2
	u32 MetisTome:1; //3
	u32 Unk1:1; //4
	u32 Unk2:1; //5
	u32 UndeployedInPreviousChapter:1; //6
	
	u32 Mag:5; //Maybe Free? //11
	
	//Stats
	u32 MaxHP:6; //17
	u32 Pow:5; //22
	u32 Skl:5; //27
	u32 Spd:5; //31|0 //0x8
	u32 Def:5; //5
	u32 Res:5; //10
	u32 Lck:5; //15
	u32 ConBonus:5; //20
	u32 MovBonus:5; //25
	
	//Items
	u32 Item1:14; //31|7 //0xC
	u32 Item2:14; //21
	u32 Item3:14; //31|3 //0x10
	u32 Item4:14; //17
	u32 Item5:14; //31
	
	u8 CharIndex; //0x14
	u8 WeaponRanks[8];
	u8 SupportLevels[7];
} RevampedSavedUnit;


enum SaveIndices {SaveSlot1, SaveSlot2, SaveSlot3, SuspendBackup, Suspend, LinkArena, SaveEmpty};

#define SaveSlotSize		0xD8C
#define	SaveSlot1Offset		(u8 *)(SuspendOffset + SuspendSize)
#define	SaveSlot2Offset		(u8 *)(SaveSlot1Offset + SaveSlotSize)
#define	SaveSlot3Offset		(u8 *)(SaveSlot2Offset + SaveSlotSize)

#define SuspendSize			0x3E58
#define	SuspendOffset		(u8 *)0xE0000D4 
#define	SuspendBackupOffset	(u8 *)0xE0000D4 //Made the same by colorz' hack

#define LinkArenaSize		0x870
#define	LinkArenaOffset		(u8 *)(SaveSlot3Offset + SaveSlotSize)