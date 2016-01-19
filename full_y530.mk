#
# Copyright 2016 The Android Open Source Project
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
#

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

LOCAL_PATH := device/huawei/y530

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/fstab.qcom:root/fstab.qcom \
    $(LOCAL_PATH)/rootdir/init.qcom.class_core.sh:root/init.qcom.class_core.sh \
    $(LOCAL_PATH)/rootdir/init.qcom.class_main.sh:root/init.qcom.class_main.sh \
    $(LOCAL_PATH)/rootdir/init.qcom.early_boot.sh:root/init.qcom.early_boot.sh \
    $(LOCAL_PATH)/rootdir/init.qcom.factory.sh:root/init.qcom.factory.sh \
    $(LOCAL_PATH)/rootdir/init.qcom.rc:root/init.qcom.rc \
    $(LOCAL_PATH)/rootdir/init.qcom.sh:root/init.qcom.sh \
    $(LOCAL_PATH)/rootdir/init.qcom.ssr.sh:root/init.qcom.ssr.sh \
    $(LOCAL_PATH)/rootdir/init.qcom.rc:root/init.qcom.rc \
    $(LOCAL_PATH)/rootdir/init.qcom.sh:root/init.qcom.sh \
    $(LOCAL_PATH)/rootdir/init.qcom.ssr.sh:root/init.qcom.ssr.sh \
    $(LOCAL_PATH)/rootdir/init.qcom.syspart_fixup.sh:root/init.qcom.syspart_fixup.sh \
    $(LOCAL_PATH)/rootdir/init.qcom.usb.rc:root/init.qcom.usb.rc \
    $(LOCAL_PATH)/rootdir/init.qcom.usb.sh:root/init.qcom.usb.sh \
    $(LOCAL_PATH)/rootdir/init.recovery.qcom.rc:root/init.recovery.qcom.rc \
    $(LOCAL_PATH)/rootdir/init.trace.rc:root/init.trace.rc \
	$(LOCAL_PATH)/rootdir/init.usb.rc:root/init.usb.rc \
	$(LOCAL_PATH)/rootdir/ueventd.qcom.rc:root/ueventd.qcom.rc \

DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/whitelist_appops.xml:system/etc/whitelist_appops.xml

# GPS configuration
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/gps.conf:system/etc/gps.conf \
    $(LOCAL_PATH)/configs/sec_config:system/etc/sec_config

# Pre-Jars
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/cneapiclient.jar:system/framework/cneapiclient.jar 

	
# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.stepcounter.xml:system/etc/permissions/android.hardware.sensor.stepcounter.xml \
    frameworks/native/data/etc/android.hardware.sensor.stepdetector.xml:system/etc/permissions/android.hardware.sensor.stepdetector.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml \
    frameworks/native/data/etc/android.hardware.audio.low_latency.xml:system/etc/permissions/android.hardware.audio.low_latency.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
    $(LOCAL_PATH)/prebuilt/system/etc/permissions/com.qualcomm.location.xml:system/etc/permissions/com.qualcomm.location.xml

# Screen density
PRODUCT_AAPT_CONFIG := normal hdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi

# Boot animation
TARGET_SCREEN_HEIGHT := 854
TARGET_SCREEN_WIDTH := 480

# HAL
PRODUCT_PACKAGES += \
    copybit.msm8610 \
    gralloc.msm8610 \
    hwcomposer.msm8610 \
    memtrack.msm8610 \
    power.msm8610 \
    liboverlay

# Audio
PRODUCT_PACKAGES += \
    audio_policy.msm8610 \
    audio.primary.msm8610 \
    audio.a2dp.default \
    audio.usb.default \
    audio.r_submix.default \
    libaudio-resampler \
    libaudioparameter \
    libqcomvisualizer \
    libqcompostprocbundle \
    libqcomvoiceprocessing \
    tinycap \
    tinymix \
    tinypcminfo \
    tinyplay \
    libalsa-intf \
    libaudio-resampler \
    libaudioutils \
    aplay \
    amix \
    arec \
    alsaucm_test

# Charger
PRODUCT_PACKAGES += \
    charger \
    charger_res_images

# Power
PRODUCT_PACKAGES += \
    power.msm8610

# Crda
PRODUCT_PACKAGES += \
    crda \
    linville.key.pub.pem \
    regdbdump \
    regulatory.bin

# Ebtables
PRODUCT_PACKAGES += \
    ebtables \
    ethertypes \
    libebtc

# FM radio
PRODUCT_PACKAGES += \
    FM2 \
    FMRecord \
    libqcomfm_jni \
    qcom.fmradio

# GPS
PRODUCT_PACKAGES += \
    gps.msm8610

# Lights
PRODUCT_PACKAGES += \
    lights.msm8610

# Camera
PRODUCT_PACKAGES += \
    camera.msm8610

#OEM Services library
PRODUCT_PACKAGES += \
    oem-services \
    libsubsystem_control \
    libSubSystemShutdown

# OMX
PRODUCT_PACKAGES += \
    libc2dcolorconvert \
    libdashplayer \
    libdivxdrmdecrypt \
    libmm-omxcore \
    libOmxAacEnc \
    libOmxAmrEnc \
    libOmxCore \
    libOmxEvrcEnc \
    libOmxQcelp13Enc \
    libOmxVdec \
    libOmxVdecHevc \
    libOmxVenc \
    libstagefrighthw \
    qcmediaplayer

PRODUCT_BOOT_JARS += \
    qcmediaplayer

# Sensors
PRODUCT_PACKAGES += \
    sensors.msm8610 \
    libcalmodule_akm \
    calmodule.cfg

# Filesystem management tools
PRODUCT_PACKAGES += \
    e2fsck \
    fibmap.f2fs \
    fsck.f2fs \
    make_ext4fs \
    mkfs.f2fs \
    resize2fs \
    setup_fs

# USB
PRODUCT_PACKAGES += \
    com.android.future.usb.accessory
	
# Ramdisk
PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,device/huawei/y530/ramdisk,root)

# Prebuilt
PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,device/huawei/y530/prebuilt/system,system)

# Random
PRODUCT_PACKAGES += \
    qrngd \
    qrngp

# Wifi
PRODUCT_PACKAGES += \
    p2p_supplicant_overlay.conf \
    wpa_supplicant_overlay.conf
 
PRODUCT_PACKAGES += \
    hostapd.accept \
    hostapd.deny \
    hostapd_default.conf
 
PRODUCT_PACKAGES += \
    WCNSS_qcom_wlan_nv.bin
 
 # Prima(pronto firmware)
PRODUCT_COPY_FILES += \
    device/huawei/y530/wifi/WCNSS_cfg.dat:system/etc/firmware/wlan/prima/WCNSS_cfg.dat \
    device/huawei/y530/wifi/WCNSS_qcom_cfg.ini:system/etc/firmware/wlan/prima/WCNSS_qcom_cfg.ini

PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.qc.sub.rstrtlvl=3 \
    persist.sys.qc.sub.rdump.on=1 \
    persist.sys.qc.sub.rdump.max=20 \
    wifi.interface=wlan0 
    wifi.supplicant_scan_interval=15

# Set default USB interface
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp

# Enable strict operation
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.strict_op_enable=false \
    persist.sys.whitelist=/system/etc/whitelist_appops.xml \
    ro.secure=0

# PRODUCT_PROPERTY_OVERRIDES += \
    # ro.product.model=Y530-U00

	
$(call inherit-product, build/target/product/full.mk)

$(call inherit-product, frameworks/native/build/phone-hdpi-512-dalvik-heap.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

$(call inherit-product-if-exists, vendor/huawei/y530/y530-vendor.mk)
