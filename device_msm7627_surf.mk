$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/yulong/msm7627_surf/msm7627_surf-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/yulong/msm7627_surf/overlay

ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := device/yulong/msm7627_surf/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_PACKAGES += PinyinIME

PRODUCT_COPY_FILES += \
    device/yulong/msm7627_surf/init.rc:root/init.rc \
    device/yulong/msm7627_surf/init.qcom.sh:root/init.qcom.sh \
    device/yulong/msm7627_surf/init.qcom.rc:root/init.qcom.rc \
    device/yulong/msm7627_surf/ueventd.rc:root/ueventd.rc \
    device/yulong/msm7627_surf/init.qcom.bt.sh:system/etc/init.qcom.bt.sh \
    device/yulong/msm7627_surf/init.qcom.coex.sh:system/etc/init.qcom.coex.sh \
    device/yulong/msm7627_surf/init.qcom.coex.sh:system/etc/init.qcom.post_boot.sh \
    device/yulong/msm7627_surf/init.qcom.wifi.sh:system/etc/init.qcom.wifi.sh \
    device/yulong/msm7627_surf/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
    device/yulong/msm7627_surf/vold.fstab:system/etc/vold.fstab \

# These are needed for overriding the default modules in the source tree.
# List them one by one to let copy_override.sh find them.
OVERRIDE_PATH := device/yulong/msm7627_surf/proprietary/override
PRODUCT_COPY_FILES += \
    $(OVERRIDE_PATH)/lib/liba2dp.so:obj/lib/liba2dp.so \
    $(OVERRIDE_PATH)/lib/libaudio.so:obj/lib/libaudio.so \
    $(OVERRIDE_PATH)/lib/libaudiopolicy.so:obj/lib/libaudiopolicy.so \
    $(OVERRIDE_PATH)/lib/libcamera.so:obj/lib/libcamera.so \
    $(OVERRIDE_PATH)/lib/libcamera_client.so:obj/lib/libcamera_client.so \
    $(OVERRIDE_PATH)/lib/libhardware_legacy.so:obj/lib/libhardware_legacy.so \
    $(OVERRIDE_PATH)/lib/libmedia.so:obj/lib/libmedia.so \
    $(OVERRIDE_PATH)/lib/librpc.so:obj/lib/librpc.so \

PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,device/yulong/msm7627_surf/proprietary/override,system) \
    $(call find-copy-subdir-files,*,device/yulong/msm7627_surf/proprietary/system,system)

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
# Name must match the /device path.
PRODUCT_NAME := yulong_msm7627_surf
PRODUCT_DEVICE := msm7627_surf
PRODUCT_MODEL := Coolpad 5860
PRODUCT_LOCALES := zh_CN en_US
