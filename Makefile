export PREFIX = $(THEOS)/toolchain/Xcode.xctoolchain/usr/bin/
export SDKVERSION = 15.2
export ARCHS = arm64 arm64e

INSTALL_TARGET_PROCESSES = SpringBoard

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = StarfishFix

StarfishFix_FILES = Tweak.x
StarfishFix_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
