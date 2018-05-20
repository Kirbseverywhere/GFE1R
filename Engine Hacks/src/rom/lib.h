//lib funcs
#define PlaySound ((void (*)(u32 SoundID))(0x080D01FC+1))

//svcs
#define LZ77UncompVram ((void (*)(u32 Graphics, u32 Offset))(0x080D1690+1))
#define MemCopy ((void (*)(u32 Source, u32 Dest, u32 Size))(0x080D1678+1))
#define HuffmanUncomp ((void (*)(u32 Source, u32 Dest))(0x080D168C+1))
#define DrawCursor ((void (*)(u32 x, u32 y))(0x804E79C+1))
#define Div ((int (*)(u32 org, u32 divisor))(0x080d167C+1))
#define EnableAllGfx ((void (*)(u32 proc))(0x80AD5D8+1))

//CpuSet
#define CPU_SET_16BIT 0x1000000
#define CPU_SET_32BIT 0x4000000
#define CpuSet ((void (*)(void *Value, u32 Dest, u32 Size))(0x080d1678+1))

#define CPU_FILL(value, dest, size, bit)                                          \
{                                                                                 \
    u##bit tmp = (u##bit)(value);                                               \
    CpuSet((void *)&tmp,                                                          \
           dest,                                                                  \
           CPU_SET_##bit##BIT | ((size)/(bit/8) & 0x1FFFFF)); 					\
}

#define CpuFill16(value, dest, size) CPU_FILL(value, dest, size, 16)
#define CpuFill32(value, dest, size) CPU_FILL(value, dest, size, 32)

