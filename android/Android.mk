
LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := cocos_helper_static
LOCAL_MODULE_FILENAME := libcocos_helper

LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/Classes

LOCAL_SRC_FILES := Classes/JNIHelpers.cpp \
                   Classes/JNIResults.cpp

include $(BUILD_STATIC_LIBRARY)