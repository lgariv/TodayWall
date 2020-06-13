include $(THEOS)/makefiles/common.mk

ARCH = arm64 arm64e

GO_EASY_ON_ME = 1

BUNDLE_NAME = TodayWallPrefs

TodayWallPrefs_FILES = TWPRootListController.m
TodayWallPrefs_INSTALL_PATH = /Library/PreferenceBundles
TodayWallPrefs_FRAMEWORKS = UIKit
TodayWallPrefs_LIBRARIES = imagepicker
TodayWallPrefs_PRIVATE_FRAMEWORKS = Preferences
TodayWallPrefs_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/bundle.mk

internal-stage::
	$(ECHO_NOTHING)mkdir -p $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences$(ECHO_END)
	$(ECHO_NOTHING)cp entry.plist $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences/TodayWallPrefs.plist$(ECHO_END)
