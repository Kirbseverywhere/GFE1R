#include "types.h"
#include "menu commands.h"
#include "class.h"
#include "character structs.h"

u8 WaitEffect();
u8 TurnWheelResetAction();
u8 TurnWheelUsability();

typedef struct {
	u16 Action;
	u16 sArg; //Padding, may add stuff to it later on
	UnitStruct *Unit;
	UnitStruct *Target;
	u8 AdditionalData[0x10];
} MilaTurnWheelData; 

#define MilaBuffer ((MilaTurnWheelData*)0x203EF00)

#define TurnWheel_Waited 1