#
# Makefile for i2chid_read_fwid (I2C-HID Interface)
# Date: 2019/05/06
#
program := i2chid_read_fwid
objects := BaseLog.o \
		   I2CHIDLinuxGet.o \
		   ElanTsI2chidUtility.o \
		   ElanTsFuncApi.o \
		   ElanTsHidDevUtility.o \
		   ElanTsEdidUtility.o \
		   ElanTsLcmDevUtility.o \
		   ElanGen8TsI2chidUtility.o \
		   ElanGen8TsFuncApi.o \
		   main.o
libraries := stdc++ rt pthread
executable_path := ./bin
source_path := ./src
include_path := ./include 

CXX ?= g++ # Compiler: GCC C++ Compiler
#CXX ?= arm-none-linux-gnueabihf-g++ # Compiler: arm Cross Compiler 
#CXX ?= aarch64-none-linux-gnu-g++ # Compiler: aarch64 Cross Compiler 
CXXFLAGS = -Wall -Wno-format-overflow -ansi -O3 -g
CXXFLAGS += -D__ENABLE_DEBUG__
CXXFLAGS += -D__ENABLE_OUTBUF_DEBUG__
CXXFLAGS += -D__ENABLE_INBUF_DEBUG__
CXXFLAGS += -D__ENABLE_LOG_FILE_DEBUG__
#CXXFLAGS += -D__ENABLE_SYSLOG_DEBUG__
CXXFLAGS += -static
INC_FLAGS += $(addprefix -I, $(include_path))
LIB_FLAGS += $(addprefix -l, $(libraries))
VPATH = $(include_path)
vpath %.h $(include_path)
vpath %.c $(source_path)
vpath %.cpp $(source_path)
.SUFFIXS: .c .cpp .h

.PHONY: all
all: $(objects)
	$(CXX) $^ $(CXXFLAGS) $(INC_FLAGS) $(LIB_FLAGS) -o $(program)
	@chmod 777 $(program)
	@mv $(program) $(executable_path)
	@rm -rf $^
	
%.o: %.cpp
	$(CXX) -c $< $(CXXFLAGS) $(INC_FLAGS) $(LIB_FLAGS)
	
.PHONY: clean
clean: 
	@rm -rf $(executable_path)/$(program) $(objects)

