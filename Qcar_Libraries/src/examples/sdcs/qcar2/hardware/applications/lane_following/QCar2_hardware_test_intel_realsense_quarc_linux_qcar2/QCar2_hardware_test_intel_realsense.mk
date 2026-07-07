###########################################################################
## Makefile generated for component 'QCar2_hardware_test_intel_realsense'. 
## 
## Makefile     : QCar2_hardware_test_intel_realsense.mk
## Generated on : Fri Apr 03 10:06:10 2026
## Final product: $(RELATIVE_PATH_TO_ANCHOR)/QCar2_hardware_test_intel_realsense.rt-linux_qcar2
## Product type : executable
## 
###########################################################################

###########################################################################
## MACROS
###########################################################################

# Macro Descriptions:
# PRODUCT_NAME            Name of the system to build
# MAKEFILE                Name of this makefile

PRODUCT_NAME              = QCar2_hardware_test_intel_realsense
MAKEFILE                  = QCar2_hardware_test_intel_realsense.mk
MATLAB_ROOT               = D:/MATLAB~2/MATLAB~2
MATLAB_BIN                = D:/MATLAB~2/MATLAB~2/bin
MATLAB_ARCH_BIN           = $(MATLAB_BIN)/win64
START_DIR                 = E:/VSC_IDE/Qcar_PFE/Qcar_Libraries/src/examples/sdcs/qcar2/hardware/applications/lane_following
SOLVER                    = 
SOLVER_OBJ                = 
CLASSIC_INTERFACE         = 1
TGT_FCN_LIB               = ISO_C
MODEL_HAS_DYNAMICALLY_LOADED_SFCNS = 0
RELATIVE_PATH_TO_ANCHOR   = ..
C_STANDARD_OPTS           = 
CPP_STANDARD_OPTS         = 

###########################################################################
## TOOLCHAIN SPECIFICATIONS
###########################################################################

# Toolchain Name:          QUARC linux_qcar2 | gmake (64-bit Windows)
# Supported Version(s):    7.4
# ToolchainInfo Version:   2021b
# Specification Revision:  1.0
# 
#-------------------------------------------
# Macros assumed to be defined elsewhere
#-------------------------------------------

# MINGW_DIR
# ldebug

#-----------
# MACROS
#-----------

TOOL_ROOT           = $(MINGW_DIR)/nvidia/9.4.0
TOOL_BIN            = $(TOOL_ROOT)/bin
SYS_ROOT            = $(TOOL_ROOT)/aarch64-linux-gnu/sys-root
GCC_WARN_OPTS       = -Wc,-Wall -Wc,-W -Wc,-Wwrite-strings -Wc,-Winline -Wc,-Wstrict-prototypes -Wc,-Wnested-externs -Wc,-Wpointer-arith -Wc,-Wcast-align
GCC_WARN_OPTS_MAX   = $(GCC_WARN_OPTS) -Wc,-Wcast-qual -Wc,-Wshadow
REQ_OPTS            = -c -march=armv8.2-a+simd+fp16+crypto -mfix-cortex-a53-843419 -Wall -fmessage-length=0 -MMD -MP -fPIC -feliminate-unused-debug-types
QUARC_REQ_OPTS      = -DVXWORKS -DQUARC -D_GNU_SOURCE -DTARGET_TYPE=linux_qcar2 -D_NVIDIA -D_ORIN_AGX
CFLAGS_ADDITIONAL   = $(ANSI_OPTS)
CPPFLAGS_ADDITIONAL = $(CPP_ANSI_OPTS)
QUARC_LDFLAGS       = -Wl,--hash-style=gnu -Wl,--as-needed -L$(QUARC)/lib/linux_qcar2 -L$(SYS_ROOT)/usr/lib/aarch64-linux-gnu/tegra -L$(SYS_ROOT)/usr/local/cuda/lib64 -Wl,-rpath-link=$(SYS_ROOT)/usr/lib/aarch64-linux-gnu/tegra -Wl,-rpath-link=$(SYS_ROOT)/usr/lib/aarch64-linux-gnu -Wl,-rpath-link=$(SYS_ROOT)/lib/aarch64-linux-gnu
QUARC_LIBS          = -lextmode_quarc_r2013b -lquanser_communications -lquanser_runtime -lquanser_common
QUARC_SYS_LIBS      = -lusb-1.0 -ludev -lfreenect -lasound -lsndfile -lavcodec -lavformat -lavutil -lv4l2 -lnvbufsurface -lnvmedia_eglstream -lnvargus -lnvjpeg -lcudart_static -lcuda -lEGL -lrt -lpthread -ldl -lm

