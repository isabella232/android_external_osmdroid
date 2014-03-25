LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_MODULE := osmdroid
LOCAL_STATIC_JAVA_LIBRARIES := slf4j-api
LOCAL_SRC_FILES := $(call all-java-files-under, src/main/java)
LOCAL_SRC_FILES := $(filter-out src/main/java/org/osmdroid/contributor/GpxToPHPUploader.java,$(LOCAL_SRC_FILES))

include $(BUILD_STATIC_JAVA_LIBRARY)
