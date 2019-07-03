# 
# Copyright (C) 2018-2019 The LineageOS Project
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
# This file sets variables that control the way modules are built
# thorughout the system. It should not be used to conditionally
# disable makefiles (the proper mechanism to control what gets
# included in a build is to use PRODUCT_PACKAGES in a product
# definition file).
#

# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxhdpi
PRODUCT_AAPT_PREBUILT_DPI := xxhdpi

# default is nosdcard, S/W button enabled in resource
PRODUCT_CHARACTERISTICS := nosdcard

# ARCore
TARGET_INCLUDE_STOCK_ARCORE := true

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/android.hardware.camera.ar.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.camera.ar.xml

# AR Stickers
PRODUCT_PACKAGES += \
    Playground

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.audio.low_latency.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.audio.low_latency.xml \
    frameworks/native/data/etc/android.hardware.audio.pro.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.audio.pro.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/android.hardware.bluetooth.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.bluetooth.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.camera.full.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.camera.full.xml \
    frameworks/native/data/etc/android.hardware.camera.raw.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.camera.raw.xml \
    frameworks/native/data/etc/android.hardware.ethernet.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.ethernet.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.opengles.aep.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.opengles.aep.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.ambient_temperature.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.ambient_temperature.xml \
    frameworks/native/data/etc/android.hardware.sensor.barometer.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.barometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.hifi_sensors.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.hifi_sensors.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.sensor.relative_humidity.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.relative_humidity.xml \
    frameworks/native/data/etc/android.hardware.sensor.stepcounter.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.stepcounter.xml \
    frameworks/native/data/etc/android.hardware.sensor.stepdetector.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.stepdetector.xml \
    frameworks/native/data/etc/android.hardware.telephony.cdma.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.telephony.cdma.xml \
    frameworks/native/data/etc/android.hardware.telephony.euicc.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.telephony.euicc.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.vr.high_performance.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.vr.high_performance.xml \
    frameworks/native/data/etc/android.hardware.vulkan.level-0.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.vulkan.level-0.xml \
    frameworks/native/data/etc/android.hardware.vulkan.version-1_1.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.vulkan.version-1_1.xml \
    frameworks/native/data/etc/android.hardware.vulkan.compute-0.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.vulkan.compute-0.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.wifi.passpoint.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.wifi.passpoint.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.software.midi.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.midi.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/handheld_core_hardware.xml

# ADB Debug
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.adb.secure=0 \
    ro.secure=0 \
    ro.debuggable=1 \
    persist.logd.logpersistd=logcatd \
    persist.service.adb.enable=1 \
    persist.sys.usb.config=adb \
    ro.logd.size.stats=16M
    
#ANT+ stack
PRODUCT_PACKAGES += \
    AntHalService \
    antradio_app
    
#    libantradio \

# Audio
PRODUCT_PACKAGES += \
    android.hardware.audio@2.0-service \
    android.hardware.soundtrigger@2.0-core:32 \
    android.hardware.audio@2.0-impl \
    android.hardware.audio.effect@2.0-impl \
    android.hardware.audio@4.0-impl \
    android.hardware.audio.effect@4.0-impl \
    libaudio-resampler \
    libaudioroute \
    tinycap \
    tinyplay \
    tinypcminfo \
    tinymix

