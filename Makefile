ARCH = arm64e arm64
#TARGET := iphone:clang:latest:7.0
INSTALL_TARGET_PROCESSES = SpringBoard

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = catppuccin

catppuccin_FILES = Tweak.x
catppuccin_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
