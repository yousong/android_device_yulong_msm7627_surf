#!/bin/sh

# Copyright (C) 2010 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

DEVICE=msm7627_surf


mkdir -p ../../../vendor/yulong/$DEVICE/proprietary
adb pull /system/bin/qmuxd ../../../vendor/yulong/$DEVICE/proprietary/qmuxd
chmod 755 ../../../vendor/yulong/$DEVICE/proprietary/qmuxd
#adb pull /system/bin/akmd2 ../../../vendor/yulong/$DEVICE/proprietary/akmd2
#chmod 755 ../../../vendor/yulong/$DEVICE/proprietary/akmd2
adb pull /system/bin/akmd8975 ../../../vendor/yulong/$DEVICE/proprietary/akmd8975
chmod 755 ../../../vendor/yulong/$DEVICE/proprietary/akmd8975
adb pull /system/bin/hci_qcomm_init ../../../vendor/yulong/$DEVICE/proprietary/hci_qcomm_init
chmod 755 ../../../vendor/yulong/$DEVICE/proprietary/hci_qcomm_init

adb pull /system/etc/init.qcom.bt.sh ../../../vendor/yulong/$DEVICE/proprietary/init.qcom.bt.sh

# EGL
adb pull /system/lib/egl/eglsubAndroid.so ../../../vendor/yulong/$DEVICE/proprietary/eglsubAndroid.so
adb pull /system/lib/egl/libEGL_adreno200.so ../../../vendor/yulong/$DEVICE/proprietary/libEGL_adreno200.so
adb pull /system/lib/egl/libGLES_android.so ../../../vendor/yulong/$DEVICE/proprietary/libGLES_android.so
adb pull /system/lib/egl/libGLESv2_adreno200.so ../../../vendor/yulong/$DEVICE/proprietary/libGLESv2_adreno200.so
adb pull /system/lib/egl/libGLESv1_CM_adreno200.so ../../../vendor/yulong/$DEVICE/proprietary/libGLESv1_CM_adreno200.so
adb pull /system/lib/egl/libq3dtools_adreno200.so ../../../vendor/yulong/$DEVICE/proprietary/libq3dtools_adreno200.so
adb pull /system/lib/libgsl.so ../../../vendor/yulong/$DEVICE/proprietary/libgsl.so
adb pull /system/etc/firmware/yamato_pfp.fw ../../../vendor/yulong/$DEVICE/proprietary/yamato_pfp.fw
adb pull /system/etc/firmware/yamato_pm4.fw ../../../vendor/yulong/$DEVICE/proprietary/yamato_pm4.fw

adb pull /system/lib/libCPOpenglLib.so ../../../vendor/yulong/$DEVICE/proprietary/libCPOpenglLib.so
adb pull /system/lib/libOpenSLES.so ../../../vendor/yulong/$DEVICE/proprietary/libOpenSLES.so
adb pull /system/lib/libOpenVG.so ../../../vendor/yulong/$DEVICE/proprietary/libOpenVG.so

#RIL files
adb pull /system/lib/libril-qc-1.so ../../../vendor/yulong/$DEVICE/proprietary/libril-qc-1.so
adb pull /system/lib/libril-qcril-hook-oem.so ../../../vendor/yulong/$DEVICE/proprietary/libril-qcril-hook-oem.so
adb pull /system/lib/libdiag.so ../../../vendor/yulong/$DEVICE/proprietary/libdiag.so
adb pull /system/lib/liboncrpc.so ../../../vendor/yulong/$DEVICE/proprietary/liboncrpc.so
adb pull /system/lib/libqmi.so ../../../vendor/yulong/$DEVICE/proprietary/libqmi.so
adb pull /system/lib/libqmiservices.so ../../../vendor/yulong/$DEVICE/proprietary/libqmiservices.so
adb pull /system/lib/libdsm.so ../../../vendor/yulong/$DEVICE/proprietary/libdsm.so
adb pull /system/lib/libqueue.so ../../../vendor/yulong/$DEVICE/proprietary/libqueue.so
#adb pull /system/lib/libdll.so ../../../vendor/yulong/$DEVICE/proprietary/libdll.so
adb pull /system/lib/libcm.so ../../../vendor/yulong/$DEVICE/proprietary/libcm.so
adb pull /system/lib/libgsdi_exp.so ../../../vendor/yulong/$DEVICE/proprietary/libgsdi_exp.so
adb pull /system/lib/libgstk_exp.so ../../../vendor/yulong/$DEVICE/proprietary/libgstk_exp.so
adb pull /system/lib/libwms.so ../../../vendor/yulong/$DEVICE/proprietary/libwms.so
adb pull /system/lib/libnv.so ../../../vendor/yulong/$DEVICE/proprietary/libnv.so
adb pull /system/lib/libwmsts.so ../../../vendor/yulong/$DEVICE/proprietary/libwmsts.so
adb pull /system/lib/libpbmlib.so ../../../vendor/yulong/$DEVICE/proprietary/libpbmlib.so
adb pull /system/lib/libdss.so ../../../vendor/yulong/$DEVICE/proprietary/libdss.so
adb pull /system/lib/libauth.so ../../../vendor/yulong/$DEVICE/proprietary/libauth.so

