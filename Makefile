# prevent running normal make, force the user to use ./make.sh
ifneq ($(RAN_CODEGEN),1)
  $(error please use ./make instead of make)
endif

export TARGET := iphone:clang:latest:13.0
ifeq ($(THEOS_PACKAGE_SCHEME),rootless)
  export ARCHS = arm64 arm64e
endif

INSTALL_TARGET_PROCESSES = SpringBoard

TWEAK_NAME = Catppuccin
$(TWEAK_NAME)_FILES = .gen_Tweak.x
$(TWEAK_NAME)_CFLAGS = -fobjc-arc
$(TWEAK_NAME)_PRIVATE_FRAMEWORKS = UIKitServices

SUBPROJECTS += prefs

include $(THEOS)/makefiles/common.mk
include $(THEOS_MAKE_PATH)/tweak.mk
include $(THEOS_MAKE_PATH)/aggregate.mk