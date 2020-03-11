PRODUCT_COMPATIBLE_PROPERTY_OVERRIDE:=true

# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxhdpi
PRODUCT_AAPT_PREBUILT_DPI := xxhdpi

# default is nosdcard, S/W button enabled in resource
PRODUCT_CHARACTERISTICS := nosdcard

# Enable updating of APEXes
#$(call inherit-product, $(SRC_TARGET_DIR)/product/updatable_apex.mk)

# skip boot jars check
SKIP_BOOT_JARS_CHECK := true

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

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
    frameworks/native/data/etc/android.hardware.telephony.ims.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.telephony.ims.xml \
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
    frameworks/native/data/etc/android.software.ipsec_tunnels.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.ipsec_tunnels.xml \
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

# Audio
PRODUCT_PACKAGES += \
    android.hardware.audio@2.0-service \
    android.hardware.audio@2.0-impl \
    android.hardware.audio.effect@2.0-impl \
    android.hardware.audio.common@2.0-util \
    android.hardware.audio.effect@2.0 \
    android.hardware.audio@2.0 \
    android.hardware.soundtrigger@2.1-impl \
    android.hardware.audio@4.0 \
    android.hardware.audio.common@4.0 \
    android.hardware.audio.common@4.0-util \
    android.hardware.audio@4.0-impl \
    android.hardware.audio.effect@4.0 \
    android.hardware.audio.effect@4.0-impl \
    android.hardware.audio@5.0 \
    android.hardware.audio.common@5.0 \
    android.hardware.audio.common@5.0-util \
    android.hardware.audio@5.0-impl \
    android.hardware.audio.effect@5.0 \
    android.hardware.audio.effect@5.0-impl \
    audio.a2dp.default \
    audio.bluetooth.default \
    audio.r_submix.default \
    audio.usb.default \
    audio.primary.sdm660 \
    libsndmonitor \
    libcomprcapture \
    libssrec \
    libhdmiedid \
    libspkrprot \
    libcirrusspkrprot \
    liba2dpoffload \
    libbatterylistener \
    libhfp \
    libexthwplugin \
    libqcompostprocbundle \
    libqcomvisualizer \
    libqcomvoiceprocessing \
    libwebrtc_audio_preprocessing \
    libvolumelistener \
    libaudio-resampler \
    libalsautils \
    libavservices_minijail_vendor \
    tinycap \
    tinyplay \
    tinypcminfo \
    tinymix

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/audio/audio_effects.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_effects.xml \
    $(LOCAL_PATH)/configs/audio/audio_configs.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_configs.xml \
    $(LOCAL_PATH)/configs/audio/audio_output_policy.conf:$(TARGET_COPY_OUT_VENDOR)/etc/audio_output_policy.conf \
    $(LOCAL_PATH)/configs/audio/audio_platform_info_intcodec.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_platform_info_intcodec.xml \
    $(LOCAL_PATH)/configs/audio/audio/audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/audio_policy_configuration.xml \
    $(LOCAL_PATH)/configs/audio/audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_configuration.xml \
    $(LOCAL_PATH)/configs/audio/audio_tuning_mixer.txt:$(TARGET_COPY_OUT_VENDOR)/etc/audio_tuning_mixer.txt \
    $(LOCAL_PATH)/configs/audio/graphite_ipc_platform_info.xml:$(TARGET_COPY_OUT_VENDOR)/etc/graphite_ipc_platform_info.xml \
    $(LOCAL_PATH)/configs/audio/listen_platform_info.xml:$(TARGET_COPY_OUT_VENDOR)/etc/listen_platform_info.xml \
    $(LOCAL_PATH)/configs/audio/mixer_paths.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths.xml \
    $(LOCAL_PATH)/configs/audio/sound_trigger_mixer_paths.xml:$(TARGET_COPY_OUT_VENDOR)/etc/sound_trigger_mixer_paths.xml \
    $(LOCAL_PATH)/configs/audio/sound_trigger_platform_info.xml:$(TARGET_COPY_OUT_VENDOR)/etc/sound_trigger_platform_info.xml \
    $(TOPDIR)frameworks/av/services/audiopolicy/config/a2dp_in_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/a2dp_in_audio_policy_configuration.xml \
    $(TOPDIR)frameworks/av/services/audiopolicy/config/a2dp_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/a2dp_audio_policy_configuration.xml \
    $(TOPDIR)frameworks/av/services/audiopolicy/config/bluetooth_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/bluetooth_audio_policy_configuration.xml \
    $(TOPDIR)frameworks/av/services/audiopolicy/config/default_volume_tables.xml:$(TARGET_COPY_OUT_VENDOR)/etc/default_volume_tables.xml \
    $(TOPDIR)frameworks/av/services/audiopolicy/config/audio_policy_volumes.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_volumes.xml \
    $(TOPDIR)frameworks/av/services/audiopolicy/config/r_submix_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/r_submix_audio_policy_configuration.xml \
    $(TOPDIR)frameworks/av/services/audiopolicy/config/usb_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/usb_audio_policy_configuration.xml