#    audio.a2dp.default \
#    audio.r_submix.default \
#    audio.usb.default \
#    libqcompostprocbundle \
#    libqcomvisualizer \
#    libqcomvoiceprocessing \
#    libvolumelistener \
#    android.hardware.soundtrigger@2.1-impl \
#    audio.primary.sdm660 \

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/audio/audio_effects.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_effects.xml \
    $(LOCAL_PATH)/configs/audio/audio_output_policy.conf:$(TARGET_COPY_OUT_VENDOR)/etc/audio_output_policy.conf \
    $(LOCAL_PATH)/configs/audio/audio_platform_info.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_platform_info.xml \
    $(LOCAL_PATH)/configs/audio/audio_platform_info_extcodec.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_platform_info_extcodec.xml \
    $(LOCAL_PATH)/configs/audio/audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_configuration.xml \
    $(LOCAL_PATH)/configs/audio/audio/audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/audio_policy_configuration.xml \
    $(LOCAL_PATH)/configs/audio/audio_policy_volumes.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_volumes.xml \
    $(LOCAL_PATH)/configs/audio/audio_tuning_mixer.txt:$(TARGET_COPY_OUT_VENDOR)/etc/audio_tuning_mixer.txt \
    $(LOCAL_PATH)/configs/audio/graphite_ipc_platform_info.xml:$(TARGET_COPY_OUT_VENDOR)/etc/graphite_ipc_platform_info.xml \
    $(LOCAL_PATH)/configs/audio/listen_platform_info.xml:$(TARGET_COPY_OUT_VENDOR)/etc/listen_platform_info.xml \
    $(LOCAL_PATH)/configs/audio/mixer_paths.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths.xml \
    $(LOCAL_PATH)/configs/audio/sound_trigger_mixer_paths.xml:$(TARGET_COPY_OUT_VENDOR)/etc/sound_trigger_mixer_paths.xml \
    $(LOCAL_PATH)/configs/audio/sound_trigger_platform_info.xml:$(TARGET_COPY_OUT_VENDOR)/etc/sound_trigger_platform_info.xml 

PRODUCT_PROPERTY_OVERRIDES += \
    af.fast_track_multiplier=1 \
    vendor.audio_hal.period_size=192 \
    ro.vendor.audio.sdk.fluencetype=fluence \
    persist.vendor.audio.fluence.voicecall=true \
    persist.vendor.audio.fluence.voicerec=true \
    persist.vendor.audio.fluence.speaker=false \
    vendor.audio.tunnel.encode=false \
    persist.vendor.audio.ras.enabled=false \
    vendor.audio.offload.buffer.size.kb=64 \
    vendor.audio.offload.track.enable=true \
    vendor.voice.path.for.pcm.voip=false \
    vendor.audio.offload.multiaac.enable=true \
    vendor.audio.dolby.ds2.enabled=false \
    vendor.audio.dolby.ds2.hardbypass=false \
    vendor.audio.offload.multiple.enabled=false \
    vendor.audio.offload.passthrough=false \
    ro.vendor.audio.sdk.ssr=false \
    vendor.audio.offload.gapless.enabled=true \
    vendor.audio.safx.pbe.enabled=true \
    vendor.audio.parser.ip.buffer.size=262144 \
    vendor.audio.flac.sw.decoder.24bit=true \
    vendor.audio.use.sw.alac.decoder=true \
    vendor.audio.use.sw.ape.decoder=true \
    vendor.audio.hw.aac.encoder=true \
    vendor.audio.noisy.broadcast.delay=600 \
    persist.vendor.audio.hifi.int_codec=true \
    vendor.audio.offload.pstimeout.secs=3 \
    persist.vendor.audio.hw.binder.size_kbyte=1024


# Automotive
PRODUCT_PACKAGES += \
    android.hardware.automotive.vehicle@2.0 \
    android.hardware.automotive.vehicle@2.0-manager-lib \
    android.hardware.automotive.audiocontrol@1.0:64 \
    android.hardware.automotive.evs@1.0:64 \
    vendor.qti.hardware.automotive.vehicle@1.0

# Bluetooth
#PRODUCT_PACKAGES += \
    libbt-vendor
 
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/bluetooth/bt_profile.conf:system/etc/bluetooth/bt_profile.conf \
    $(LOCAL_PATH)/configs/bluetooth/interop_database.conf:system/etc/bluetooth/interop_database.conf 
    
