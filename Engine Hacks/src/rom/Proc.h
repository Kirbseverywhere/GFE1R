#include "types.h"

//Actual PROC Funcs
#define NewProc ((void (*)(u32 *_PROC, u32 Parent))(0x08002C7C+1))
#define NewBlockingProc ((void (*)(u32 *_PROC, u32 Parent))(0x08002CE0+1))
#define ClearProcLoop ((void (*)(Proc *_PROC))(0x8002E94+1))
#define FindProc ((u32 (*)(u32 ProcToFind))(0x08002E9C+1))
#define DeleteEachProc ((void (*)(u32 _PROC))(0x08003078+1))
#define DeleteProc ((void (*)(u32 _PROC))(0x08002D6C+1))

//Funcs found in PROC
#define LockGameLogic 0x8015360+1
#define FadeToBlack 0x80AE2F4+1 //Arg = Time
#define FadeOut 0x80AE2D0+1 //Arg = Time
#define ClearOAM 0x8030184+1
#define ClearPalette 0x80AE2B8+1
#define Fade 0x8014068+1
#define FixBG3Cam 0x80B2464+1
#define LoadMapSprites 0x80301B8+1
#define LoadMap 0x80311A8+1
#define EnableAllGfxOffset 0x80AE2A0+1
#define UnlockGameLogic 0x8015370+1

#define NewFadeIn 0x80AE2D0+1 //Call With Arg
#define FadeInExist 0x80AE2A0+1 //Call with While

#define NewFadeOut 0x80AE2F4+1 //Call With Arg
#define FadeOutExist 0x80AE2B8+1 //Call with While

//PROC Bytecode
#define _PROC_END 0, 0, 0
#define _PROC_SET_NAME(apsNamePointer) 1, 0, (void *)apsNamePointer
#define _PROC_CALL_ROUTINE(aprRoutine) 2, 0, (void *)aprRoutine
#define _PROC_LOOP_ROUTINE(aprRoutine) 3, 0, (void *)aprRoutine
#define _PROC_SET_DESTRUCTOR(aprRoutine) 4, 0, (void *)aprRoutine
#define _PROC_NEW_CHILD(apPROCChild) 5, apPROCChild
#define _PROC_NEW_CHILD_BLOCKING(apPROCChild) 6, apPROCChild
#define _PROC_NEW_MAIN_BUGGED(apPROCMain) 7, apPROCMain
#define _PROC_WHILE_EXISTS(apPROCToCheck) 8, apPROCToCheck
#define _PROC_END_ALL(apPROCToCheck) 9, apPROCToCheck
#define _PROC_BREAK_ALL_LOOP(apPROCToCheck) 10, apPROCToCheck
#define _PROC_LABEL(aLabelId) 11,
#define _PROC_GOTO(aLabelId) 12,
#define _PROC_JUMP(apPROCCode) 13,
#define _PROC_SLEEP(aTime) 14, aTime, 0
#define _PROC_SET_MARK(aMark) 15,
#define _PROC_BLOCK 16, 0, 0
#define _PROC_END_IF_DUPLICATE 17,
#define _PROC_SET_BIT4 18,
#define _PROC_13 19,
#define _PROC_WHILE_ROUTINE(aprRoutine) 20, 0, (void *)aprRoutine
#define _PROC_CONTINUE 21,
#define _PROC_CALL_ROUTINE_2(aprRoutine) 22, 0, (void *)aprRoutine
#define _PROC_END_DUPLICATES 23,
#define _PROC_CALL_ROUTINE_ARG(aprRoutine, aArgument) 24, aArgument, (void *)aprRoutine
#define _PROC_19 25,

//PROC command struct
typedef struct{
	u16 Command;
	u16 SArg;
	void *LArg;
} _ProcCode;

typedef struct _PROC Proc;
typedef struct _PROC StructProc;

struct _PROC {
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