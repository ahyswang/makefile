# 变量定义
# 版本信息
VERSION=$(shell git show -s --pretty=format:%h)
# 标志位
TAG=xiaoyan
# 编译时间
TIME=$(shell date +"%Y%M%d%H%M%S")
# 配置头文件
CONFIG = config_1.h
# 安装路径
PREFIX = ./build/


# 目标交叉编译器配置
TOOLCHAIN=/home/yswang/toolchain/ndk/android-ndk-r12b_aarch64-linux-android-4.9/bin/
# 目标交叉编译器前缀(arm-linux)
TARGET=aarch64-linux-android
# 编译后运行在哪里(arm)
HOST=aarch64
# 编译命令
#CC=$(TOOLCHAIN)/$(TARGET)-gcc
#CXX=$(TOOLCHAIN)/$(TARGET)-g++
#LD=$(TOOLCHAIN)/$(TARGET)-ld
#AR=$(TOOLCHAIN)/$(TARGET)-ar
#AS=$(TOOLCHAIN)/$(TARGET)-as
#STRIP=$(TOOLCHAIN)/$(TARGET)-strip
CC=gcc
CXX=g++
LD=ld
AR=ar
AS=as
STRIP=strip
# 编译标志
CFLAGS = -g -Wall -O0
CCFLAGS = -g -Wall -O0
CFLAGS += -DMAKE_VERSION="\"$(VERSION)\"" -DMAKE_TIME="\"$(TIME)\""  -DMAKE_CONFIG="\"$(CONFIG)\""
CCFLAGS += -DMAKE_VERSION="\"$(VERSION)\"" -DMAKE_TIME="\"$(TIME)\"" -DMAKE_CONFIG="\"$(CONFIG)\""


# 打印变量
$(info  "===============================================================")
$(info  "VERSION:"$(VERSION))
$(info  "TAG:"$(TAG))
$(info  "TIME:"$(TIME))
$(info  "CONFIG:"$(CONFIG))
$(info	"PREFIX:"$(PREFIX))
$(info  "CONFIG:"$(TARGET))
$(info	"PREFIX:"$(HOST))
$(info  "===============================================================")