#camera
adb pull /system/lib/libcamera.so ../../../vendor/yulong/$DEVICE/proprietary/libcamera.so
adb pull /system/lib/liboemcamera.so ../../../vendor/yulong/$DEVICE/proprietary/liboemcamera.so
adb pull /system/lib/libmmjpeg.so ../../../vendor/yulong/$DEVICE/proprietary/libmmjpeg.so
adb pull /system/lib/libmmipl.so ../../../vendor/yulong/$DEVICE/proprietary/libmmipl.so

adb pull /system/lib/libmm-abl.so ../../../vendor/yulong/$DEVICE/proprietary/lib/libmm-abl.so
adb pull /system/lib/libmm-adspsvc.so ../../../vendor/yulong/$DEVICE/proprietary/lib/libmm-adspsvc.so
#adb pull /system/lib/libmm-omxcore.so ../../../vendor/yulong/$DEVICE/proprietary/lib/libmm-omxcore.so
adb pull /system/lib/libmmgsdilib.so ../../../vendor/yulong/$DEVICE/proprietary/lib/libmmgsdilib.so
adb pull /system/lib/libmmosal.so ../../../vendor/yulong/$DEVICE/proprietary/lib/libmmosal.so
adb pull /system/lib/libmmparser.so ../../../vendor/yulong/$DEVICE/proprietary/lib/libmmparser.so
adb pull /system/lib/libmmparser_divxdrmlib.so ../../../vendor/yulong/$DEVICE/proprietary/lib/libmmparser_divxdrmlib.so

