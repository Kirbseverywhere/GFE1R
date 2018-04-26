	
typedef struct {
    u16 oam0;
	u16 oam1;
	u16 oam2;
} OAM;

typedef struct {
    u16 size;
    OAM entries[];
} OAMData;


