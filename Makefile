# Makefile for Elan I2C-HID Tools
# Date: 2019/05/17
dir_i2chid_iap_v2 := i2chid_iap_v2
dir_i2chid_read_fwid := i2chid_read_fwid

.PHONY: all
all: 
	@for directory in $(dir_i2chid_iap_v2) $(dir_i2chid_read_fwid); \
	do							\
		$(MAKE) -C $$directory;	\
	done
		
.PHONY: clean
clean:
	@for directory in $(dir_i2chid_iap_v2) $(dir_i2chid_read_fwid); \
	do									\
		$(MAKE) clean -C $$directory;	\
	done

