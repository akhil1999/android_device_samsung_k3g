LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE            := fstab.universal5422
LOCAL_MODULE_TAGS       := optional eng
LOCAL_MODULE_CLASS      := ETC
LOCAL_SRC_FILES         := fstab.universal5422
LOCAL_MODULE_PATH       := $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE            := init.universal5422.rc
LOCAL_MODULE_TAGS       := optional eng
LOCAL_MODULE_CLASS      := ETC
LOCAL_SRC_FILES         := init.universal5422.rc
LOCAL_MODULE_PATH       := $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)
