typedef struct {
	u16 StartTileIndex;
	u8 LocalXCusor;
	u8 TextColor;
	u8 TextTileWidth;
	s8 DoubleBuffer;
	u8 BufferID;
	u8 Unk1;
}TextStruct;

typedef struct {
	Proc_Header Header;
	u8 Pad[0x2B - 0x29];
	u8 unk1;
}PrepScreenProc;

typedef struct {
	Proc_Header Header;
	u8 Pad1[0x2B - 0x29]
	u8 Index;
	u8 Pad2[0x38 - 0x2C]
	PrepScreenCommandProc *Commands[8];
}PrepScreenProc2; //Not sure since I didn't decompile the rest, but probably Overall Interpreter, while the first proc is some sort of header?

typedef struct {
	Proc_Header Header;
	void *OnPress; 
	int Unk1;
	int TID;
	u8 Usability;
	u8 Indentifier;
	TextStruct CommandNameTextStruct;
}PrepScreenCommandProc;

typedef struct {
	u32 Unk1;
	u8 Unk2:1;
	u8 SomeBool:1;
	u8 Unk3:6
} PrepScreenRelatedStruct; //202BCB0
#define sPrepStruct ((PrepScreenRelatedStruct *)0x202BCB0)

s8 CheckSomethingSomewhere() {
	return sPrepStruct->SomeBool;
}

void PrepScreen_SetupOptions(PrepScreenProc *CurrentProc) { //0x08095524
	sub_8096FAC();
	if (CheckSomethingSomewhere() == 0) { //s8 //if we're in the normal prep screen
		PrepScreen_AddOption(0, sub_80951B8(), 0, 0x574, 0); //Pick Units
		PrepScreen_AddOption(1, sub_80951CC(), 0, 0x576, 0); //Items
		sub_80951CC(CurrentProc);
		if (sub_8095504() != 0) { //s8
			PrepScreen_AddOption(7, sub_80952C0(), 0, 0x578, 0); //Check map
		}
		else {
			PrepScreen_AddOption(7, sub_80952C0(), 1, 0x578, sub_8095504()); //Check map
		}
		if ((sub_8094FF4() << 0x18) == 0) { //s8
			PrepScreen_AddOption(2, sub_8095210(), 0, 0x579, 0); //Save
		}
		else {
			PrepScreen_AddOption(2, sub_8095210(), 1, 0x579, 0); //Save
		}
	}
	else { //Link arena
		PrepScreen_AddOption(0, sub_80951B8(), 0, 0x574, 0); //Pick Units
		PrepScreen_AddOption(1, sub_80951CC(), 0, 0x576, 0); //Items
		PrepScreen_AddOption(3, sub_8095284(), 0, 0x75C, 0); //Cancel
	}
	PrepScreen_AddOnBPress(sub_8095290());
	PrepScreen_AddOnStartPress(sub_8095240());
	TileMap_FillRect(0x02022CA8, 0xC, 0x13, 0);
	TileMap_FillRect(0x020234A8, 0xC, 0x13, 0);
	if (CheckSomethingSomewhere() != 0) { //s8
		sub_8097200(1, 5);
	}
	else {
		sub_8097200(1, 6);
	}
	sub_80970CC(CurrentProc->unk1);
}

void PrepScreen_AddOption(u8 Indentifier, void *OnPress, u8 Usability, int TID, int IDunno) { //0x08097024
	PrepScreenProc2 *CurrentProc = Proc_Find(0x8A186EC);
	if (CurrentProc != 0) {
		for (int i = 0; i <= 7; i++) {
			if (CurrentProc->Commands[i] != 0) {
				if (CurrentProc->Commands[i]->Indentifier == Indentifier) {
					CurrentProc->Commands[i]->OnPress = OnPress;
					CurrentProc->Commands[i]->Usability = Usability;
					CurrentProc->Commands[i]->TID = TID;
					CurrentProc->Commands[i]->Unk1 = IDunno;
					return;
				}
			}
		}
		PrepScreenCommandProc *NewCommand = Proc_Create(0x8A186DC);
		CurrentProc->Commands[CurrentProc->Index] = NewCommand;
		NewCommand->Indentifier = Indentifier;
		NewCommand->OnPress = OnPress;
		NewCommand->Usability = Usability;
		NewCommand->TID = TID;
		NewCommand->Unk1 = IDunno;
		Text_Init(&NewCommand->CommandNameTextStruct, 7)
		CurrentProc->Index++;
	}
}