PRODUCT_PROPERTY_OVERRIDES += \
    af.fast_track_multiplier=1 \
    audio.deep_buffer.media=true \
    audio.offload.min.duration.secs=30 \
    audio.offload.video=true \
    audio.sys.noisy.broadcast.delay=600 \
    audio.sys.offload.pstimeout.secs=3 \
    persist.vendor.audio.fluence.speaker=false \
    persist.vendor.audio.fluence.voicecall=true \
    persist.vendor.audio.fluence.voicerec=true \
    persist.vendor.audio.hifi.int_codec=true \
    persist.vendor.audio.hw.binder.size_kbyte=1024 \
    persist.vendor.audio.ras.enabled=false \
    ro.af.client_heap_size_kbyte=7168 \
    ro.vendor.audio.sdk.fluencetype=fluence \
    ro.vendor.audio.sdk.ssr=false \
    ro.vendor.audio.sos=true \
    vendor.audio.dolby.ds2.enabled=false \
    vendor.audio.dolby.ds2.hardbypass=false \
    vendor.audio.feature.a2dp_offload.enable=true \
    vendor.audio.feature.afe_proxy.enable=true \
    vendor.audio.feature.anc_headset.enable=true \
    vendor.audio.feature.audiozoom.enable=false \
    vendor.audio.feature.battery_listener.enable=false \
    vendor.audio.feature.compr_cap.enable=false \
    vendor.audio.feature.compress_in.enable=false \
    vendor.audio.feature.compress_meta_data.enable=true \
    vendor.audio.feature.compr_voip.enable=true \
    vendor.audio.feature.concurrent_capture.enable=false \
    vendor.audio.feature.custom_stereo.enable=true \
    vendor.audio.feature.deepbuffer_as_primary.enable=false \
    vendor.audio.feature.display_port.enable=true \
    vendor.audio.feature.dsm_feedback.enable=false \
    vendor.audio.feature.dynamic_ecns.enable=false \
    vendor.audio.feature.external_dsp.enable=false \
    vendor.audio.feature.external_speaker.enable=false \
    vendor.audio.feature.external_speaker_tfa.enable=false \
    vendor.audio.feature.ext_hw_plugin.enable=false \
    vendor.audio.feature.fluence.enable=true \
    vendor.audio.feature.fm.enable=false \
    vendor.audio.feature.hdmi_edid.enable=true \
    vendor.audio.feature.hdmi_passthrough.enable=true \
    vendor.audio.feature.hfp.enable=true \
    vendor.audio.feature.hifi_audio.enable=true \
    vendor.audio.feature.hwdep_cal.enable=false \
    vendor.audio.feature.incall_music.enable=true \
    vendor.audio.feature.keep_alive.enable=false \
    vendor.audio.feature.kpi_optimize.enable=true \
    vendor.audio.feature.maxx_audio.enable=false \
    vendor.audio.feature.multi_voice_session.enable=true \
    vendor.audio.feature.ras.enable=true \
    vendor.audio.feature.record_play_concurency.enable=false \
    vendor.audio.feature.snd_mon.enable=true \
    vendor.audio.feature.spkr_prot.enable=false \
    vendor.audio.feature.src_trkn.enable=true \
    vendor.audio.feature.ssrec.enable=true \
    vendor.audio.feature.usb_offload_burst_mode.enable=false \
    vendor.audio.feature.usb_offload.enable=true \
    vendor.audio.feature.usb_offload_sidetone_volume.enable=false \
    vendor.audio.feature.vbat.enable=true \
    vendor.audio.feature.wsa.enable=false \
    vendor.audio.flac.sw.decoder.24bit=true \
    vendor.audio_hal.period_size=192 \
    vendor.audio.hw.aac.encoder=true \
    vendor.audio.offload.buffer.size.kb=64 \
    vendor.audio.offload.gapless.enabled=true \
    vendor.audio.offload.multiaac.enable=true \
    vendor.audio.offload.multiple.enabled=false \
    vendor.audio.offload.passthrough=false \
    vendor.audio.offload.track.enable=true \
    vendor.audio.parser.ip.buffer.size=262144 \
    vendor.audio.safx.pbe.enabled=false \
    vendor.audio.spkr_prot.tx.sampling_rate=48000 \
    vendor.audio.tunnel.encode=false \
    vendor.audio.use.sw.alac.decoder=true \
    vendor.audio.use.sw.ape.decoder=true \
    vendor.audio.volume.headset.gain.depcal=true \
    vendor.voice.path.for.pcm.voip=true

