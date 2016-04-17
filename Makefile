CROSS_PREFIX = arm-none-eabi
CC = $(CROSS_PREFIX)-gcc
OBJDUMP = $(CROSS_PREFIX)-objdump

CFLAGS_CORTEX_M4 = -mthumb -mtune=cortex-m4 -mabi=aapcs-linux -mcpu=cortex-m4 -mfpu=fpv4-sp-d16 -mfloat-abi=hard -fsingle-precision-constant -Wdouble-promotion
CFLAGS = -Wall -Werror -ansi -std=gnu99 -nostdlib $(CFLAGS_CORTEX_M4)

# Debugging/Optimization
ifeq ($(DEBUG), 1)
CFLAGS += -O0 -ggdb
else
CFLAGS += -Os -DNDEBUG
endif

LDFLAGS = -nostdlib -T stm32f405.ld 
LIBS =

SRCS = startup.s
OBJS = $(SRCS:.s=.o)
OUT = startup.elf

S: $(OUT)
	$(OBJDUMP) -S $< > $@

$(OUT): $(OBJS)
	$(CC) $(LDFLAGS) -o $@ $<

$(OBJS): $(SRCS)
	$(CC) $(CFLAGS) -c $<

clean:
	@ for i in $(OBJS); do \
		if [ -f $$i ]; then \
			rm $$i; \
		fi \
	done \
	&& echo delete objs
	@ if [ -f $(OUT) ]; then rm $(OUT); fi && echo delete $(OUT)
	@ if [ -f S ]; then rm S; fi && echo delete S
