//Functions
/*
 *Fills BG Map with given value
 *r0 = BG Map (Buffer) Pointer, r1 = value (word)
 */
#define FillBGMap ((void (*)(u32 BGBufferPointer, u32 value))(0x08001220+1))
#define SetupBG ((void (*)(u8 Value))(0x08001B58+1))
#define UpdateBG3HOffset ((void (*)())(0x8086B7C+1))
#define SetupBuffers ((void (*)())(0x80311A8+1))
 
//Others
#define BG0Buffer 0x02022CA8
#define BG1Buffer 0x020234A8
#define BG2Buffer 0x02023CA8
#define BG3Buffer 0x020244A8

#define BG0Offset 0x6006000
#define BG1Offset 0x6006800
#define BG2Offset 0x6007000
#define BG3Offset 0x6007800


#define BGLoc(BGOffset, x, y) (BGOffset + 0x2 * x + 0x40 * y)
