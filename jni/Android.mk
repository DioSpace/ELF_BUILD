#每个Android.mk文件都必须以LOCAL_PATH开始,my-dir返回包含Android.mk的目录路径
LOCAL_PATH:= $(call my-dir)

#负责清理一些LOCAL_XXX,但不清理LOCAL_PATH,这个清理动作是必须的
include $(CLEAR_VARS)

LOCAL_CFLAGS+=-pie -fPIE
LOCAL_LDFLAGS+=-pie -fPIE
#编译所在硬件的指令集
LOCAL_ARM_MODE := arm

#编译成的本地模块文件名
LOCAL_MODULE:= dynamic_test_lib
#必须定义,以表示要打包的C/C++文件,多个文件空格隔开
LOCAL_SRC_FILES:= dynamic_test_lib.cpp

#表示动态编译库,也就是生成so
include $(BUILD_SHARED_LIBRARY)
#编译成二进制可执行文件
# include $(BUILD_EXECUTABLE)