#OMX
#adb pull /system/lib/libOmxQcelpDec.so ../../../vendor/yulong/$DEVICE/proprietary/libOmxQcelpDec.so
adb pull /system/lib/libOmxAacDec.so ../../../vendor/yulong/$DEVICE/proprietary/lib/libOmxAacDec.so
adb pull /system/lib/libOmxAacEnc.so ../../../vendor/yulong/$DEVICE/proprietary/lib/libOmxAacEnc.so
adb pull /system/lib/libOmxAdpcmDec.so ../../../vendor/yulong/$DEVICE/proprietary/lib/libOmxAdpcmDec.so
adb pull /system/lib/libOmxAmrDec.so ../../../vendor/yulong/$DEVICE/proprietary/lib/libOmxAmrDec.so
adb pull /system/lib/libOmxAmrEnc.so ../../../vendor/yulong/$DEVICE/proprietary/lib/libOmxAmrEnc.so
adb pull /system/lib/libOmxAmrRtpDec.so ../../../vendor/yulong/$DEVICE/proprietary/lib/libOmxAmrRtpDec.so
adb pull /system/lib/libOmxAmrwbDec.so ../../../vendor/yulong/$DEVICE/proprietary/lib/libOmxAmrwbDec.so
adb pull /system/lib/libOmxEvrcDec.so ../../../vendor/yulong/$DEVICE/proprietary/lib/libOmxEvrcDec.so
adb pull /system/lib/libOmxEvrcEnc.so ../../../vendor/yulong/$DEVICE/proprietary/lib/libOmxEvrcEnc.so
adb pull /system/lib/libOmxEvrcHwDec.so ../../../vendor/yulong/$DEVICE/proprietary/lib/libOmxEvrcHwDec.so
adb pull /system/lib/libOmxH264Dec.so ../../../vendor/yulong/$DEVICE/proprietary/lib/libOmxH264Dec.so
adb pull /system/lib/libOmxMp3Dec.so ../../../vendor/yulong/$DEVICE/proprietary/lib/libOmxMp3Dec.so
adb pull /system/lib/libOmxMpeg4Dec.so ../../../vendor/yulong/$DEVICE/proprietary/lib/libOmxMpeg4Dec.so
adb pull /system/lib/libOmxVidEnc.so ../../../vendor/yulong/$DEVICE/proprietary/lib/libOmxVidEnc.so
adb pull /system/lib/libOmxWmaDec.so ../../../vendor/yulong/$DEVICE/proprietary/lib/libOmxWmaDec.so
adb pull /system/lib/libOmxWmvDec.so ../../../vendor/yulong/$DEVICE/proprietary/lib/libOmxWmvDec.so
adb pull /system/lib/libomx_aacdec_sharedlibrary.so ../../../vendor/yulong/$DEVICE/proprietary/libomx_aacdec_sharedlibrary.so
adb pull /system/lib/libomx_amrdec_sharedlibrary.so ../../../vendor/yulong/$DEVICE/proprietary/libomx_amrdec_sharedlibrary.so
adb pull /system/lib/libomx_amrenc_sharedlibrary.so ../../../vendor/yulong/$DEVICE/proprietary/libomx_amrenc_sharedlibrary.so
adb pull /system/lib/libomx_avcdec_sharedlibrary.so ../../../vendor/yulong/$DEVICE/proprietary/libomx_avcdec_sharedlibrary.so
adb pull /system/lib/libomx_m4vdec_sharedlibrary.so ../../../vendor/yulong/$DEVICE/proprietary/libomx_m4vdec_sharedlibrary.so
adb pull /system/lib/libomx_mp3dec_sharedlibrary.so ../../../vendor/yulong/$DEVICE/proprietary/libomx_mp3dec_sharedlibrary.so
adb pull /system/lib/libomx_sharedlibrary.so ../../../vendor/yulong/$DEVICE/proprietary/libomx_sharedlibrary.so

#adb pull /system/lib/libOmxCore.so ../../../vendor/yulong/$DEVICE/proprietary/lib/libOmxCore.so
adb pull /system/lib/libOmxOn2Dec.so ../../../vendor/yulong/$DEVICE/proprietary/lib/libOmxOn2Dec.so
adb pull /system/lib/libOmxQcelp13Dec.so ../../../vendor/yulong/$DEVICE/proprietary/lib/libOmxQcelp13Dec.so
adb pull /system/lib/libOmxQcelp13Enc.so ../../../vendor/yulong/$DEVICE/proprietary/lib/libOmxQcelp13Enc.so
adb pull /system/lib/libOmxQcelpHwDec.so ../../../vendor/yulong/$DEVICE/proprietary/lib/libOmxQcelpHwDec.so
adb pull /system/lib/libOmxrv9Dec.so ../../../vendor/yulong/$DEVICE/proprietary/lib/libOmxrv9Dec.so

#GPS
#adb pull /system/lib/libloc.so ../../../vendor/yulong/$DEVICE/proprietary/libloc.so
#adb pull /system/lib/libloc-rpc.so ../../../vendor/yulong/$DEVICE/proprietary/libloc-rpc.so
adb pull /system/lib/libcommondefs.so ../../../vendor/yulong/$DEVICE/proprietary/libcommondefs.so

adb pull /system/lib/libloc_api-rpc-qc.so ../../../vendor/yulong/$DEVICE/proprietary/libloc_api-rpc-qc.so
adb pull /system/lib/libloc_ext.so ../../../vendor/yulong/$DEVICE/proprietary/libloc_ext.so

