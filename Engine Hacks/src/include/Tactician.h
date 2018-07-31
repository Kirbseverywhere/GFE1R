#include "Proc.h"
#include "menu commands.h"
#include "text.h"
#include "buffers.h"
#include "lib.h"
#include "input.h"
#include "class.h"
#include "character structs.h"

typedef struct {
	char Name[10];
	u16 Class:8;
	u16 Gender:1;
	u16 Boon:3; //7 stats
	u16 Bane:3; //^
	//One free bit
} MUStruct; //0xC bytes saved

#define sMU ((MUStruct *)0x202bd10)

typedef struct MenuDefinition _MenuDef;

typedef struct {
    u16 Type;
	u16 PaddingForNow;
	u16 CursorXCoord;
	u16 CursorYCoord;
    void(*OnPress)(Proc*);
    void(*OnUpdate)(Proc*);
    _MenuDef *UpDef;
    _MenuDef *RightDef;
    _MenuDef *LeftDef;
    _MenuDef *DownDef;
	u32 SharedTypeData[4];
} MenuDefinition;

typedef struct {
	Proc Header;
	MenuDefinition *CurrentDef;
	u8 ClassIndex;
}TacticianProc;



void CreateTacticianScreen();
void TacticianScreenSetup(TacticianProc *CurrentProc);
void TacticianScreenLoop(TacticianProc *CurrentProc);
const _ProcCode TacticianProcCode[];
extern u8 CharIDTable[];
void DrawBase(TacticianProc *CurrentProc);
#define DrawFace ((void (*)(u32 Index, u16 Portrait, u32 x, u32 y, u32 State))(0x800563C+1))
#define DeleteFaceByIndex ((void (*)(u32 Index))(0x8005758+1))