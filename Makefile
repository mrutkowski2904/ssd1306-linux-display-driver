obj-m += ssd1306_mod.o
ssd1306_mod-objs += ssd1306.o display_io.o
ccflags-y := -DDEBUG -g -std=gnu99 -Wno-declaration-after-statement
.PHONY: all clean

all:
	$(MAKE) -C /lib/modules/$(shell uname -r)/build M=$(PWD) modules
clean:
	$(MAKE) -C /lib/modules/$(shell uname -r)/build M=$(PWD) clean