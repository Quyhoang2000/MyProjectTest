ARCHS = arm64
TARGET = iphone:clang:latest:14.0
DEBUG = 0
FINALPACKAGE = 1

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = EliteLuxury
EliteLuxury_FILES = Tweak.xm
EliteLuxury_FRAMEWORKS = UIKit WebKit Foundation
# Thêm cờ này để tắt các lỗi vặt khi build iOS 18
EliteLuxury_CFLAGS = -Wno-deprecated-declarations -Wno-unused-variable -Wno-protocol -Wno-error

include $(THEOS_MAKE_PATH)/tweak.mk
