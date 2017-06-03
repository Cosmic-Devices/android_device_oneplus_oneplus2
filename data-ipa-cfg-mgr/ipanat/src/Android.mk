LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_C_INCLUDES := $(LOCAL_PATH)/../inc
LOCAL_C_INCLUDES += $(LOCAL_PATH)
LOCAL_C_INCLUDES += $(TARGET_OUT_INTERMEDIATES)/KERNEL_OBJ/usr/include
LOCAL_ADDITIONAL_DEPENDENCIES := $(TARGET_OUT_INTERMEDIATES)/KERNEL_OBJ/usr

LOCAL_SRC_FILES := ipa_nat_drv.c \
                   ipa_nat_drvi.c

LOCAL_CFLAGS := -DNDEBUG
LOCAL_MODULE := libipanat
LOCAL_MODULE_TAGS := optional
LOCAL_PRELINK_MODULE := false

include $(BUILD_SHARED_LIBRARY)