# ASUS
PRODUCT_PROPERTY_OVERRIDES += \
    ro.asus.project.name=ZB601KL

# Atrace
PRODUCT_PACKAGES += \
    android.hardware.atrace@1.0-service

# Automotive
PRODUCT_PACKAGES += \
    android.hardware.automotive.vehicle@2.0 \
    android.hardware.automotive.vehicle@2.0-manager-lib \
    android.hardware.automotive.audiocontrol@1.0:64 \
    android.hardware.automotive.evs@1.0:64 \
    vendor.qti.hardware.automotive.vehicle@1.0

# Biometrics
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.fingerprint.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.fingerprint.xml

# Bluetooth
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/bluetooth/bt_profile.conf:system/etc/bluetooth/bt_profile.conf \
    $(LOCAL_PATH)/configs/bluetooth/bt_configstore.conf:system/etc/bluetooth/bt_configstore.conf \
    $(LOCAL_PATH)/configs/bluetooth/interop_database.conf:system/etc/bluetooth/interop_database.conf 
    
PRODUCT_PROPERTY_OVERRIDES += \
    vendor.qcom.bluetooth.soc=cherokee \
    persist.vendor.bt.aac_frm_ctl.enabled=true \
    persist.bluetooth.a2dp_offload.disabled=false \
    persist.vendor.qcom.bluetooth.enable.splita2dp=true \
    ro.vendor.bluetooth.wipower=false \
    persist.vendor.bt.a2dp_offload_cap=sbc-aptx-aptxhd-aac \
    persist.vendor.qcom.bluetooth.a2dp_offload_cap=sbc-aptx-aptxhd-aac-ldac
    
    
# Boot animation
    TARGET_SCREEN_HEIGHT := 2160
    TARGET_SCREEN_WIDTH := 1080

# Camera
PRODUCT_PACKAGES += \
    android.hardware.camera.provider@2.4-impl \
    android.hardware.camera.provider@2.4-service \
    android.frameworks.displayservice@1.0:32 \
    android.frameworks.cameraservice.common@2.0 \
    android.frameworks.cameraservice.device@2.0 \
    android.frameworks.cameraservice.service@2.0 \
    camera.device@3.2-impl \
    GoogleCameraMod
   
PRODUCT_PROPERTY_OVERRIDES += \
   vendor.camera.aux.packagelist=org.codeaurora.snapcam,org.lineageos.snap \
   vendor.camera.hal1.packagelist=com.whatsapp,com.skype.raider,com.google.android.talk,ru.sberbankmobile \
   persist.vendor.camera.expose.aux=1 \
   persist.vendor.camera.mpo.disabled=1 \
   vendor.vidc.enc.disable.pq=true \
   vendor.vidc.dec.enable.downscalar=0
   
# Charger
PRODUCT_PACKAGES += \
    asus_charger \
    asus_charger_res_images

# Codec2 modules
PRODUCT_PACKAGES += \
    libsfplugin_ccodec \
    libcodec2_vndk

