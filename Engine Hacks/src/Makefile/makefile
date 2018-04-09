SRCDIR = ../
SYS_LIB_DIR1 = C:/devkitPro/devkitARM/arm-none-eabi/lib/
SYS_LIB_DIR2 = C:/devkitPro/devkitARM/lib/gcc/arm-none-eabi/6.3.0/
INC = ../include/
ROMDAT = ../rom/
GFXDIR = ../Data/

# bin utils
BIN = C:/devkitPro/devkitARM/bin
CC = $(BIN)/arm-none-eabi-gcc
LD = $(BIN)/arm-none-eabi-ld
OBJCOPY = $(BIN)/arm-none-eabi-objcopy
LYN = $(SRCDIR)Makefile/lyn

# build flags
COMPLIANCE_FLAGS = -fomit-frame-pointer -ffast-math -fno-toplevel-reorder -nostdinc -Os # -O2 makes main not first
WFLAGS = -Wall -Wno-unkown-pragmas
ARCH   = -mcpu=arm7tdmi -mabi=aapcs -mthumb -mthumb-interwork
CDEBUG = -g
CFLAGS = $(ARCH) $(COMPLIANCE_FLAGS) $(CDEBUG) -I. -I$(SRCDIR) -I$(INC) -I$(ROMDAT)
LDFLAGS = -g -T linker.ld -Map output.map
LD_LINK = -static -L $(SYS_LIB_DIR1) -L $(SYS_LIB_DIR2) $(LIBS)
PURE_OBJCOPY_FLAGS = -O elf32-littlearm -B arm --rename-section .data=.rom --set-section-flags .rom="r,c,a"

# Add system libraries and custom libraries to include here
LIB_LINK_FLAG = -l
SYS_LIBS = c gcc
LIBS = $(addprefix $(LIB_LINK_FLAG), $(SYS_LIBS))

# project files for compilation
SFILES	:=	$(foreach dir,$(SRCDIR),$(notdir $(wildcard $(SRCDIR)/*.S))) \
			$(foreach dir,$(SRCDIR),$(notdir $(wildcard $(SRCDIR)/*.s)))
CFILES	:=	$(foreach dir,$(SRCDIR),$(notdir $(wildcard $(SRCDIR)/*.c)))
OFILES 	:=  $(patsubst %.c, %.o, $(CFILES))
EVENTFILES := $(patsubst %.o, $(SRCDIR)%.event, $(OFILES))
SOURCES :=  $(addprefix $(SRCDIR), $(CFILES)) $(addprefix $(SRCDIR), $(SFILES)) 
LYNCOMP := $(foreach dir, $(OFILES), $(LYN) $(dir) FE8ULib.o > $(patsubst %.o, $(SRCDIR)%.event, $(dir));)


build:
	$(CC) $(CFLAGS) -c $(SOURCES) 
	$(LYNCOMP)
	
	
#$(LYN) $(OFILES) => ..\Main.event
	

	
	
	
%.o : %.c #Defines how to translate a single c file into an object file.
	echo compiling $<
	echo $(CC) $(CFLAGS) -c $<
	$(CC) $(CFLAGS) -E $< > $<.preout
	$(CC) $(CFLAGS) -S $<
	$(CC) $(CFLAGS) -c $<
	echo done compiling $<

%.d : %.c #Defines how to generate the dependencies for the given files. -M gcc option generates dependencies.
	@set -e; rm -f $@; \
	$(CC) $(COMPLIANCE_FLAGS ) -M $< > $@.$$$$; \
	sed 's,\($*\)\.o[ :]*,\1.o $@ : ,g' < $@.$$$$ > $@; \
	rm -f $@.$$$$

clean : # Delete any and all artifacts from the build. The only thing which is kept is the source rm -f *.o
	rm -f *.o
