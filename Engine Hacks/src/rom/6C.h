#include "types.h"

//Actual 6C Funcs
#define New6C ((void (*)(u32 *_6C, u8 Parent))(0x08002C7C+1))
#define Clear6CLoop ((void (*)(Proc *_6C))(0x8002E94+1))

//Funcs found in 6C
#define LockGameLogic 0x8015360+1
#define FadeToBlack 0x80AE2F4+1 //Arg = Time
#define FadeOut 0x80AE2D0+1 //Arg = Time
#define ClearOAM 0x8030184+1
#define ClearPalette 0x80AE2B8+1
#define Fade 0x8014068+1
#define FixBG3Cam 0x80B2464+1
#define LoadMapSprites 0x80301B8+1
#define LoadMap 0x80311A8+1
#define UnlockGameLogic 0x8015370+1


//6C Bytecode
#define _6C_END 0, 0, 0
#define _6C_SET_NAME(apsNamePointer) 1, 0, (void *)apsNamePointer
#define _6C_CALL_ROUTINE(aprRoutine) 2, 0, (void *)aprRoutine
#define _6C_LOOP_ROUTINE(aprRoutine) 3, 0, (void *)aprRoutine
#define _6C_SET_DESTRUCTOR(aprRoutine) 4, 0, (void *)aprRoutine
#define _6C_NEW_CHILD(ap6CChild) 5, ap6CChild
#define _6C_NEW_CHILD_BLOCKING(ap6CChild) 6, ap6CChild
#define _6C_NEW_MAIN_BUGGED(ap6CMain) 7, ap6CMain
#define _6C_WHILE_EXISTS(ap6CToCheck) 8, ap6CToCheck
#define _6C_END_ALL(ap6CToCheck) 9, ap6CToCheck
#define _6C_BREAK_ALL_LOOP(ap6CToCheck) 10, ap6CToCheck
#define _6C_LABEL(aLabelId) 11,
#define _6C_GOTO(aLabelId) 12,
#define _6C_JUMP(ap6CCode) 13,
#define _6C_SLEEP(aTime) 14, aTime, 0
#define _6C_SET_MARK(aMark) 15,
#define _6C_BLOCK 16,
#define _6C_END_IF_DUPLICATE 17,
#define _6C_SET_BIT4 18,
#define _6C_13 19,
#define _6C_WHILE_ROUTINE(aprRoutine) 20, 0, (void *)aprRoutine
#define _6C_CONTINUE 21,
#define _6C_CALL_ROUTINE_2(aprRoutine) 22, 0, (void *)aprRoutine
#define _6C_END_DUPLICATES 23,
#define _6C_CALL_ROUTINE_ARG(aprRoutine, aArgument) 24, aArgument, (void *)aprRoutine
#define _6C_19 25,

//6C command struct
typedef struct{
	u16 Command;
	u16 SArg;
	void *LArg;
} _ProcCode;

typedef struct _Proc Proc;
typedef struct _Proc Struct6C;

struct _Proc {
	_ProcCode* codeStart;
	_ProcCode* codeCurrent;
	void (*onDestruct)(Proc*);
	void (*onUpdate)(Proc*);
	const char* name;
	Proc* parent;
	Proc* firstChild;
	Proc* previous;
	Proc* next;
	u16 sleepClock;
	u8  mark;
	u8  state;
	u8  blockCount;
};