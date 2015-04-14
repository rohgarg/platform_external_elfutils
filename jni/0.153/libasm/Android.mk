#######################################
############# libasm.a ################
#######################################
LOCAL_PATH := $(call my-dir)

LIBASM_SRC_FILES := \
                   asm_begin.c asm_abort.c asm_end.c asm_error.c \
		   asm_getelf.c asm_newscn.c asm_newscn_ingrp.c \
		   asm_newsubscn.c asm_newsym.c asm_newcomsym.c \
		   asm_newabssym.c \
		   asm_newscngrp.c asm_scngrp_newsignature.c \
		   asm_fill.c asm_align.c asm_addstrz.c \
		   asm_addint8.c asm_adduint8.c \
		   asm_addint16.c asm_adduint16.c \
		   asm_addint32.c asm_adduint32.c \
		   asm_addint64.c asm_adduint64.c \
		   asm_adduleb128.c asm_addsleb128.c \
		   disasm_begin.c disasm_cb.c disasm_end.c disasm_str.c \
		   symbolhash.c

include $(CLEAR_VARS)

LOCAL_SRC_FILES := $(LIBASM_SRC_FILES)

LOCAL_C_INCLUDES := \
	$(LOCAL_PATH)/.. \
	$(LOCAL_PATH)/../lib \
	$(LOCAL_PATH)/../libdw \
	$(LOCAL_PATH)/../libebl \
	$(LOCAL_PATH)/../libelf

LOCAL_C_INCLUDES += $(LOCAL_PATH)/../bionic-fixup

LOCAL_CFLAGS += -include $(LOCAL_PATH)/../bionic-fixup/AndroidFixup.h

LOCAL_CFLAGS += -DHAVE_CONFIG_H -std=gnu99 -Werror

# to suppress the "pointer of type ‘void *’ used in arithmetic" warning
LOCAL_CFLAGS += -Wno-pointer-arith

LOCAL_MODULE:= libasm

include $(BUILD_STATIC_LIBRARY)