TOOLCHAIN_SRCS = 
TOOLCHAIN_INCS = 
TOOLCHAIN_LIBS = $(LIBS_ADDITIONAL) $(QUARC_LIBS) $(SYS_LIBS_ADDITIONAL) $(QUARC_SYS_LIBS)

#------------------------
# BUILD TOOL COMMANDS
#------------------------

# C Compiler: MinGW QUARC C Cross-Compiler
CC_PATH = $(TOOL_BIN)
CC = "$(CC_PATH)/aarch64-linux-gnu-gcc-9"

# Linker: MinGW QUARC C/C++ Linker
LD_PATH = $(TOOL_BIN)
LD = "$(LD_PATH)/aarch64-linux-gnu-g++-9"

# C++ Compiler: MinGW QUARC C++ Cross-Compiler
CPP_PATH = $(TOOL_BIN)
CPP = "$(CPP_PATH)/aarch64-linux-gnu-g++-9"

# C++ Linker: MinGW QUARC C/C++ Linker
CPP_LD_PATH = $(TOOL_BIN)
CPP_LD = "$(CPP_LD_PATH)/aarch64-linux-gnu-g++-9"

# Archiver: MinGW QUARC C/C++ Archiver
AR_PATH = $(TOOL_BIN)
AR = "$(AR_PATH)/aarch64-linux-gnu-ar-9"

# MEX Tool: MEX Tool
MEX_PATH = $(MATLAB_ARCH_BIN)
MEX = "$(MEX_PATH)/mex"

# Download: Download
DOWNLOAD =

# Execute: Execute
EXECUTE = $(PRODUCT)

# Builder: GMAKE Utility
MAKE_PATH = %MATLAB%\bin\win64
MAKE = "$(MAKE_PATH)/gmake"


#-------------------------
# Directives/Utilities
#-------------------------

CDEBUG              = -g
C_OUTPUT_FLAG       = -o
LDDEBUG             = -g
OUTPUT_FLAG         = -o
CPPDEBUG            = -g
CPP_OUTPUT_FLAG     = -o
CPPLDDEBUG          = -g
OUTPUT_FLAG         = -o
ARDEBUG             =
STATICLIB_OUTPUT_FLAG =
MEX_DEBUG           = -g
RM                  = @del /F
ECHO                = @echo
MV                  = @move
RUN                 =

#--------------------------------------
# "Faster Runs" Build Configuration
#--------------------------------------

ARFLAGS              = ruvs
CFLAGS               = $(REQ_OPTS) $(QUARC_REQ_OPTS) $(CFLAGS_ADDITIONAL) \
                       -O  -DNDEBUG
CPPFLAGS             = $(REQ_OPTS) $(QUARC_REQ_OPTS) $(CPPFLAGS_ADDITIONAL) \
                       -O  -DNDEBUG
CPP_LDFLAGS          = $(ldebug) $(QUARC_LDFLAGS)
CPP_SHAREDLIB_LDFLAGS  =
DOWNLOAD_FLAGS       =
EXECUTE_FLAGS        =
LDFLAGS              = $(ldebug) $(QUARC_LDFLAGS)
MEX_CPPFLAGS         =
MEX_CPPLDFLAGS       =
MEX_CFLAGS           =
MEX_LDFLAGS          =
MAKE_FLAGS           = -f $(MAKEFILE)
SHAREDLIB_LDFLAGS    = $(ldebug) $(QUARC_LDFLAGS) \
                       -shared



###########################################################################
## OUTPUT INFO
###########################################################################

PRODUCT = $(RELATIVE_PATH_TO_ANCHOR)/QCar2_hardware_test_intel_realsense.rt-linux_qcar2
PRODUCT_TYPE = "executable"
BUILD_TYPE = "Top-Level Standalone Executable"

###########################################################################
## INCLUDE PATHS
###########################################################################

