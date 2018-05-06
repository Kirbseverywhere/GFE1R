typedef struct {
	u16 nameTextId; 
	u16 descTextId; 
	u8  number; 
	u8  promotion; 
	u8  SMSId; 
	u8  slowWalking; 
	u16 defaultPortraitId; 
	u8  u0A; 
	
	u8  baseHP; 
	u8  basePow;
	u8  baseSkl;
	u8  baseSpd;
	u8  baseDef;
	u8  baseRes;
	u8  baseLck;
	u8  baseCon;
	u8  baseMov;
	
	u8  maxHP;
	u8  maxPow;
	u8  maxSkl;
	u8  maxSpd;
	u8  maxDef;
	u8  maxRes;
	u8  maxLck;
	u8  maxCon;
	
	u8  classRelativePower;
	
	u8  growthHP;
	u8  growthPow;
	u8  growthSkl;
	u8  growthSpd;
	u8  growthDef;
	u8  growthRes;
	u8  growthLck;
	
	u8  promotionHP;
	u8  promotionPow;
	u8  promotionSkl;
	u8  promotionSpd;
	u8  promotionDef;
	u8  promotionRes;
	
	u8 pad2a[2];
	//u32 attributes;
	
	u8  ranks[8];
	
	void*    pBattleAnimDef;
	void*    pMovCostTable[3]; // standard, rain, snow
	void*    pTerrainBonusTables[3]; // def, avo, res
	
	void*    pU50;
} ClassData;

#define GetClassOffset ((u32 (*)(u32 ID))(0x08019444+1))
#define GetROMClassStruct ((ClassData *(*)(u32 classID))(0x08019444+1))