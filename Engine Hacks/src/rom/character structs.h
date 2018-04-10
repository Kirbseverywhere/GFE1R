//Character Struct
typedef struct {
	u16 NameTID;
	u16 DescTID;
	u8 CharIndex;
} UnitData;

typedef struct {
		//0xF
		u32 unk1:1;
		u32 unk2:1;
		u32 unk3:1;
		u32 unk4:1;
		u32 linkArenaPalette:2;
		u32 unk5:1;
		u32 shakeMapSprite:1;
		
		//0xE
		u32 increasePortraitIndex:1;
		u32 inACutscene:1;
		u32 undeployedInPreviousChapter:1;
		u32 unk6:1;
		u32 somethingRelatedToBattle:3;
		u32 somethingAboutNotBeingDrawn:1;
		
		//0xD
		u32 soloAnim1:1;
		u32 soloAnim2:1;
		u32 metisTome:1;
		u32 dropLastItem:1;
		u32 insideBallista:1;
		u32 danceRelated:1;
		u32 linkArenaRelated:1;
		u32 squareLayerPriority:1;
		
		//0xC
		u32 onARoofTile:1;
		u32 moved:1;
		u32 beingRescued:1;
		u32 rescuing:1;
		u32 undeployed:1;
		u32 dead:1;
		u32 unselectable:1;
		u32 notDrawn:1;
} StateFlags;
	
typedef struct {
	UnitData* unitDataPtr;
	ClassData* classDataPtr;
	u8 level;
	u8 exp;
	u8 u0A_saved;
	u8 index;
	StateFlags stateflags;
	u8 xPos;
	u8 yPos;
	u8 maxHP;
	u8 curHP;
	u8 pow;
	u8 skl;
	u8 spd;
	u8 def;
	u8 res;
	u8 lck;
	u8 conBonus;
	u8 rescueAll;
	u8 ballistaIndex;
	u8 movBonus;
	u16 items[5];
	u8 ranks[8];
	u8 status:4;    
	u8 statusDuration:4;
	u8 torchDuration:4;
    u8 barrierDuration:4;
	u8 supports[6];
	u8 unitLeader;
	u8 supportBits;
	u8 u3A;
	u8 u3B;
	void* BWLPointer;
	u16 ai3And4;
	u8 ai1;
	u8 ai1data;
	u8 ai2;
	u8 ai2data;
	u8 u46_saved;
	u8 u47;
} UnitStruct;

typedef struct {
	UnitData* unitDataPtr;
	ClassData* classDataPtr;
	u8 level;
	u8 exp;
	u8 u0A_saved;
	u8 index;
	StateFlags stateflags;
	u8 xPos;
	u8 yPos;
	u8 maxHP;
	u8 curHP;
	u8 stats[6];
	u8 conBonus;
	u8 rescueAll;
	u8 ballistaIndex;
	u8 movBonus;
	u16 items[5];
	u8 ranks[8];
	u8 status:4;    
	u8 statusDuration:4;
	u8 torchDuration:4;
    u8 barrierDuration:4;
	u8 supports[6];
	u8 unitLeader;
	u8 supportBits;
	u8 u3A;
	u8 u3B;
	void* BWLPointer;
	u16 ai3And4;
	u8 ai1;
	u8 ai1data;
	u8 ai2;
	u8 ai2data;
	u8 u46_saved;
	u8 u47;
} UnitStruct2;

#define sPlayerUnits ((UnitStruct*)0x202BE4C)
#define sEnemyUnits ((UnitStruct*)0x202CFBC)
#define sCurrentUnit ((UnitStruct**)0x3004E50)

//B/W/L Struct
typedef struct {
	u8 LearnedSkills[4];
	u8 mag;
	/*u8 chapterNumberForLatestDeath:4;
	u16 turnNumberForLatestDeath:12;
	u16 unk1:4;
	u32 expGained:12;
	u32 wins:10;
	u32 battles:12;
	u32 unk2:2;
	u8 mostRecentKiller;
	u8 padding;*/
} BWLStruct;

//Action Struct

typedef struct {
	u8 pad1[0xC];
	u8 currentAllegiance;
	u8 targetAllegiance;
	u8 newX;
	u8 newY;
	u8 squaresMoved;
	u8 actionTaken;
	u8 invSlot;
	u8 targetX;
	u8 targetY;
	u8 snagHP;
}ActionStruct;
#define sAction ((ActionStruct*)0x203A958)

	//Action State
#define Wait 0x1

typedef struct {
	u16 oldX;
	u16 oldY;
} CoordinateStruct;

#define sOldCoordinates ((CoordinateStruct*)0x202BE48)

#define ApplyUnitMovement ((void (*)(UnitStruct *Unit))(0x0801849C+1))
#define RefreshEntityMaps ((void (*)())(0x0801A1F4+1))
#define SMS_UpdateFromGameData ((void (*)())(0x080271A0+1)) 
#define GetCharRomPointer ((u32 (*)(u32 charID))(0x8019464+1))