PRODUCT_PROPERTY_OVERRIDES += \
    debug.media.codec2=2

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

# Doze
PRODUCT_PACKAGES += \
    AsusDoze

# Display
PRODUCT_PACKAGES += \
    android.hardware.graphics.allocator@2.0-impl \
    android.hardware.graphics.allocator@2.0-service \
    android.hardware.graphics.composer@2.1-impl \
    android.hardware.graphics.composer@2.1-service \
    android.hardware.graphics.mapper@2.0-impl \
    android.hardware.memtrack@1.0-impl \
    android.hardware.memtrack@1.0-service \
    libgui_vendor:32 \
    liboverlay \
    libvulkan \
    libtinyxml \
    libgenlock
    
PRODUCT_PROPERTY_OVERRIDES += \
    ro.hardware.vulkan=adreno \
    ro.hardware.egl=adreno

# DPM
PRODUCT_PROPERTY_OVERRIDES += \
    persist.vendor.dpm.feature=11
    
# DRM
PRODUCT_PACKAGES += \
    android.hardware.drm@1.0-service \
    android.hardware.drm@1.2-service.clearkey \
    android.hardware.drm@1.0-impl
    
PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true

# Enable all system restart_level to relative
PRODUCT_PROPERTY_OVERRIDES += \
    persist.vendor.ssr.restart_level=ALL_ENABLE

# Exclude TOF sensor from InputManager
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/excluded-input-devices.xml:system/etc/excluded-input-devices.xml

# FM
#PRODUCT_PACKAGES += \
    FM2 \
    qcom.fmradio \
    libqcomfm_jni

PRODUCT_PROPERTY_OVERRIDES += \
    vendor.hw.fm.init=0

# FRP
PRODUCT_PROPERTY_OVERRIDES += \
    ro.frp.pst=/dev/block/bootdevice/by-name/frp

# GPS / Location
PRODUCT_PACKAGES += \
    libcurl \
    libsensorndkbridge 

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/gps/apdr.conf:$(TARGET_COPY_OUT_VENDOR)/etc/apdr.conf \
    $(LOCAL_PATH)/configs/gps/flp.conf:$(TARGET_COPY_OUT_VENDOR)/etc/flp.conf \
    $(LOCAL_PATH)/configs/gps/gps.conf:$(TARGET_COPY_OUT_VENDOR)/etc/gps.conf \
    $(LOCAL_PATH)/configs/gps/izat.conf:$(TARGET_COPY_OUT_VENDOR)/etc/izat.conf \
    $(LOCAL_PATH)/configs/gps/lowi.conf:$(TARGET_COPY_OUT_VENDOR)/etc/lowi.conf \
    $(LOCAL_PATH)/configs/gps/sap.conf:$(TARGET_COPY_OUT_VENDOR)/etc/sap.conf \
    $(LOCAL_PATH)/configs/gps/xtwifi.conf:$(TARGET_COPY_OUT_VENDOR)/etc/xtwifi.conf \
    $(LOCAL_PATH)/configs/gnss/android.hardware.gnss@2.0-service-qti.xml:$(TARGET_COPY_OUT_VENDOR)/etc/vintf/manifest/android.hardware.gnss@2.0-service-qti.xml \
    $(LOCAL_PATH)/configs/gnss/vendor.qti.gnss@3.0-service.xml:$(TARGET_COPY_OUT_VENDOR)/etc/vintf/manifest/vendor.qti.gnss@3.0-service.xml
    
# Graphics
PRODUCT_PROPERTY_OVERRIDES += \
    ro.opengles.version=196610 \
    ro.sf.lcd_density=420
    
# Health
PRODUCT_PACKAGES += \
    android.hardware.health@2.0-service

# HIDL
PRODUCT_PACKAGES += \
    android.hidl.base@1.0 \
    android.hidl.base@1.0_system

# IMS
PRODUCT_PACKAGES += \
    ims-ext-common \
    ims_ext_common.xml \
    qti-telephony-hidl-wrapper \
    qti_telephony_hidl_wrapper.xml \
    qti-telephony-utils \
    qti_telephony_utils.xml

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
    $(LOCAL_PATH)/configs/keylayout/gpio-keys.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/gpio-keys.kl \
    $(LOCAL_PATH)/configs/keylayout/gxfp_input.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/gxfp_input.kl \
    $(LOCAL_PATH)/configs/keylayout/cdfinger_input.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/cdfinger_input.kl
    