PRODUCT_PROPERTY_OVERRIDES += \
    persist.bt.max.hs.connections=2 \
    persist.bt.max.a2dp.connections=1 \
    persist.bt.enable.multicast=0 \
    persist.vendor.bluetooth.modem_nv_support=true \
    persist.vendor.btstack.enable.splita2dp=true \
    vendor.qcom.bluetooth.soc=cherokee \
    persist.vendor.bt.a2dp_offload_cap=sbc-aptx-aptxhd-aac 
    
# Boot animation
TARGET_SCREEN_HEIGHT := 2160
TARGET_SCREEN_WIDTH := 1080

# Camera
PRODUCT_PACKAGES += \
    android.frameworks.displayservice@1.0:32 \
    camera.device@3.2-impl \
    GoogleCameraMod
    
#    android.hardware.camera.provider@2.4-impl \
#    android.hardware.camera.provider@2.4-service \  
    
# Charger
PRODUCT_PACKAGES += \
    charger_res_images

# Configstore
PRODUCT_PACKAGES += \
    android.hardware.configstore@1.1-service

# Dalvik overrides
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.heapgrowthlimit=256m \
    dalvik.vm.heapstartsize=8m \
    dalvik.vm.heapsize=512m \
    dalvik.vm.heaptargetutilization=0.75 \
    dalvik.vm.heapminfree=512k \
    dalvik.vm.heapmaxfree=8m

# Double tap (D2TW)
PRODUCT_PROPERTY_OVERRIDES += \
    persist.asus.dclick=1 \
    persist.asus.gesture.type=1000000

# Display
PRODUCT_PACKAGES += \
    android.hardware.graphics.allocator@2.0-impl \
    android.hardware.graphics.allocator@2.0-service \
    android.hardware.graphics.composer@2.1-impl \
    android.hardware.graphics.composer@2.1-service \
    android.hardware.graphics.mapper@2.0-impl \
    android.hardware.memtrack@1.0-impl \
    android.hardware.memtrack@1.0-service \
    liboverlay \
    libvulkan \
    libtinyxml \
    libgenlock

# DRM
PRODUCT_PACKAGES += \
    android.hardware.drm@1.0-service \
    android.hardware.drm@1.1-service.clearkey

#    android.hardware.drm@1.0-impl \

PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true

# Enable all system restart_level to relative
PRODUCT_PROPERTY_OVERRIDES += \
    persist.vendor.ssr.restart_level=ALL_ENABLE

# Exclude TOF sensor from InputManager
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/excluded-input-devices.xml:system/etc/excluded-input-devices.xml

# Fingerprint feature
#PRODUCT_PACKAGES += \
    android.hardware.biometrics.fingerprint@2.1
    
#    android.hardware.biometrics.fingerprint@2.1-service \

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.fingerprint.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.fingerprint.xml

# FM
PRODUCT_PACKAGES += \
    FM2 \
    libqcomfm_jni \
    qcom.fmradio

PRODUCT_PACKAGES += \
    android.hardware.broadcastradio@1.0-impl

PRODUCT_PROPERTY_OVERRIDES += \
    vendor.hw.fm.init=0 \
    vendor.fm.a2dp.conc.disabled=false

# FRP
PRODUCT_PROPERTY_OVERRIDES += \
    ro.frp.pst=/dev/block/bootdevice/by-name/frp

# GPS / Location
PRODUCT_PACKAGES += \
    libsensorndkbridge \
    libcurl 

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/gps/apdr.conf:$(TARGET_COPY_OUT_VENDOR)/etc/apdr.conf \
    $(LOCAL_PATH)/configs/gps/flp.conf:$(TARGET_COPY_OUT_VENDOR)/etc/flp.conf \
    $(LOCAL_PATH)/configs/gps/gps.conf:$(TARGET_COPY_OUT_VENDOR)/etc/gps.conf \
    $(LOCAL_PATH)/configs/gps/izat.conf:$(TARGET_COPY_OUT_VENDOR)/etc/izat.conf \
    $(LOCAL_PATH)/configs/gps/lowi.conf:$(TARGET_COPY_OUT_VENDOR)/etc/lowi.conf \
    $(LOCAL_PATH)/configs/gps/sap.conf:$(TARGET_COPY_OUT_VENDOR)/etc/sap.conf \
    $(LOCAL_PATH)/configs/gps/xtwifi.conf:$(TARGET_COPY_OUT_VENDOR)/etc/xtwifi.conf

