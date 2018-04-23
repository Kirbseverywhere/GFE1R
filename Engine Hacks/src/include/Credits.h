#include "types.h"
#include "Proc.h"
#include "menu commands.h"
#include "text.h"
#include "buffers.h"
#include "lib.h"
#include "input.h"
#include "class.h"
#include "character structs.h"
#include "portraits.h"


const _ProcCode CreditsProcCode[];
const _ProcCode BlockProcCode[];

typedef struct CreditsDefinitions _CreditsDef;

typedef struct {
	u16 PortraitIndex;
	u8 PortraitX;
	u8 PortraitY;
	char *MakerName;
	char *HelperName;
	_CreditsDef *LeftCredits;
	_CreditsDef *RightCredits;
} CreditsDefinitions;

typedef struct {
	Proc Header;
	CreditsDefinitions *CurrentDef;
}CreditsProc;
