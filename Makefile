# TARGET #

TARGET := NATIVE
LIBRARY := 0

ifeq ($(TARGET),$(filter $(TARGET),3DS WIIU))
    ifeq ($(strip $(DEVKITPRO)),)
        $(error "Please set DEVKITPRO in your environment. export DEVKITPRO=<path to>devkitPro")
    endif
endif

# COMMON CONFIGURATION #

NAME := bannertool

BUILD_DIR := build
OUTPUT_DIR := output
INCLUDE_DIRS := include
SOURCE_DIRS := source

EXTRA_OUTPUT_FILES :=

LIBRARY_DIRS :=
LIBRARIES :=

VERSION_MAJOR := 1
VERSION_MINOR := 2
VERSION_MICRO := 0

BUILD_FLAGS := -Wno-unused-function
BUILD_FLAGS_CC := -DVERSION_MAJOR=${VERSION_MAJOR} \
                  -DVERSION_MINOR=${VERSION_MINOR} \
                  -DVERSION_MICRO=${VERSION_MICRO}
BUILD_FLAGS_CXX :=
RUN_FLAGS :=

# INTERNAL #

include buildtools/make_base
