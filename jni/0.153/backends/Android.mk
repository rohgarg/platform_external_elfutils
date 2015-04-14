#######################################
############# libebl_pic.a ############
#######################################
LOCAL_PATH := $(call my-dir)

LIBEBL_PIC_SRC_FILES := \
                   arm_init.c arm_symbol.c arm_regs.c arm_corenote.c \
	           arm_auxv.c arm_attrs.c arm_retval.c

include $(CLEAR_VARS)

LOCAL_SRC_FILES := $(LIBEBL_PIC_SRC_FILES)

LOCAL_C_INCLUDES := \
	$(LOCAL_PATH) \
	$(LOCAL_PATH)/.. \
	$(LOCAL_PATH)/../lib \
	$(LOCAL_PATH)/../libasm \
	$(LOCAL_PATH)/../libdw \
	$(LOCAL_PATH)/../libebl \
	$(LOCAL_PATH)/../libelf

LOCAL_C_INCLUDES += $(LOCAL_PATH)/../bionic-fixup

LOCAL_CFLAGS += -include $(LOCAL_PATH)/../bionic-fixup/AndroidFixup.h

LOCAL_CFLAGS += -DHAVE_CONFIG_H -std=gnu99 -Werror

# to suppress the "pointer of type ‘void *’ used in arithmetic" warning
LOCAL_CFLAGS += -Wno-pointer-arith

LOCAL_MODULE:= libebl_pic

include $(BUILD_STATIC_LIBRARY)
