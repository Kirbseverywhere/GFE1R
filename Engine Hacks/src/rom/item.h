typedef struct {
	u16 NameTID;
} ItemData;

#define GetItemOffset ((u32 (*)(u32 ID))(0x080177B0+1))