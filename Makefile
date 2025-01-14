FINALPACKAGE = 1
DEBUG = 0
ARCHS = arm64 arm64e
TARGET = iphone:clang::13.3
THEOS_PACKAGE_SCHEME=rootless

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = ModernUI
ModernUI_FILES = Tweak.xm
export ADDITIONAL_CFLAGS = -fobjc-arc


include $(THEOS_MAKE_PATH)/tweak.mk
