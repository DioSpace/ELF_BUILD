LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)
LOCAL_CFLAGS+=-pie -fPIE
LOCAL_LDFLAGS+=-pie -fPIE
LOCAL_ARM_MODE := arm   		#编译所在硬件的指令集
LOCAL_MODULE    := target		#编译成的本地模块文件名
LOCAL_SRC_FILES := main.c    	#要编译的C/C++文件
# include $(BUILD_EXECUTABLE) 	#编译成二进制可执行文件
include $(BUILD_SHARED_LIBRARY) #编译成SO文件
