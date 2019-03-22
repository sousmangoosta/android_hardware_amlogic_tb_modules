tb_detect-objs = tb_module.o tbff_fwalg_20180704.o_shipped
obj-$(CONFIG_TB_DETECT)	+= tb_detect.o
ARCH ?= arm64
CROSS_COMPILE ?= aarch64-linux-gnu-
KDIR ?=

tb_detect:
	$(MAKE) -C $(KDIR) M=$(PWD) ARCH=$(ARCH) CROSS_COMPILE=$(CROSS_COMPILE) modules

clean:
	$(MAKE) -C $(KDIR) M=$(PWD) ARCH=$(ARCH) CROSS_COMPILE=$(CROSS_COMPILE) clean
	$(RM) Module.markers
	$(RM) modules.order
