# Boot animation
TARGET_SCREEN_HEIGHT := 2880
TARGET_SCREEN_WIDTH := 1440

# Inherit some common RR stuff.
$(call inherit-product, vendor/rr/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/google/taimen/aosp_taimen.mk)

-include device/google/wahoo/device-lineage.mk

## Device identifier. This must come after all inclusions
PRODUCT_NAME := rr_taimen
PRODUCT_DEVICE := taimen
PRODUCT_BRAND := Google
PRODUCT_MODEL := Pixel 2 XL
PRODUCT_MANUFACTURER := Google

# RR Device Maintainers
PRODUCT_BUILD_PROP_OVERRIDES += \
    DEVICE_MAINTAINERS="deedwar"

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=taimen \
    BUILD_FINGERPRINT=google/taimen/taimen:8.1.0/OPM2.171026.006.C1/4769658:user/release-keys \
    PRIVATE_BUILD_DESC="taimen-user 8.1.0 OPM2.171026.006.C1 4769658 release-keys"

$(call inherit-product-if-exists, vendor/google/taimen/taimen-vendor.mk)
