# ��������
# �汾��Ϣ
VERSION=$(shell git show -s --pretty=format:%h)
# ��־λ
TAG=xiaoyan
# ����ʱ��
TIME=$(shell date +"%Y%M%d%H%M%S")
# ����ͷ�ļ�
CONFIG = config_1.h
# ��װ·��
PREFIX = ./build/


# Ŀ�꽻�����������
TOOLCHAIN=/home/yswang/toolchain/ndk/android-ndk-r12b_aarch64-linux-android-4.9/bin/
# Ŀ�꽻�������ǰ׺(arm-linux)
TARGET=aarch64-linux-android
# ���������������(arm)
HOST=aarch64
# ��������
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
# �����־
CFLAGS = -g -Wall -O0
CCFLAGS = -g -Wall -O0
CFLAGS += -DMAKE_VERSION="\"$(VERSION)\"" -DMAKE_TIME="\"$(TIME)\""  -DMAKE_CONFIG="\"$(CONFIG)\""
CCFLAGS += -DMAKE_VERSION="\"$(VERSION)\"" -DMAKE_TIME="\"$(TIME)\"" -DMAKE_CONFIG="\"$(CONFIG)\""


# ��ӡ����
$(info  "===============================================================")
$(info  "VERSION:"$(VERSION))
$(info  "TAG:"$(TAG))
$(info  "TIME:"$(TIME))
$(info  "CONFIG:"$(CONFIG))
$(info	"PREFIX:"$(PREFIX))
$(info  "CONFIG:"$(TARGET))
$(info	"PREFIX:"$(HOST))
$(info  "===============================================================")