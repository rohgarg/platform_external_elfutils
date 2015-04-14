JNI_ROOT := $(shell pwd)
NDK_ROOT ?= ../android-ndk-r10d
DEBUG ?= 1

default: build

# Call 'ndk-build' from the NDK_ROOT
build:
	$(NDK_ROOT)/ndk-build V=1 NDK_DEBUG=$(DEBUG)

quiet:
	$(NDK_ROOT)/ndk-build NDK_DEBUG=$(DEBUG)

clean:
	rm -rf obj/ libs/
