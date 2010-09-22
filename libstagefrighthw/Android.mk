ifeq ($(TARGET_DEVICE),crespo)

LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
    stagefright_overlay_output.cpp \
    SecHardwareRenderer.cpp \
    SEC_OMX_Plugin.cpp

LOCAL_CFLAGS += $(PV_CFLAGS_MINUS_VISIBILITY)

LOCAL_C_INCLUDES:= \
      $(TOP)/external/opencore/extern_libs_v2/khronos/openmax/include \
      $(LOCAL_PATH)/../include \
      $(LOCAL_PATH)/../liboverlay

LOCAL_SHARED_LIBRARIES :=    \
        libbinder            \
        libutils             \
        libcutils            \
        libui                \
        libdl                \
        libsurfaceflinger_client

LOCAL_MODULE := libstagefrighthw

LOCAL_MODULE_TAGS := optional
include $(BUILD_SHARED_LIBRARY)

endif