# Graphics
PRODUCT_PROPERTY_OVERRIDES += \
    ro.opengles.version=196610 \
    ro.sf.lcd_density=440
    
# Health
PRODUCT_PACKAGES += \
    android.hardware.health@2.0-service

# HIDL
PRODUCT_PACKAGES += \
    android.hidl.base@1.0 \
    android.hidl.base@1.0_system \
    android.hidl.manager@1.0 \
    android.hidl.manager@1.0-java

# IMS
PRODUCT_PACKAGES += \
    ims-ext-common

# IPv6
PRODUCT_PACKAGES += \
    ebtables \
    ethertypes \
    libebtc

# IRQ
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/msm_irqbalance.conf:$(TARGET_COPY_OUT_VENDOR)/etc/msm_irqbalance.conf 

# IRSC
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/sec_config:$(TARGET_COPY_OUT_VENDOR)/etc/sec_config

# Keylayout
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/keylayout/gpio-keys.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/gpio-keys.kl
    
PRODUCT_PROPERTY_OVERRIDES += \
    qemu.hw.mainkeys=0

# Keymaster configuration
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.device_id_attestation.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.device_id_attestation.xml

# Lights
PRODUCT_PACKAGES += \
    android.hardware.light@2.0-service.fmw-RG

# LiveDisplay
PRODUCT_PACKAGES += \
    vendor.lineage.livedisplay@2.0-service-sdm

# Manifest replacement for non NFC variant
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/bin/device_check.sh:install/bin/device_check.sh

# Media
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/media/media_codecs.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs.xml \
    $(LOCAL_PATH)/configs/media/media_codecs_performance.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_performance.xml \
    $(LOCAL_PATH)/configs/media/media_codecs_vendor_audio.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_vendor_audio.xml \
    $(LOCAL_PATH)/configs/media/media_profiles_V1_0.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_profiles_V1_0.xml

PRODUCT_COPY_FILES += \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_video.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video_le.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_video_le.xml
 
# Media Extensions
PRODUCT_PACKAGES += \
    libavmediaserviceextensions \
    libmediametrics \
    libregistermsext \
    mediametrics
    
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.media_vol_default=9

# Misc
PRODUCT_PROPERTY_OVERRIDES += \
    keyguard.no_require_sim=true \
    persist.vendor.qcomsysd.enabled=1 \
    ro.additionalbutton.operation=0 \
    sys.autosuspend.timeout=500000 \
    persist.sys.mm.wapn.show=0 \
    persist.asus.thirdparty.app=0 \
    persist.sys.onehandctrl.enable=1

# Netutils
PRODUCT_PACKAGES += \
    android.system.net.netd@1.0 \
    libandroid_net \
    netutils-wrapper-1.0

# NFC
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.nfc.hce.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.nfc.hce.xml \
    frameworks/native/data/etc/android.hardware.nfc.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.nfc.xml \
    frameworks/native/data/etc/com.android.nfc_extras.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/com.android.nfc_extras.xml \
    frameworks/native/data/etc/com.nxp.mifare.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/com.nxp.mifare.xml

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/nfc/libnfc-nci.conf:$(TARGET_COPY_OUT_VENDOR)/etc/libnfc-nci.conf \
    $(LOCAL_PATH)/configs/nfc/libnfc-nxp.conf:$(TARGET_COPY_OUT_VENDOR)/etc/libnfc-nxp.conf \

