#include "types.h"
#include "Proc.h"
#include "menu commands.h"
#include "text.h"
#include "buffers.h"
#include "lib.h"
#include "input.h"
#include "class.h"
#include "character structs.h"
#define Font_ResetAllocation ((void (*)())(0x8003D21))



#define SetFlag ((void (*)(u8 Flag))(0x08083D80+1))
#define UnsetFlag ((void (*)(u8 Flag))(0x08083D94+1))
#define CheckFlag ((u8 (*)(u8 Flag))(0x8083DA8+1))

typedef struct {
	u16 NameID;
	u16 DescID; //Unused For now
	u8 Flag;
	u8 TextColor;
	u8 X;
	u8 Y;
} ModifierMenu;

typedef struct {
	Proc Header;
	ModifierMenu *CurrentDef;
	u8 CursorIndex;
	u8 NumberOfEntries;
}ModifierProc;

extern const _ProcCode ModifierProcCode[];