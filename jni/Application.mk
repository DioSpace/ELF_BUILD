#使用的NDK库版本号,一般和SDK对应,各个版本在platforms目录下(要小于手机所支持的最高版本)
APP_PLATFORM = android-23

#不写APP_ABI就生成全部支持的平台,目前支持：armeabi、arm64-v8a、armeabi-v7a
# APP_ABI := armeabi arm64-v8a armeabi-v7a
 
#如何链接C++标准库,c++_static表示静态链接、c++_shared表示动态链接
APP_STL := c++_static

#编译为release版本
#APP_OPTIM := release