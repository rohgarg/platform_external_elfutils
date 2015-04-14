LOCAL_PATH:= $(call my-dir)

##############################################
# Build nm
#

include $(CLEAR_VARS)

LOCAL_CFLAGS := -Wall -DHAVE_CONFIG_H

LOCAL_C_INCLUDES := \
        $(LOCAL_PATH)/.. \
        $(LOCAL_PATH)/../lib \
        $(LOCAL_PATH)/../libdw \
        $(LOCAL_PATH)/../libasm \
        $(LOCAL_PATH)/../libebl \
        $(LOCAL_PATH)/../libelf \
        $(LOCAL_PATH)/../libobstack

LOCAL_C_INCLUDES += $(LOCAL_PATH)/../bionic-fixup

LOCAL_CFLAGS += -include $(LOCAL_PATH)/../bionic-fixup/AndroidFixup.h

LOCAL_CFLAGS += -DHAVE_CONFIG_H -std=gnu99 -Werror

# to suppress the "pointer of type ‘void *’ used in arithmetic" warning
LOCAL_CFLAGS += -Wno-pointer-arith
LOCAL_CFLAGS += -Wno-sizeof-pointer-memaccess

LOCAL_SRC_FILES := nm.c

LOCAL_MODULE := nm

LOCAL_STATIC_LIBRARIES := libdwfl libdw libebl libargp libobstack libeu libasm libelf

include $(BUILD_EXECUTABLE)

##############################################
# Build objdump
#

include $(CLEAR_VARS)

LOCAL_CFLAGS := -Wall -DHAVE_CONFIG_H

LOCAL_C_INCLUDES := \
        $(LOCAL_PATH)/.. \
        $(LOCAL_PATH)/../lib \
        $(LOCAL_PATH)/../libasm \
        $(LOCAL_PATH)/../libdw \
        $(LOCAL_PATH)/../libebl \
        $(LOCAL_PATH)/../libebl_pic \
        $(LOCAL_PATH)/../libelf

LOCAL_C_INCLUDES += $(LOCAL_PATH)/../bionic-fixup

LOCAL_CFLAGS += -include $(LOCAL_PATH)/../bionic-fixup/AndroidFixup.h

LOCAL_CFLAGS += -DHAVE_CONFIG_H -std=gnu99 -Werror

# to suppress the "pointer of type ‘void *’ used in arithmetic" warning
LOCAL_CFLAGS += -Wno-pointer-arith

LOCAL_SRC_FILES := objdump.c

LOCAL_MODULE := objdump

LOCAL_STATIC_LIBRARIES := libdwfl libdw libebl libebp_pic libargp libeu libasm libelf

include $(BUILD_EXECUTABLE)

##############################################
# Build readelf
#

include $(CLEAR_VARS)

LOCAL_CFLAGS := -Wall -DHAVE_CONFIG_H

LOCAL_C_INCLUDES := \
        $(LOCAL_PATH)/.. \
        $(LOCAL_PATH)/../lib \
        $(LOCAL_PATH)/../libdw \
        $(LOCAL_PATH)/../libdwfl \
        $(LOCAL_PATH)/../libasm \
        $(LOCAL_PATH)/../libebl \
        $(LOCAL_PATH)/../libebl_pic \
        $(LOCAL_PATH)/../libelf \
        $(LOCAL_PATH)/../libobstack


LOCAL_C_INCLUDES += $(LOCAL_PATH)/../bionic-fixup

LOCAL_CFLAGS += -include $(LOCAL_PATH)/../bionic-fixup/AndroidFixup.h

LOCAL_CFLAGS += -DHAVE_CONFIG_H -std=gnu99 -Werror

# to suppress the "pointer of type ‘void *’ used in arithmetic" warning
LOCAL_CFLAGS += -Wno-pointer-arith

LOCAL_SRC_FILES := readelf.c

LOCAL_MODULE := readelf

LOCAL_STATIC_LIBRARIES := libdwfl libdw libebl libebp_pic libargp libobstack libeu libasm libelf

include $(BUILD_EXECUTABLE)
