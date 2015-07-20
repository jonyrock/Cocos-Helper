
LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := cocos_helper_static
LOCAL_MODULE_FILENAME := libcocos_helper

LOCAL_EXPORT_C_INCLUDES := ../include

LOCAL_C_INCLUDES := $(LOCAL_PATH)/../include/cocos-helper
LOCAL_C_INCLUDES += $(LOCAL_PATH)/Classes

$(warning $(LOCAL_C_INCLUDES))

# JNI METHODS
LOCAL_SRC_FILES := Classes/JNIHelpers.cpp \
                   Classes/JNIResults.cpp

# COCOS HELPER SOURCES
LOCAL_SRC_FILES += ../cpp/SonarFrameworks.cpp

LOCAL_STATIC_LIBRARIES := cocos2dx_static

include $(BUILD_STATIC_LIBRARY)

$(call import-add-path, $(COCOS_ROOT)/cocos)