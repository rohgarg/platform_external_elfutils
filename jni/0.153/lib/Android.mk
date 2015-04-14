################################################
############### libeu.a ########################
################################################

LOCAL_PATH := $(call my-dir)

LIBEU_SRC_FILES := \
                  xstrdup.c xstrndup.c xmalloc.c next_prime.c \
		  crc32.c crc32_file.c md5.c sha1.c \
		  color.c

include $(CLEAR_VARS)

LOCAL_SRC_FILES := $(LIBEU_SRC_FILES)

LOCAL_C_INCLUDES := \
	$(LOCAL_PATH) \
	$(LOCAL_PATH)/.. \
	$(LOCAL_PATH)/../bionic-fixup

LOCAL_CFLAGS += -DHAVE_CONFIG_H -std=gnu99
LOCAL_CFLAGS += -include $(LOCAL_PATH)/../bionic-fixup/AndroidFixup.h

LOCAL_MODULE:= libeu

include $(BUILD_STATIC_LIBRARY)
