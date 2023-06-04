export TARGET := iphone:clang:latest:13.0
ifeq ($(THEOS_PACKAGE_SCHEME),rootless)
  export ARCHS = arm64 arm64e
endif

INSTALL_TARGET_PROCESSES = SpringBoard

# uncomment this line to enable automatic theme switching
# THIS BREAKS INCREMENTAL BUILDS; ALWAYS CLEAN BEFORE BUILDING IF THIS IS ENABLED
#AUTOMATIC_THEME_SWITCHING_BROKEN_INCREMENTAL_BUILDS = 1

TWEAK_NAME = catppuccin
$(TWEAK_NAME)_FILES = Tweak.x
$(TWEAK_NAME)_CFLAGS = -fobjc-arc
ifeq ($(AUTOMATIC_THEME_SWITCHING_BROKEN_INCREMENTAL_BUILDS),1)
  $(warning AUTOMATIC_THEME_SWITCHING_BROKEN_INCREMENTAL_BUILDS is enabled - INCREMENTAL BUILDS WILL NOT WORK)
  $(TWEAK_NAME)_CFLAGS += -DAUTOMATIC_THEME_SWITCHING_BROKEN_INCREMENTAL_BUILDS

  $(TWEAK_NAME)_LDFLAGS = $(THEOS)/sdks/iPhoneOS13.7.sdk/System/Library/PrivateFrameworks/UIKitServices.framework/UIKitServices.tbd
  $(TWEAK_NAME)_PRIVATEFRAMEWORKS = UIKitServices
endif

SUBPROJECTS += prefs

include $(THEOS)/makefiles/common.mk
include $(THEOS_MAKE_PATH)/tweak.mk
include $(THEOS_MAKE_PATH)/aggregate.mk