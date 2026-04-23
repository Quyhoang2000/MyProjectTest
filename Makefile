ARCHS = arm64 arm64e
TARGET = iphone:clang:latest:14.0
DEBUG = 0
FINALPACKAGE = 1

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = EliteLuxury
EliteLuxury_FILES = Tweak.xm
EliteLuxury_FRAMEWORKS = UIKit WebKit Foundation

include $(THEOS_MAKE_PATH)/tweak.mk
