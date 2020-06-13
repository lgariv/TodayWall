INSTALL_TARGET_PROCESSES = SpringBoard

ARCH = arm64 arm64e
FINALPACKAGE = 1

include $(THEOS)/makefiles/common.mk

GO_EASY_ON_ME = 1

TWEAK_NAME = TodayWall

TodayWall_FILES = Tweak.x
TodayWall_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
SUBPROJECTS += todaywallprefs
include $(THEOS_MAKE_PATH)/aggregate.mk