# hw
adb pull /system/lib/hw/copybit.msm7k.so ../../../vendor/yulong/$DEVICE/proprietary/copybit.msm7k.so
adb pull /system/lib/hw/gps.default.so ../../../vendor/yulong/$DEVICE/proprietary/gps.default.so
adb pull /system/lib/hw/gralloc.default.so ../../../vendor/yulong/$DEVICE/proprietary/gralloc.default.so
adb pull /system/lib/hw/gralloc.msm7k.so ../../../vendor/yulong/$DEVICE/proprietary/gralloc.msm7k.so
adb pull /system/lib/hw/lights.msm7k.so ../../../vendor/yulong/$DEVICE/proprietary/lights.msm7k.so
adb pull /system/lib/hw/sensors.qcom.so ../../../vendor/yulong/$DEVICE/proprietary/sensors.qcom.so

#wlan
adb pull /system/etc/firmware/wlan/cfg.dat ../../../vendor/yulong/$DEVICE/proprietary/cfg.dat
adb pull /system/etc/firmware/wlan/qcom_cfg.ini ../../../vendor/yulong/$DEVICE/proprietary/qcom_cfg.ini
adb pull /system/etc/firmware/wlan/qcom_fw.bin ../../../vendor/yulong/$DEVICE/proprietary/qcom_fw.bin
adb pull /system/etc/firmware/wlan/qcom_wapi_fw.bin ../../../vendor/yulong/$DEVICE/proprietary/qcom_wapi_fw.bin

#modules
adb pull /system//lib/modules/libra/libra.ko ../../../vendor/yulong/$DEVICE/proprietary/libra.ko
adb pull /system//lib/modules/libra/libra_ftm.ko ../../../vendor/yulong/$DEVICE/proprietary/libra_ftm.ko
adb pull /system//lib/modules/librasdioif.ko ../../../vendor/yulong/$DEVICE/proprietary/librasdioif.ko

##binaries
adb pull /system/bin/dun-server ../../../vendor/yulong/$DEVICE/proprietary/dun-server
adb pull /system/bin/bridgemgrd ../../../vendor/yulong/$DEVICE/proprietary/bridgemgrd
adb pull /system/lib/libdsutils.so ../../../vendor/yulong/$DEVICE/proprietary/libdsutils.so
adb pull /system/bin/netmgrd ../../../vendor/yulong/$DEVICE/proprietary/netmgrd
adb pull /system/lib/libnetmgr.so ../../../vendor/yulong/$DEVICE/proprietary/libnetmgr.so
adb pull /system/bin/btwlancoex ../../../vendor/yulong/$DEVICE/proprietary/btwlancoex
adb pull /system/bin/amploader ../../../vendor/yulong/$DEVICE/proprietary/amploader
adb pull /system/bin/port-bridge ../../../vendor/yulong/$DEVICE/proprietary/port-bridge
adb pull /system/bin/wiperiface ../../../vendor/yulong/$DEVICE/proprietary/wiperiface
adb pull /system/bin/CKPD-daemon ../../../vendor/yulong/$DEVICE/proprietary/CKPD-daemon
adb pull /system/bin/ATFWD-daemon ../../../vendor/yulong/$DEVICE/proprietary/ATFWD-daemon
adb pull /system/bin/ds_fmc_appd ../../../vendor/yulong/$DEVICE/proprietary/ds_fmc_appd
adb pull /system/bin/hostapd ../../../vendor/yulong/$DEVICE/proprietary/hostapd



