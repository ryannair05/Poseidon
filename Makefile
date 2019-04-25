FINALPACKAGE = 1

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = Poseidon
Poseidon_FILES = Tweak.xm
Poseidon_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