PRODUCT_PACKAGES += \
    android.hardware.nfc@1.1-service \
    com.android.nfc_extras \
    NfcNci \
    SecureElement \
    Tag 

PRODUCT_PROPERTY_OVERRIDES += \
    ro.hardware.nfc_nci=nqx.default 

# NTP Server
PRODUCT_PROPERTY_OVERRIDES += \
    persist.backup.ntpServer="0.pool.ntp.org"
    
# OMX
PRODUCT_PACKAGES += \
    libstagefright_soft_flacdec 

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay 

# Perf configuration
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/commonresourceconfigs.xml:$(TARGET_COPY_OUT_VENDOR)/etc/perf/commonresourceconfigs.xml \
    $(LOCAL_PATH)/configs/targetconfig.xml:$(TARGET_COPY_OUT_VENDOR)/etc/perf/targetconfig.xml \
    $(LOCAL_PATH)/configs/targetresourceconfigs.xml:$(TARGET_COPY_OUT_VENDOR)/etc/perf/targetresourceconfigs.xml 

# Power
PRODUCT_PACKAGES += \
    android.hardware.power@1.1-service-qti

# Public Libraries
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/public.libraries.txt:$(TARGET_COPY_OUT_VENDOR)/etc/public.libraries.txt

# Ramdisk
PRODUCT_PACKAGES += \
    init.class_main.sh \
    init.qcom.post_boot.sh \
    init.qcom.sensors.sh \
    init.qcom.sh \
    init.qcom.usb.sh \
    init.qti.fm.sh \
    init.qti.ims.sh \
    fix_baseband.sh \
    hack_attest.sh \
    fstab.qcom \
    init.msm.usb.configfs.rc \
    init.qcom.factory.rc \
    init.qcom.rc \
    init.qti.fm.rc \
    init.qcom.usb.rc \
    init.target.rc \
    ueventd.qcom.rc

# RenderScript HAL
PRODUCT_PACKAGES += \
    android.hardware.renderscript@1.0-impl

# Recovery
PRODUCT_PACKAGES += \
    librecovery_updater_X00T

# RIL
PRODUCT_PACKAGES += \
    android.hardware.radio@1.2 \
    android.hardware.radio.config@1.0 \
    android.hardware.radio.deprecated@1.0 \
    android.hardware.secure_element@1.0 \
    libxml2 \
    libprotobuf-cpp-full \
    libprotobuf-cpp-full-rtti
    
#    librmnetctl \

PRODUCT_PROPERTY_OVERRIDES += \
    persist.radio.multisim.config=dsds \
    persist.vendor.radio.apm_sim_not_pwdn=1 \
    persist.vendor.radio.sib16_support=1 \
    persist.vendor.radio.custom_ecc=1 \
    persist.vendor.radio.rat_on=combine \
    ro.com.google.clientidbase=android-asus \
    ro.com.google.clientidbase.ms=android-asus-tpin \
    ro.com.google.rlzbrandcode=ASUP \
    ro.com.google.rlz_ap_whitelist=y0,y5,y6,y7,y9 \
    ro.com.android.dataroaming=false \
    ro.ril.ecclist=112,911  

# QCOM
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/privapp-permissions-qti.xml:system/etc/permissions/privapp-permissions-qti.xml

# QMI
PRODUCT_PACKAGES += \
    libjson

# QTI
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.extension_library=libqti-perfd-client.so 

#QTI performance
PRODUCT_BOOT_JARS += \
    QPerformance \
    UxPerformance

# Seccomp
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/seccomp/mediacodec-seccomp.policy:$(TARGET_COPY_OUT_VENDOR)/etc/seccomp_policy/mediacodec.policy \
    $(LOCAL_PATH)/seccomp/mediaextractor-seccomp.policy:$(TARGET_COPY_OUT_VENDOR)/etc/seccomp_policy/mediaextractor.policy \
    $(LOCAL_PATH)/seccomp/configstore@1.1-seccomp.policy:$(TARGET_COPY_OUT_VENDOR)/etc/seccomp_policy/configstore@1.1.policy

