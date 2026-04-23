ARCHS = arm64
TARGET = iphone:clang:latest:14.0

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = EliteLuxury
EliteLuxury_FILES = Tweak.xm
EliteLuxury_FRAMEWORKS = UIKit WebKit Foundation
EliteLuxury_CFLAGS = -Wno-deprecated-declarations -Wno-unused-variable

include $(THEOS_MAKE_PATH)/tweak.mk
