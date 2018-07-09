# Boot animation
TARGET_SCREEN_HEIGHT := 2880
TARGET_SCREEN_WIDTH := 1440

# Inherit some common Xtended stuff.
$(call inherit-product, vendor/xtended/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/google/taimen/aosp_taimen.mk)

-include device/google/wahoo/device-lineage.mk

## Device identifier. This must come after all inclusions
PRODUCT_NAME := xtended_taimen
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 2 XL
TARGET_MANUFACTURER := LG
PRODUCT_RESTRICT_VENDOR_FILES := false

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=taimen \
    BUILD_FINGERPRINT=google/taimen/taimen:8.1.0/OPM2.171026.006.H1/4833802:user/release-keys \
    PRIVATE_BUILD_DESC="taimen-user 8.1.0 OPM2.171026.006.H1 4833802 release-keys"

PRODUCT_PROPERTY_OVERRIDES += \
    DEVICE_MAINTAINERS="deedwar"

$(call inherit-product-if-exists, vendor/google/taimen/taimen-vendor.mk)
$(call inherit-product-if-exists, vendor/pixelgapps/pixel-gapps.mk)