INCLUDES_BUILDINFO = -I$(START_DIR) -I$(START_DIR)/QCar2_hardware_test_intel_realsense_quarc_linux_qcar2 -I$(MATLAB_ROOT)/extern/include -I$(MATLAB_ROOT)/simulink/include -I$(MATLAB_ROOT)/rtw/c/src -I$(MATLAB_ROOT)/rtw/c/src/ext_mode/common -I$(MATLAB_ROOT)/toolbox/coder/rtiostream/src -I$(MATLAB_ROOT)/toolbox/coder/rtiostream/src/utils -IE:/QUARC_2025/Quarc_Stg/include

INCLUDES = $(INCLUDES_BUILDINFO)

###########################################################################
## DEFINES
###########################################################################

DEFINES_BUILD_ARGS = -DCLASSIC_INTERFACE=1 -DALLOCATIONFCN=0 -DEXT_MODE=1 -DMAT_FILE=0 -DONESTEPFCN=0 -DTERMFCN=1 -DMULTI_INSTANCE_CODE=0 -DINTEGER_CODE=0 -DMT=0
DEFINES_CUSTOM = 
DEFINES_OPTS = -DON_TARGET_WAIT_FOR_START=1 -DTID01EQ=0
DEFINES_QUARC = -DASSERTIONS=1 -DDOASSERTS
DEFINES_STANDARD = -DMODEL=QCar2_hardware_test_intel_realsense -DNUMST=1 -DNCSTATES=0 -DHAVESTDIO -DRT -DUSE_RTMODEL

DEFINES = $(DEFINES_BUILD_ARGS) $(DEFINES_CUSTOM) $(DEFINES_OPTS) $(DEFINES_QUARC) $(DEFINES_STANDARD)

###########################################################################
## SOURCE FILES
###########################################################################

SRCS = $(START_DIR)/QCar2_hardware_test_intel_realsense_quarc_linux_qcar2/QCar2_hardware_test_intel_realsense.c $(START_DIR)/QCar2_hardware_test_intel_realsense_quarc_linux_qcar2/QCar2_hardware_test_intel_realsense_data.c $(START_DIR)/QCar2_hardware_test_intel_realsense_quarc_linux_qcar2/QCar2_hardware_test_intel_realsense_main.c $(START_DIR)/QCar2_hardware_test_intel_realsense_quarc_linux_qcar2/rt_nonfinite.c $(MATLAB_ROOT)/rtw/c/src/rt_sim.c E:/QUARC_2025/Quarc_Stg/quarc/src/ext_svr.c E:/QUARC_2025/Quarc_Stg/quarc/src/updown.c E:/QUARC_2025/Quarc_Stg/quarc/src/ext_work.c

ALL_SRCS = $(SRCS)

###########################################################################
## OBJECTS
###########################################################################

OBJS = QCar2_hardware_test_intel_realsense.o QCar2_hardware_test_intel_realsense_data.o QCar2_hardware_test_intel_realsense_main.o rt_nonfinite.o rt_sim.o ext_svr.o updown.o ext_work.o

ALL_OBJS = $(OBJS)

###########################################################################
## PREBUILT OBJECT FILES
###########################################################################

PREBUILT_OBJS = 

###########################################################################
## LIBRARIES
###########################################################################

LIBS = E:/QUARC_2025/Quarc_Stg/lib/linux_qcar2/libquanser_media.a E:/QUARC_2025/Quarc_Stg/lib/linux_qcar2/libquanser_image_processing.a E:/QUARC_2025/Quarc_Stg/lib/linux_qcar2/libquanser_communications.a E:/QUARC_2025/Quarc_Stg/lib/linux_qcar2/libquanser_runtime.a E:/QUARC_2025/Quarc_Stg/lib/linux_qcar2/libquanser_common.a

###########################################################################
## SYSTEM LIBRARIES
###########################################################################

SYSTEM_LIBS = 

###########################################################################
## ADDITIONAL TOOLCHAIN FLAGS
###########################################################################

#---------------
# C Compiler
#---------------

CFLAGS_BASIC = $(DEFINES) $(INCLUDES)

CFLAGS += $(CFLAGS_BASIC)

#-----------------
# C++ Compiler
#-----------------

