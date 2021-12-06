
# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, build/make/target/product/product_launched_with_o_mr1.mk)

# Inherit some common Xtended stuff
IS_PHONE := true
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_BOOT_ANIMATION_RES := 1080
$(call inherit-product, vendor/google-customization/config.mk)
$(call inherit-product, vendor/xtended/config/common_full_phone.mk)

XTENDED_BUILD_MAINTAINER := SonicBSV

# Inherit from X00T device
$(call inherit-product,  device/asus/X00TD/device.mk)

PRODUCT_BRAND := asus
PRODUCT_DEVICE := X00TD
PRODUCT_MANUFACTURER := asus
PRODUCT_NAME := xtended_X00TD
PRODUCT_MODEL := ZenFone Max Pro M1

PRODUCT_GMS_CLIENTID_BASE := android-asus

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="sdm660_64-user 10 QKQ1 72 release-keys"
    
# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := "asus/WW_X00TD/ASUS_X00T_2:9/QKQ1/17.2017.2012.438-20201203:user/release-keys"

PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.build.fingerprint=$(BUILD_FINGERPRINT)

#PRODUCT_BUILD_PROP_OVERRIDES += \
#    PRIVATE_BUILD_DESC="redfin-user 11 RQ3A.21101.001.A1 7641976 release-keys" \
#    DEVICE_MAINTAINERS="SonicBSV"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
#BUILD_FINGERPRINT := "google/redfin/redfin:11/RQ3A.21101.001.A1/7641976:user/release-keys"
