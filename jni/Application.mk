# Whether we want 'debug' or 'release' version
APP_OPTIM := debug
APP_PLATFORM := android-21

# Target architecture:
APP_ABI := armeabi-v7a
# Working:
# - armeabi-v7a (ARMv7)
# - x86 (No plugins)

# Set global c/c++ flags here
APP_CFLAGS := -g -O0 \
	      -D__ANDROID__

APP_CPPFLAGS := -fno-exceptions -fno-rtti \

