#USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/yulong/msm7627_surf/BoardConfigVendor.mk

TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv6-vfp
TARGET_BOARD_PLATFORM := msm7k
TARGET_CPU_ABI := armeabi
TARGET_GLOBAL_CFLAGS += -mfpu=vfp -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=vfp -mfloat-abi=softfp
TARGET_BOOTLOADER_BOARD_NAME := msm7627_surf
TARGET_NO_BOOTLOADER := true
TARGET_USES_16BPPSURFACE_FOR_OPAQUE := true
TARGET_AVOID_DRAW_TEXTURE_EXTENSION := true

BOARD_KERNEL_CMDLINE := console=ttyDCC0 androidboot.hardware=qcom
BOARD_KERNEL_BASE := 0x00200000
BOARD_KERNEL_PAGESIZE := 2048

# fix this up by examining /proc/mtd on a running device
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x00500000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x00600000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x0f400000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x090c0000
BOARD_FLASH_BLOCK_SIZE := 131072

TARGET_PREBUILT_KERNEL := device/yulong/msm7627_surf/kernel
TARGET_PROVIDES_LIBAUDIO := true
#TARGET_PROVIDES_LIBRIL := true
TARGET_PROVIDES_INIT_RC := true
#TARGET_BOARD_PLATFORM_GPU := qcom-adreno200

BOARD_EGL_CFG := device/yulong/msm7627_surf/egl.cfg

BOARD_HAVE_BLUETOOTH := true
#BOARD_SOFTAP_DEVICE := unknown.
#BOARD_CAMERA_LIBRARIES := libcamera
BOARD_USE_CAF_LIBCAMERA_GB_REL := true
#BOARD_USES_QCOM_HARDWARE := true
#BOARD_USES_QCOM_LIBS := true

#BOARD_USES_QCOM_GPS := true
#BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := default
#BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 50001

# For compiling wpa_supplicant and wpa_cli.
BOARD_WPA_SUPPLICANT_DRIVER := WEXT
WPA_SUPPLICANT_VERSION := VER_0_6_X

BOARD_CUSTOM_RECOVERY_KEYMAPPING := ../../device/yulong/msm7627_surf/recovery/recovery_ui.c
BOARD_CUSTOM_GRAPHICS:= ../../../device/yulong/msm7627_surf/recovery/minui/graphics.c

# Comment it out to disable showing back menu item at the start.  Presence of
# going-back menu item can be toggled by wrapping around the menu 3 times.
#BOARD_HAS_NO_SELECT_BUTTON := true
# Use this flag if the board has a ext4 partition larger than 2gb
#BOARD_HAS_LARGE_FILESYSTEM := true