CPPFLAGS_BASIC = $(DEFINES) $(INCLUDES)

CPPFLAGS += $(CPPFLAGS_BASIC)

###########################################################################
## INLINED COMMANDS
###########################################################################


include $(QUARC)/include/gcc_c_dialect.mk


###########################################################################
## PHONY TARGETS
###########################################################################

.PHONY : all build buildobj clean info prebuild download execute


all : build
	@echo "### Successfully generated all binary outputs."


build : prebuild $(PRODUCT)


buildobj : prebuild $(OBJS) $(PREBUILT_OBJS) $(LIBS)
	@echo "### Successfully generated all binary outputs."


prebuild : 


download : $(PRODUCT)


execute : download
	@echo "### Invoking postbuild tool "Execute" ..."
	$(EXECUTE) $(EXECUTE_FLAGS)
	@echo "### Done invoking postbuild tool."


###########################################################################
## FINAL TARGET
###########################################################################

#-------------------------------------------
# Create a standalone executable            
#-------------------------------------------

$(PRODUCT) : $(OBJS) $(PREBUILT_OBJS) $(LIBS)
	@echo "### Creating standalone executable "$(PRODUCT)" ..."
	$(LD) $(LDFLAGS) -o$(PRODUCT) $(OBJS) $(LIBS) $(SYSTEM_LIBS) $(TOOLCHAIN_LIBS)
	@echo "### Created: $(PRODUCT)"


###########################################################################
## INTERMEDIATE TARGETS
###########################################################################

#---------------------
# SOURCE-TO-OBJECT
#---------------------

%.o : %.c
	$(CC) $(CFLAGS) -o"$@" "$<"


%.o : %.cpp
	$(CPP) $(CPPFLAGS) -o"$@" "$<"


%.o : $(RELATIVE_PATH_TO_ANCHOR)/%.c
	$(CC) $(CFLAGS) -o"$@" "$<"


%.o : $(RELATIVE_PATH_TO_ANCHOR)/%.cpp
	$(CPP) $(CPPFLAGS) -o"$@" "$<"


%.o : $(START_DIR)/%.c
	$(CC) $(CFLAGS) -o"$@" "$<"


%.o : $(START_DIR)/%.cpp
	$(CPP) $(CPPFLAGS) -o"$@" "$<"


%.o : $(START_DIR)/QCar2_hardware_test_intel_realsense_quarc_linux_qcar2/%.c
	$(CC) $(CFLAGS) -o"$@" "$<"


%.o : $(START_DIR)/QCar2_hardware_test_intel_realsense_quarc_linux_qcar2/%.cpp
	$(CPP) $(CPPFLAGS) -o"$@" "$<"


%.o : $(MATLAB_ROOT)/rtw/c/src/%.c
	$(CC) $(CFLAGS) -o"$@" "$<"


%.o : $(MATLAB_ROOT)/rtw/c/src/%.cpp
	$(CPP) $(CPPFLAGS) -o"$@" "$<"


%.o : $(MATLAB_ROOT)/simulink/src/%.c
	$(CC) $(CFLAGS) -o"$@" "$<"


%.o : $(MATLAB_ROOT)/simulink/src/%.cpp
	$(CPP) $(CPPFLAGS) -o"$@" "$<"


%.o : $(MATLAB_ROOT)/toolbox/simulink/blocks/src/%.c
	$(CC) $(CFLAGS) -o"$@" "$<"


%.o : $(MATLAB_ROOT)/toolbox/simulink/blocks/src/%.cpp
	$(CPP) $(CPPFLAGS) -o"$@" "$<"


%.o : $(MATLAB_ROOT)/rtw/c/src/ext_mode/common/%.c
	$(CC) $(CFLAGS) -o"$@" "$<"


%.o : $(MATLAB_ROOT)/rtw/c/src/ext_mode/common/%.cpp
	$(CPP) $(CPPFLAGS) -o"$@" "$<"


%.o : $(MATLAB_ROOT)/toolbox/coder/rtiostream/src/utils/%.c
	$(CC) $(CFLAGS) -o"$@" "$<"


%.o : $(MATLAB_ROOT)/toolbox/coder/rtiostream/src/utils/%.cpp
	$(CPP) $(CPPFLAGS) -o"$@" "$<"


