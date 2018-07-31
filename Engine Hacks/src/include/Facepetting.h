#include "Proc.h"
#include "menu commands.h"
#include "text.h"
#include "buffers.h"
#include "lib.h"
#include "input.h"
#include "class.h"
#include "character structs.h"

typedef struct {
} MenuDefinition;

typedef struct {
	Proc Header;
	u16 CursorXCoord;
	u16 CursorYCoord;
}FacepettingProc;



void CreateTacticianScreen();
void TacticianScreenSetup(FacepettingProc *CurrentProc);
void TacticianScreenLoop(FacepettingProc *CurrentProc);
const _ProcCode FacepettingProcCode[];
void DrawFacepetBase(FacepettingProc *CurrentProc);
#define DrawFace ((void (*)(u32 Index, u16 Portrait, u32 x, u32 y, u32 State))(0x800563C+1))
#define DeleteFaceByIndex ((void (*)(u32 Index))(0x8005758+1))