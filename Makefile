export TARGET := iphone:clang:latest:13.0
ifeq ($(THEOS_PACKAGE_SCHEME),rootless)
  export ARCHS = arm64 arm64e
endif

INSTALL_TARGET_PROCESSES = SpringBoard

TWEAK_NAME = catppuccin
$(TWEAK_NAME)_FILES = Tweak.x
$(TWEAK_NAME)_CFLAGS = -fobjc-arc

SUBPROJECTS += prefs

include $(THEOS)/makefiles/common.mk
include $(THEOS_MAKE_PATH)/tweak.mk
include $(THEOS_MAKE_PATH)/aggregate.mk