QCar2_hardware_test_intel_realsense.o : $(START_DIR)/QCar2_hardware_test_intel_realsense_quarc_linux_qcar2/QCar2_hardware_test_intel_realsense.c
	$(CC) $(CFLAGS) -o"$@" "$<"


QCar2_hardware_test_intel_realsense_data.o : $(START_DIR)/QCar2_hardware_test_intel_realsense_quarc_linux_qcar2/QCar2_hardware_test_intel_realsense_data.c
	$(CC) $(CFLAGS) -o"$@" "$<"


QCar2_hardware_test_intel_realsense_main.o : $(START_DIR)/QCar2_hardware_test_intel_realsense_quarc_linux_qcar2/QCar2_hardware_test_intel_realsense_main.c
	$(CC) $(CFLAGS) -o"$@" "$<"


rt_nonfinite.o : $(START_DIR)/QCar2_hardware_test_intel_realsense_quarc_linux_qcar2/rt_nonfinite.c
	$(CC) $(CFLAGS) -o"$@" "$<"


rt_sim.o : $(MATLAB_ROOT)/rtw/c/src/rt_sim.c
	$(CC) $(CFLAGS) -o"$@" "$<"


ext_svr.o : E:/QUARC_2025/Quarc_Stg/quarc/src/ext_svr.c
	$(CC) $(CFLAGS) -o"$@" "$<"


updown.o : E:/QUARC_2025/Quarc_Stg/quarc/src/updown.c
	$(CC) $(CFLAGS) -o"$@" "$<"


ext_work.o : E:/QUARC_2025/Quarc_Stg/quarc/src/ext_work.c
	$(CC) $(CFLAGS) -o"$@" "$<"


###########################################################################
## DEPENDENCIES
###########################################################################

$(ALL_OBJS) : rtw_proj.tmw $(MAKEFILE)


###########################################################################
## MISCELLANEOUS TARGETS
###########################################################################

info : 
	@echo "### PRODUCT = $(PRODUCT)"
	@echo "### PRODUCT_TYPE = $(PRODUCT_TYPE)"
	@echo "### BUILD_TYPE = $(BUILD_TYPE)"
	@echo "### INCLUDES = $(INCLUDES)"
	@echo "### DEFINES = $(DEFINES)"
	@echo "### ALL_SRCS = $(ALL_SRCS)"
	@echo "### ALL_OBJS = $(ALL_OBJS)"
	@echo "### LIBS = $(LIBS)"
	@echo "### MODELREF_LIBS = $(MODELREF_LIBS)"
	@echo "### SYSTEM_LIBS = $(SYSTEM_LIBS)"
	@echo "### TOOLCHAIN_LIBS = $(TOOLCHAIN_LIBS)"
	@echo "### CFLAGS = $(CFLAGS)"
	@echo "### LDFLAGS = $(LDFLAGS)"
	@echo "### SHAREDLIB_LDFLAGS = $(SHAREDLIB_LDFLAGS)"
	@echo "### CPPFLAGS = $(CPPFLAGS)"
	@echo "### CPP_LDFLAGS = $(CPP_LDFLAGS)"
	@echo "### CPP_SHAREDLIB_LDFLAGS = $(CPP_SHAREDLIB_LDFLAGS)"
	@echo "### ARFLAGS = $(ARFLAGS)"
	@echo "### MEX_CFLAGS = $(MEX_CFLAGS)"
	@echo "### MEX_CPPFLAGS = $(MEX_CPPFLAGS)"
	@echo "### MEX_LDFLAGS = $(MEX_LDFLAGS)"
	@echo "### MEX_CPPLDFLAGS = $(MEX_CPPLDFLAGS)"
	@echo "### DOWNLOAD_FLAGS = $(DOWNLOAD_FLAGS)"
	@echo "### EXECUTE_FLAGS = $(EXECUTE_FLAGS)"
	@echo "### MAKE_FLAGS = $(MAKE_FLAGS)"


clean : 
	$(ECHO) "### Deleting all derived files ..."
	$(RM) $(subst /,\,$(PRODUCT))
	$(RM) $(subst /,\,$(ALL_OBJS))
	$(ECHO) "### Deleted all derived files."


