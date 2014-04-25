USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/yulong/msm7627_surf/BoardConfigVendor.mk

TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv6-vfp
TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := msm7k
TARGET_CPU_ABI := armeabi
TARGET_BOOTLOADER_BOARD_NAME := msm7627_surf

BOARD_KERNEL_CMDLINE := console=ttyDCC0 androidboot.hardware=qcom
BOARD_KERNEL_BASE := 0x00200000
BOARD_KERNEL_PAGESIZE := 2048

# fix this up by examining /proc/mtd on a running device
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x00500000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x00600000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x0f400000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x090c0000
BOARD_FLASH_BLOCK_SIZE := 131072

BOARD_CUSTOM_RECOVERY_KEYMAPPING := ../../device/yulong/msm7627_surf/recovery/recovery_ui.c
BOARD_CUSTOM_GRAPHICS:= ../../../device/yulong/msm7627_surf/recovery/minui/graphics.c

TARGET_PREBUILT_KERNEL := device/yulong/msm7627_surf/kernel
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200

BOARD_HAVE_BLUETOOTH := true

# Comment it out to disable showing back menu item at the start.  Presence of
# going-back menu item can be toggled by wrapping around the menu 3 times.
#BOARD_HAS_NO_SELECT_BUTTON := true
# Use this flag if the board has a ext4 partition larger than 2gb
#BOARD_HAS_LARGE_FILESYSTEM := true
