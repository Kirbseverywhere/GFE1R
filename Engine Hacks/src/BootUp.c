#include "BootUp.h"

extern void GenerateBGTsa(u16 *Offset, int numberOfTiles, int Palette);
extern const char BuildNumber[];
extern const char BuildDate[];
extern const char BuildName[];
extern u32 *BootUpScreenMenu;

void DEBUGONLY_Startup() {
	SetMainUpdateRoutine((void *)0x080152F4+1);
	SetVBlankHandler((void *)0x080152A4+1);
	
	SetupBuffers();
	
	LZ77UncompVram(0x8B12DB4, 0x6008000);
	MemCopy(0x8B1754C, (0x020228A8 + 14 * 0x20), 0x20);
	GenerateBGTsa((u16 *)BG3Buffer, 0x280, 15);
	
	MemCopy(0x859ED70, (0x020228A8 + 16 * 0x20), 0x20);
	LoadDebugFont(2, 0);
	LoadeOBJDebugFont(-1, 14);
	InitDefaultFont();
	InitText(0, 0);
	MakeMenu((u32)BootUpScreenMenu);
	PrintInline(0, BGLoc(BG0Buffer, 0, 0), 0, 0, 30, (char *)BuildName);
	PrintInline(0, BGLoc(BG0Buffer, 0, 2), 0, 0, 13, (char *)BuildDate);
}