PRODUCT_PROPERTY_OVERRIDES += \
    qemu.hw.mainkeys=0

# Keymaster configuration
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.device_id_attestation.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.device_id_attestation.xml

PRODUCT_PROPERTY_OVERRIDES += \
    ro.hardware.keystore_desede=true

# Lights
PRODUCT_PACKAGES += \
    android.hardware.light@2.0-service.asus_X00T

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
 
PRODUCT_PROPERTY_OVERRIDES += \
    debug.stagefright.omx_default_rank.sw-audio=1 \
    debug.stagefright.omx_default_rank=0
 
# Media Extensions
PRODUCT_PACKAGES += \
    libavmediaserviceextensions \
    libmediametrics \
    libopus \
    libmediaplayerservice \
    libregistermsext \
    mediametrics

# Misc
PRODUCT_PACKAGES += \
    libbrillo-binder:64 \
    libbrillo-stream:64 \
    libbrillo:64 \
    libbrotli:64 \
    libyuv

PRODUCT_PROPERTY_OVERRIDES += \
    keyguard.no_require_sim=true \
    persist.vendor.qcomsysd.enabled=1

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
    $(LOCAL_PATH)/configs/nfc/libnfc-nxp.conf:$(TARGET_COPY_OUT_VENDOR)/etc/libnfc-nxp.conf

PRODUCT_PACKAGES += \
    android.hardware.nfc@1.2-service \
    com.android.nfc_extras \
    NfcNci \
    Tag 

PRODUCT_PROPERTY_OVERRIDES += \
    ro.hardware.nfc_nci=nqx.default 

# NFC - Secure Element
PRODUCT_PACKAGES += \
    android.hardware.secure_element@1.0 \
    SecureElement

# NTP Server
PRODUCT_PROPERTY_OVERRIDES += \
    persist.backup.ntpServer="0.pool.ntp.org"

# ONS
PRODUCT_PACKAGES += \
    ONS

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay

# Perf configuration
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/commonresourceconfigs.xml:$(TARGET_COPY_OUT_VENDOR)/etc/perf/commonresourceconfigs.xml \
    $(LOCAL_PATH)/configs/targetconfig.xml:$(TARGET_COPY_OUT_VENDOR)/etc/perf/targetconfig.xml \
    $(LOCAL_PATH)/configs/perfconfigstore.xml:$(TARGET_COPY_OUT_VENDOR)/etc/perf/perfconfigstore.xml \
    $(LOCAL_PATH)/configs/targetresourceconfigs.xml:$(TARGET_COPY_OUT_VENDOR)/etc/perf/targetresourceconfigs.xml 

# Power
PRODUCT_PACKAGES += \
    android.hardware.power@1.2-service-qti

PRODUCT_PROPERTY_OVERRIDES += \
    vendor.power.pasr.enabled=true

# Pre-opt SystemUI
PRODUCT_DEXPREOPT_SPEED_APPS += \
    SystemUI

# Public Libraries
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/public.libraries.txt:$(TARGET_COPY_OUT_VENDOR)/etc/public.libraries.txt

# Ramdisk
PRODUCT_PACKAGES += \
    init.btmac.sh \
    init.class_main.sh \
    init.qcom.post_boot.sh \
    init.qcom.sensors.sh \
    init.qcom.sh \
    init.qcom.usb.sh \
    init.qti.ims.sh \
    hack_attest.sh \
    fix_baseband.sh \
    fstab.qcom \
    init.msm.usb.configfs.rc \
    init.recovery.qcom.rc \
    init.qcom.rc \
    init.qcom.usb.rc \
    init.target.rc \
    ueventd.qcom.rc

#    init.qti.fm.sh \
#    init.qti.fm.rc \

# Recovery
PRODUCT_PACKAGES += \
    librecovery_updater_X00T

# RIL
PRODUCT_PACKAGES += \
    android.hardware.radio@1.4 \
    android.hardware.radio.config@1.1 \
    android.hardware.radio.deprecated@1.0 \
    libxml2 \
    libprotobuf-cpp-full

