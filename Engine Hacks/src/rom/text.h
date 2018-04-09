//Text drawing routines

//Font set up

/*
 *Sets which font to use.
 *Args: 1: Font struct pointer. To use the default font(The menu one), have 0 as an arg.
 */
#define SetFont ((void (*)(u32 fontStructPointer))(0x8003D38+1))

/*
 *Loads Palette and sets glyph set for dialogue font.
 *Args: none.
 */
#define LoadFontUI ((void (*))(0x80043A8+1))

/*
 *Inits default font with default parameters.
 *Args: none.
 */
#define InitDefaultFont ((void (*)())(0x8003C94+1))

//Text Drawing

/*
 *Inits Text for current font, and clears vram.
 *Args: 2: Text Struct Pointer, Text Tile width.
 */
#define InitText ((void (*)(int TextStruct, int TextTileWidth))(0x8003D5C+1))

/*
 *
 *
 */
#define ClearText ((void (*)(int TextStruct))(0x08003DC8+1))

/*
 *
 *
 */
#define PrintInline ((void (*)(int TextStruct, int TilePointerRoot, int ColorID, int localX, int TileWidth, char *Text))(0x0800443C+1))

//Other
#define UncompTID ((void (*)(u16 TID, char *Buffer))(0x800A280+1))
