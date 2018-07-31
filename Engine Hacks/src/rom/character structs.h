//Character Struct

typedef struct {
	u16 NameTID;
	u16 DescTID;
	u8 CharIndex;
} UnitData;

typedef struct {
		//0xF
		u32 unk1:1; // 0x80000000
		u32 unk2:1; // 0x40000000
		u32 unk3:1; // 0x20000000
		u32 unk4:1; // 0x10000000
		u32 linkArenaPalette:2; // 0x4000000
		u32 unk5:1; // 0x2000000
		u32 shakeMapSprite:1; // 0x1000000
		
		//0xE
		u32 increasePortraitIndex:1; // 0x800000
		u32 inACutscene:1; // 0x400000
		u32 undeployedInPreviousChapter:1; // 0x200000
		u32 unk6:1; // 0x100000
		u32 somethingRelatedToBattle:3;  // 0x20000
		u32 somethingAboutNotBeingDrawn:1; // 0x10000
		
		//0xD
		u32 soloAnim1:1; // 0x8000
		u32 soloAnim2:1; // 0x4000
		u32 metisTome:1; // 0x2000
		u32 dropLastItem:1; // 0x1000
		u32 insideBallista:1; // 0x800
		u32 danceRelated:1; // 0x400
		u32 linkArenaRelated:1; // 0x200
		u32 squareLayerPriority:1; // 0x100
		
		//0xC
		u32 onARoofTile:1; // 0x80
		u32 moved:1; // 0x40
		u32 beingRescued:1; // 0x20 
		u32 rescuing:1; // 0x10
		u32 undeployed:1; // 0x8
		u32 dead:1; // 0x4
		u32 unselectable:1; // 0x2
		u32 notDrawn:1; // 0x1
} StateFlags;
	
typedef struct {
	UnitData* unitDataPtr;
	ClassData* classDataPtr;
	s8 level;
	s8 exp;
	u8 u0A_saved;
	u8 index;
	StateFlags stateflags;
	s8 xPos;
	s8 yPos;
	s8 maxHP;
	s8 curHP;
	s8 pow;
	s8 skl;
	s8 spd;
	s8 def;
	s8 res;
	s8 lck;
	s8 conBonus;
	u8 rescueAll;
	u8 ballistaIndex;
	s8 movBonus;
	u16 items[5];
	u8 ranks[8];
	u8 status:4;    
	u8 statusDuration:4;
	u8 torchDuration:4;
    u8 barrierDuration:4;
	u8 supports[7];
	u8 supportBits;
	u8 mag;
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

typedef struct {
	UnitStruct unit;
	u16 weaponAfter;
	u16 weaponBefore;
	u32 weaponAttributes;
	u8  weaponType;
	u8  weaponSlotIndex;
	u8  canCounter;
	s8   WTHitModifier;
	s8   WTAtkModifier;
	u8  terrainIndex;
	u8  terrainDefense;
	u8  terrainAvoid;
	u8  terrainResistance;
	u8  _u59;
	u16 battleAttack;
	u16 battleDefense;
	u16 battleAttackSpeed;
	u16 battleHit;
	u16 battleAvoid;
	u16 battleEffectiveHit;
	u16 battleCrit;
	u16 battleDodge;
	u16 battleEffectiveCrit;
	u16 battleSilencerRate;
	u8  expGain;
	u8  statusOut;
	u8  levelPrevious;
	u8  expPrevious;
	u8  currentHP;
	s8   changeHP;
	s8   changePow;
	s8   changeSkl;
	s8   changeSpd;
	s8   changeDef;
	s8   changeRes;
	s8   changeLck;
	s8   changeCon;
	s8   wexpMultiplier;
	u8  nonZeroDamage;
	u8  weaponBroke;
	u8  _u7E;
	u8  _u7F;
}BattleUnitStruct;

#define sPlayerUnits ((UnitStruct*)0x202BE4C)
#define sEnemyUnits ((UnitStruct*)0x202CFBC)
#define sCurrentUnit ((UnitStruct**)0x3004E50)

/*
//B/W/L Struct
typedef struct {
	u8 losses;
	u8 actionCounter1;
	u8 actionCounter2; //Unaligned short
	u8 selectedCounter;
	u8 statScreenCounter;
	u8 chapterNumberForLatestDeath:4;
	u8 turnNumberForLatestDeath:12;
	u8 unk1:4;
	u8 expGained:12;
	u8 wins:10;
	u8 battles:12;
	u8 unk2:2;
	u8 mostRecentKiller;
	u8 padding;
}*/

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
#define GetROMCharStruct ((UnitData *(*)(u32 charID))(0x8019464+1))
#define GetUnitMaxHP ((u8 (*)(UnitStruct *Unit))(0x08019190+1))
#define SetUnitHP ((void (*)(UnitStruct *Unit, u8 Value))(0x08019368+1))
#define ClearUnitStruct ((void (*)(UnitStruct *Unit))(0x080177f4+1))