# Sensors
PRODUCT_PACKAGES += \
    android.hardware.sensors@1.0-impl \
    android.hardware.sensors@1.0-service

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/sensors/hals.conf:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/hals.conf 

PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.qti.sdk.sensors.gestures=false \
    ro.vendor.qti.sensors.facing=false \
    ro.vendor.qti.sensors.cmc=false

# SQL
PRODUCT_PACKAGES += \
    sqlite3

# Shutdown
PRODUCT_PROPERTY_OVERRIDES += \
    sys.vendor.shutdown.waittime=500

# System prop for UBWC
PRODUCT_PROPERTY_OVERRIDES += \
    vendor.video.disable.ubwc=1

# Telephony
PRODUCT_PACKAGES += \
    telephony-ext

PRODUCT_BOOT_JARS += \
    telephony-ext

# Tetheroffload
PRODUCT_PACKAGES += \
    ipacm \
    IPACM_cfg.xml \
    libipanat \
    liboffloadhal

# TextClassifier smart selection model files
PRODUCT_PACKAGES += \
    textclassifier.bundle1 \
    textclassifier.ar.model \
    textclassifier.de.model \
    textclassifier.en.model \
    textclassifier.es.model \
    textclassifier.fr.model \
    textclassifier.it.model \
    textclassifier.nl.model \
    textclassifier.pl.model \
    textclassifier.pt.model \
    textclassifier.ru.model \
    textclassifier.tr.model \
    textclassifier.zh.model \
    textclassifier.zh-Hant.model

# Thermal
PRODUCT_PACKAGES += \
    android.hardware.thermal@1.0-impl \
    android.hardware.thermal@1.0-service 

# Touchscreen
PRODUCT_PACKAGES += \
    libtinyxml2

# USB
PRODUCT_PACKAGES += \
	android.hardware.usb@1.0-service.basic
    
# Vibrator
PRODUCT_PACKAGES += \
    android.hardware.vibrator@1.0-impl \
    android.hardware.vibrator@1.0-service

# VNDK-SP:
PRODUCT_PACKAGES += \
    vndk-sp

# WFD
PRODUCT_PACKAGES += \
    libnl

PRODUCT_BOOT_JARS += \
    WfdCommon

# whitelisted app
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/qti_whitelist.xml:system/etc/sysconfig/qti_whitelist.xml 

# WiFi
PRODUCT_PACKAGES += \
    android.hardware.wifi@1.0-service \
    android.hardware.wifi@1.0 \
    android.hardware.wifi@1.1 \
    android.hardware.wifi@1.2 \
    libwifi-hal-qcom \
    libqsap_sdk \
    wificond \
    wpa_supplicant.conf \
    hostapd_cli \
    hostapd \
    wpa_supplicant 

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/wifi/fstman.ini:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/fstman.ini \
    $(LOCAL_PATH)/configs/wifi/p2p_supplicant_overlay.conf:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/p2p_supplicant_overlay.conf \
    $(LOCAL_PATH)/configs/wifi/wpa_supplicant_overlay.conf:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/wpa_supplicant_overlay.conf \
    $(LOCAL_PATH)/configs/wifi/WCNSS_qcom_cfg.ini:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/WCNSS_qcom_cfg.ini \
    $(LOCAL_PATH)/configs/hostapd/hostapd.accept:system/etc/hostapd/hostapd.accept \
    $(LOCAL_PATH)/configs/hostapd/hostapd.deny:system/etc/hostapd/hostapd.deny \
    $(LOCAL_PATH)/configs/hostapd/hostapd_default.conf:system/etc/hostapd/hostapd_default.conf 

$(call inherit-product, vendor/asus/X00T/X00T-vendor.mk)
