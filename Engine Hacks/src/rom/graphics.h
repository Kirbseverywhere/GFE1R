	
typedef struct OAM {
    u16 oam0;
	u16 oam1;
	u16 oam2;
};

typedef struct OAMData {
    u16 size;
    struct OAM entries[];
};


