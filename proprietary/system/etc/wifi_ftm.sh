#!/system/bin/sh

echo 1 > /sys/devices/platform/msm_sdcc.2/polling
insmod /system/lib/modules/librasdioif.ko
insmod /system/lib/modules/libra/libra_ftm.ko
echo 0 > /sys/devices/platform/msm_sdcc.2/polling
ptt_socket_app