PRODUCT_PROPERTY_OVERRIDES += \
    persist.radio.multisim.config=dsds \
    persist.vendor.radio.apm_sim_not_pwdn=1 \
    persist.vendor.radio.sib16_support=1 \
    persist.vendor.radio.custom_ecc=1 \
    persist.vendor.radio.rat_on=combine \
    persist.vendor.radio.procedure_bytes=SKIP \
    ro.telephony.iwlan_operation_mode=legacy \
    rild.libpath=/system/vendor/lib64/libril-qc-hal-qmi.so \
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
    libqti_vndfwk_detect \
    libvndfwk_detect_jni.qti \
    libqti_vndfwk_detect.vendor \
    libvndfwk_detect_jni.qti.vendor \
    libjson

# QNS
PRODUCT_PACKAGES += \
    libstdc++.vendor

# QTI
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.extension_library=libqti-perfd-client.so 

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
    android.hardware.thermal@2.0-service.mock 

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

# Vendor seccomp policy files for media components:
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/seccomp_policy/mediacodec.policy:$(TARGET_COPY_OUT_VENDOR)/etc/seccomp_policy/mediacodec.policy \
    $(LOCAL_PATH)/seccomp_policy/configstore@1.1.policy:$(TARGET_COPY_OUT_VENDOR)/etc/seccomp_policy/configstore@1.1.policy \
    $(LOCAL_PATH)/seccomp_policy/mediaextractor.policy:$(TARGET_COPY_OUT_VENDOR)/etc/seccomp_policy/mediaextractor.policy

# VNDK-SP:
PRODUCT_PACKAGES += \
    vndk_package

# VR
PRODUCT_PACKAGES += \
    android.hardware.vr@1.0-impl \
    android.hardware.vr@1.0-service \
    vr.sdm660

# WFD
PRODUCT_PACKAGES += \
    libnl

PRODUCT_BOOT_JARS += \
    WfdCommon

# whitelisted app
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/qti_whitelist.xml:system/etc/sysconfig/qti_whitelist.xml 

# Wallpapers
PRODUCT_PACKAGES += \
    PixelLiveWallpaperPrebuilt \
    WallpapersBReel2019 \
    libgdx \
    NexusWallpapersStubPrebuilt2019 \
    MicropaperPrebuilt

# WiFi
PRODUCT_PACKAGES += \
    libwifi-hal-qcom \
    libqsap_sdk \
    wificond \
    wpa_supplicant \
    wpa_supplicant.conf \
    wpa_cli \
    hostapd \
    hostapd_cli

#    android.hardware.wifi@1.0-service \

PRODUCT_PROPERTY_OVERRIDES += \
    persist.data.iwlan.enable=true

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/wifi/aoa_cldb_falcon.bin:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/aoa_cldb_falcon.bin \
    $(LOCAL_PATH)/configs/wifi/aoa_cldb_swl14.bin:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/aoa_cldb_swl14.bin \
    $(LOCAL_PATH)/configs/wifi/fstman.ini:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/fstman.ini \
    $(LOCAL_PATH)/configs/wifi/p2p_supplicant_overlay.conf:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/p2p_supplicant_overlay.conf \
    $(LOCAL_PATH)/configs/wifi/wpa_supplicant_overlay.conf:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/wpa_supplicant_overlay.conf \
    $(LOCAL_PATH)/configs/wifi/WCNSS_qcom_cfg.ini:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/WCNSS_qcom_cfg.ini \
    $(LOCAL_PATH)/configs/hostapd/hostapd.accept:$(TARGET_COPY_OUT_VENDOR)/etc/hostapd/hostapd.accept \
    $(LOCAL_PATH)/configs/hostapd/hostapd.deny:$(TARGET_COPY_OUT_VENDOR)/etc/hostapd/hostapd.deny \
    $(LOCAL_PATH)/configs/hostapd/hostapd_default.conf:$(TARGET_COPY_OUT_VENDOR)/etc/hostapd/hostapd_default.conf 

# ZenParts
PRODUCT_PACKAGES += \
    ZenParts

$(call inherit-product, vendor/asus/X00T/X00T-vendor.mk)