(cat << EOF) | sed s/__DEVICE__/$DEVICE/g > ../../../vendor/yulong/$DEVICE/$DEVICE-vendor-blobs.mk
# Copyright (C) 2010 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# All the blobs necessary for blade
PRODUCT_COPY_FILES += \\
    vendor/yulong/__DEVICE__/proprietary/qmuxd:system/bin/qmuxd \\
    vendor/yulong/__DEVICE__/proprietary/akmd8975:system/bin/akmd8975 \\
    vendor/yulong/__DEVICE__/proprietary/hci_qcomm_init:system/bin/hci_qcomm_init \\
    vendor/yulong/__DEVICE__/proprietary/init.qcom.bt.sh:system/etc/init.qcom.bt.sh \\
    vendor/yulong/__DEVICE__/proprietary/eglsubAndroid.so:system/lib/egl/eglsubAndroid.so \\
    vendor/yulong/__DEVICE__/proprietary/libGLES_android.so:system/lib/egl/libGLES_android.so \
    vendor/yulong/__DEVICE__/proprietary/libEGL_adreno200.so:system/lib/egl/libEGL_adreno200.so \\
    vendor/yulong/__DEVICE__/proprietary/libGLESv2_adreno200.so:system/lib/egl/libGLESv2_adreno200.so \\
    vendor/yulong/__DEVICE__/proprietary/libGLESv1_CM_adreno200.so:system/lib/egl/libGLESv1_CM_adreno200.so \\
    vendor/yulong/__DEVICE__/proprietary/libq3dtools_adreno200.so:system/lib/egl/libq3dtools_adreno200.so \\
    vendor/yulong/__DEVICE__/proprietary/libgsl.so:system/lib/libgsl.so \\
    vendor/yulong/__DEVICE__/proprietary/yamato_pfp.fw:system/etc/firmware/yamato_pfp.fw \\
    vendor/yulong/__DEVICE__/proprietary/yamato_pm4.fw:system/etc/firmware/yamato_pm4.fw \\
    vendor/yulong/__DEVICE__/proprietary/libCPOpenglLib.so:/system/lib/libCPOpenglLib.so \
    vendor/yulong/__DEVICE__/proprietary/libOpenSLES.so:/system/lib/libOpenSLES.so \
    vendor/yulong/__DEVICE__/proprietary/libOpenVG.so:/system/lib/libOpenVG.so \
    vendor/yulong/__DEVICE__/proprietary/libril-qc-1.so:system/lib/libril-qc-1.so \\
    vendor/yulong/__DEVICE__/proprietary/libril-qcril-hook-oem.so:system/lib/libril-qcril-hook-oem.so \\
    vendor/yulong/__DEVICE__/proprietary/libdiag.so:system/lib/libdiag.so \\
    vendor/yulong/__DEVICE__/proprietary/liboncrpc.so:system/lib/liboncrpc.so \\
    vendor/yulong/__DEVICE__/proprietary/libqmi.so:system/lib/libqmi.so \\
    vendor/yulong/__DEVICE__/proprietary/libqmiservices.so:/system/lib/libqmiservices.so \\
    vendor/yulong/__DEVICE__/proprietary/libdsm.so:system/lib/libdsm.so \\
    vendor/yulong/__DEVICE__/proprietary/libqueue.so:system/lib/libqueue.so \\
    vendor/yulong/__DEVICE__/proprietary/libcm.so:system/lib/libcm.so \\
    vendor/yulong/__DEVICE__/proprietary/libgsdi_exp.so:system/lib/libgsdi_exp.so \\
    vendor/yulong/__DEVICE__/proprietary/libgstk_exp.so:system/lib/libgstk_exp.so \\
    vendor/yulong/__DEVICE__/proprietary/libwms.so:system/lib/libwms.so \\
    vendor/yulong/__DEVICE__/proprietary/libnv.so:system/lib/libnv.so \\
    vendor/yulong/__DEVICE__/proprietary/libwmsts.so:system/lib/libwmsts.so \\
    vendor/yulong/__DEVICE__/proprietary/libpbmlib.so:system/lib/libpbmlib.so \\
    vendor/yulong/__DEVICE__/proprietary/libdss.so:system/lib/libdss.so \\
    vendor/yulong/__DEVICE__/proprietary/libauth.so:system/lib/libauth.so \\
    vendor/yulong/__DEVICE__/proprietary/libcamera.so:/system/lib/libcamera.so \\
    vendor/yulong/__DEVICE__/proprietary/liboemcamera.so:system/lib/liboemcamera.so \\
    vendor/yulong/__DEVICE__/proprietary/libmmjpeg.so:system/lib/libmmjpeg.so \\
    vendor/yulong/__DEVICE__/proprietary/libmmipl.so:system/lib/libmmipl.so \\
    vendor/yulong/__DEVICE__/proprietary/libmm-abl.so:system/lib/libmm-abl.so \\
    vendor/yulong/__DEVICE__/proprietary/libmm-adspsvc.so:system/lib/libmm-adspsvc.so \\
    vendor/yulong/__DEVICE__/proprietary/libmmgsdilib.so:system/lib/libmmgsdilib.so \\
    vendor/yulong/__DEVICE__/proprietary/libmmosal.so:system/lib/libmmosal.so \\
    vendor/yulong/__DEVICE__/proprietary/libmmparser.so:system/lib/libmmparser.so \\
    vendor/yulong/__DEVICE__/proprietary/libmmparser_divxdrmlib.so:system/lib/libmmparser_divxdrmlib.so \\
    vendor/yulong/__DEVICE__/proprietary/libOmxAacDec.so:system/lib/libOmxAacDec.so \\
    vendor/yulong/__DEVICE__/proprietary/libOmxAacEnc.so:system/lib/libOmxAacEnc.so \\
    vendor/yulong/__DEVICE__/proprietary/libOmxAdpcmDec.so:system/lib/libOmxAdpcmDec.so \\
    vendor/yulong/__DEVICE__/proprietary/libOmxAmrDec.so:system/lib/libOmxAmrDec.so \\
    vendor/yulong/__DEVICE__/proprietary/libOmxAmrEnc.so:system/lib/libOmxAmrEnc.so \\
    vendor/yulong/__DEVICE__/proprietary/libOmxAmrRtpDec.so:system/lib/libOmxAmrRtpDec.so \\
    vendor/yulong/__DEVICE__/proprietary/libOmxAmrwbDec.so:system/lib/libOmxAmrwbDec.so \\
    vendor/yulong/__DEVICE__/proprietary/libOmxEvrcDec.so:system/lib/libOmxEvrcDec.so \\
    vendor/yulong/__DEVICE__/proprietary/libOmxEvrcEnc.so:system/lib/libOmxEvrcEnc.so \\
    vendor/yulong/__DEVICE__/proprietary/libOmxEvrcHwDec.so:system/lib/libOmxEvrcHwDec.so \\
    vendor/yulong/__DEVICE__/proprietary/libOmxH264Dec.so:system/lib/libOmxH264Dec.so \\
    vendor/yulong/__DEVICE__/proprietary/libOmxMp3Dec.so:system/lib/libOmxMp3Dec.so \\
    vendor/yulong/__DEVICE__/proprietary/libOmxMpeg4Dec.so:system/lib/libOmxMpeg4Dec.so \\
    vendor/yulong/__DEVICE__/proprietary/libOmxVidEnc.so:system/lib/libOmxVidEnc.so \\
    vendor/yulong/__DEVICE__/proprietary/libOmxWmaDec.so:system/lib/libOmxWmaDec.so \\
    vendor/yulong/__DEVICE__/proprietary/libOmxWmvDec.so:system/lib/libOmxWmvDec.so \\
    vendor/yulong/__DEVICE__/proprietary/libomx_aacdec_sharedlibrary.so:system/lib/libomx_aacdec_sharedlibrary.so \\
    vendor/yulong/__DEVICE__/proprietary/libomx_amrdec_sharedlibrary.so:system/lib/libomx_amrdec_sharedlibrary.so \\
    vendor/yulong/__DEVICE__/proprietary/libomx_amrenc_sharedlibrary.so:system/lib/libomx_amrenc_sharedlibrary.so \\
    vendor/yulong/__DEVICE__/proprietary/libomx_avcdec_sharedlibrary.so:system/lib/libomx_avcdec_sharedlibrary.so \\
    vendor/yulong/__DEVICE__/proprietary/libomx_m4vdec_sharedlibrary.so:system/lib/libomx_m4vdec_sharedlibrary.so \\
    vendor/yulong/__DEVICE__/proprietary/libomx_mp3dec_sharedlibrary.so:system/lib/libomx_mp3dec_sharedlibrary.so \\
    vendor/yulong/__DEVICE__/proprietary/libomx_sharedlibrary.so:system/lib/libomx_sharedlibrary.so \\
    vendor/yulong/__DEVICE__/proprietary/libOmxOn2Dec.so:system/lib/libOmxOn2Dec.so \\
    vendor/yulong/__DEVICE__/proprietary/libOmxQcelp13Dec.so:system/lib/libOmxQcelp13Dec.so \\
    vendor/yulong/__DEVICE__/proprietary/libOmxQcelp13Enc.so:system/lib/libOmxQcelp13Enc.so \\
    vendor/yulong/__DEVICE__/proprietary/libOmxQcelpHwDec.so:system/lib/libOmxQcelpHwDec.so \\
    vendor/yulong/__DEVICE__/proprietary/libOmxrv9Dec.so:system/lib/libOmxrv9Dec.so \\
    vendor/yulong/__DEVICE__/proprietary/libcommondefs.so:system/lib/libcommondefs.so \\
    vendor/yulong/__DEVICE__/proprietary/libloc_api-rpc-qc.so:system/lib/libloc_api-rpc-qc.so \\
    vendor/yulong/__DEVICE__/proprietary/libloc_ext.so:system/lib/libloc_ext.so \\
    vendor/yulong/__DEVICE__/proprietary/copybit.msm7k.so:/system/lib/hw/copybit.msm7k.so \\
    vendor/yulong/__DEVICE__/proprietary/gps.default.so:/system/lib/hw/gps.default.so \\
    vendor/yulong/__DEVICE__/proprietary/gralloc.default.so:/system/lib/hw/gralloc.default.so \\
    vendor/yulong/__DEVICE__/proprietary/gralloc.msm7k.so:/system/lib/hw/gralloc.msm7k.so \\
    vendor/yulong/__DEVICE__/proprietary/lights.msm7k.so:/system/lib/hw/lights.msm7k.so \\
    vendor/yulong/__DEVICE__/proprietary/sensors.qcom.so:/system/lib/hw/sensors.qcom.so \\
    vendor/yulong/__DEVICE__/proprietary/cfg.dat:/system/etc/firmware/wlan/cfg.dat \\
    vendor/yulong/__DEVICE__/proprietary/qcom_cfg.ini:/system/etc/firmware/wlan/qcom_cfg.ini \\
    vendor/yulong/__DEVICE__/proprietary/qcom_fw.bin:/system/etc/firmware/wlan/qcom_fw.bin \\
    vendor/yulong/__DEVICE__/proprietary/qcom_wapi_fw.bin:/system/etc/firmware/wlan/qcom_wapi_fw.bin \\
    vendor/yulong/__DEVICE__/proprietary/libra.ko:/system/lib/modules/libra/libra.ko \\
    vendor/yulong/__DEVICE__/proprietary/wlan.ko:/system/lib/modules/libra/wlan.ko \\
    vendor/yulong/__DEVICE__/proprietary/libra_ftm.ko:/system/lib/modules/libra/libra_ftm.ko \\
    vendor/yulong/__DEVICE__/proprietary/librasdioif.ko:/system/lib/modules/librasdioif.ko \\
    vendor/yulong/__DEVICE__/proprietary/dun-server:/system/bin/dun-server \\
    vendor/yulong/__DEVICE__/proprietary/bridgemgrd:/system/bin/bridgemgrd \\
    vendor/yulong/__DEVICE__/proprietary/libdsutils.so:/system/lib/libdsutils.so \\
    vendor/yulong/__DEVICE__/proprietary/netmgrd:/system/bin/netmgrd \\
    vendor/yulong/__DEVICE__/proprietary/libnetmgr.so:/system/lib/libnetmgr.so \\
    vendor/yulong/__DEVICE__/proprietary/btwlancoex:/system/bin/btwlancoex \\
    vendor/yulong/__DEVICE__/proprietary/amploader:/system/bin/amploader \\
    vendor/yulong/__DEVICE__/proprietary/port-bridge:/system/bin/port-bridge \\
    vendor/yulong/__DEVICE__/proprietary/wiperiface:/system/bin/wiperiface \\
    vendor/yulong/__DEVICE__/proprietary/CKPD-daemon:/system/bin/CKPD-daemon \\
    vendor/yulong/__DEVICE__/proprietary/ATFWD-daemon:/system/bin/ATFWD-daemon \\
    vendor/yulong/__DEVICE__/proprietary/ds_fmc_appd:/system/bin/ds_fmc_appd \\
    vendor/yulong/__DEVICE__/proprietary/hostapd:/system/bin/hostapd \\


EOF

./setup-makefiles.sh
