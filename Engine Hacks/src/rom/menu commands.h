//Routines
#define SetEventSlotC ((void (*)(u16 Value))(0x0800D1F8+1))
#define MakeUIWindow ((void (*)(int x, int y, int width, int height, int style))(0x804E368+1))
#define MakeUIPalette ((void (*)(int Unk1))(0x0804E0A8+1))
#define MakeMenu ((void (*)(int MenuCommandMap))(0x804EBE4+1))
#define DrawHighlight ((void (*)(int BGIndex, int unk1, int x, int y, int width))(0x804E98C+1))
#define RemoveHighlight ((void (*)(int BGIndex, int unk1, int x, int y, int width))(0x804EA08+1))

//Values
#define KillMenu 0x2
#define PlayBeep 0x4
#define ClearMenuGfx 0x10

