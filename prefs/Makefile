BUNDLE_NAME = CatppuccinPreferences

$(BUNDLE_NAME)_FILES = $(wildcard Controllers/*.mm) $(wildcard Cells/*.mm)
$(BUNDLE_NAME)_INSTALL_PATH = /Library/PreferenceBundles
$(BUNDLE_NAME)_CFLAGS = -fobjc-arc
$(BUNDLE_NAME)_PRIVATE_FRAMEWORKS = Preferences

include $(THEOS)/makefiles/common.mk
include $(THEOS_MAKE_PATH)/bundle.mk
