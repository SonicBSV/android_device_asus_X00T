
# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o_mr1.mk)

# Inherit some common Syberia stuff.
export SKIP_ABI_CHECKS=true
TARGET_INCLUDE_WIFI_EXT := true
TARGET_BOOT_ANIMATION_RES := 1080
$(call inherit-product, vendor/syberia/config/common_full_phone.mk)

# Customization
include vendor/google/customization/config.mk

# Inherit from X00T device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := asus
PRODUCT_DEVICE := X00T
PRODUCT_MANUFACTURER := asus
PRODUCT_NAME := syberia_X00T
PRODUCT_MODEL := ZenFone Max Pro M1

PRODUCT_GMS_CLIENTID_BASE := android-asus

TARGET_VENDOR := asus
TARGET_VENDOR_PRODUCT_NAME := X00T

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="sdm660_64-user 10 QKQ1 14 release-keys" \
    DEVICE_MAINTAINERS="SonicBSV"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := asus/WW_X00TD/ASUS_X00T_2:10/QKQ1/17.2017.1911.407-20191223:user/release-keys



