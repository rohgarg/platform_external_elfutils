##########################################
############ libobstack.a ################
##########################################

LOCAL_PATH := $(call my-dir)

LIBOBSTACK_SRC_FILES := \
        obstack.c obstack_printf.c

include $(CLEAR_VARS)

LOCAL_SRC_FILES := $(LIBOBSTACK_SRC_FILES)

LOCAL_C_INCLUDES := \
	$(LOCAL_PATH)

LOCAL_CFLAGS += -std=gnu99

LOCAL_MODULE:= libobstack

include $(BUILD_STATIC_LIBRARY)
