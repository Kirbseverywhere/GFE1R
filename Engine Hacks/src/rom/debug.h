/*
 *Loads Debug Font Graphics.
 *Arguments: r0 = BG Index (2), r1 = Tile Offset (0 for default)
 */
#define LoadDebugFont ((void (*)(u8 BGIndex, u32 TileOffset))(0x0800378C+1))
/*
 *Displays String to BG
 *Arguments: r0 = Output Tile Root, r1 = String pointer
 */
#define DebugPrint ((void (*)(u32 TileRoot, char *StringPointer))(0x08003804+1))
/*
 *
 *
 */
#define PrintDecToDebugBuffer ((void (*)(u32 Number, u32 DigitCount))(0x0800394C+1))
/*
 *
 *
 */
#define DisplayDebugBufferText ((void (*)())(0x08003A3C+1))
/*
 *
 *
 */
#define LoadeOBJDebugFont ((void (*)(u32 OBJTileOffset, u32 OBJPalIndex))(0x08003B24+1))
/*
 *
 *
 */
#define OBJPrintDec ((void (*)(u32 x, u32 y, u32 Number, u32 DigitCount))(0x08003BFC+1))
/*
 *
 *
 */
#define OBJPrintHex ((void (*)(u32 x, u32 y, u32 Number, u32 DigitCount))(0x08003C20+1))
/*
 *
 *
 */
 #define OBJPrintString ((void (*)(u32 x, u32 y, char *StringPointer))(0x08003BB0+1))