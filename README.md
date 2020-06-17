# ELF_BUILD
 C/C++ 用ndk里的gcc编译成二进制可执行文件或SO文件
 
 C/C++代码在linux系统经过GCC编译后的可执行文件内部结构是ELF格式(在Windows下是PE格式)，由于Android也是linux系统所以Android中引用的由C/C++代码所编译成的SO文件也是ELF格式,实际上用Android SDK里的ndk-build编译C/C++代码也是用GCC进行编译的。但是直接在linux系统下把C/C++ 用GCC直接编译的xx.out可执行文件，由于所在硬件的指令集是x86(我是在自己电脑上的linux系统里进行编译)，无法在Android上运行，主要是因为xx.out文件ELF的header与ndk-build编译的ELF header不同。ndk-build 编译C/C++代码的过程中可以指定编译的指令集为ARM,可以在Android.mk文件里进行相关的设置。
