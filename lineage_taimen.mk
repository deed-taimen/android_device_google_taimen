# Boot animation
TARGET_SCREEN_HEIGHT := 2880
TARGET_SCREEN_WIDTH := 1440

# Inherit Lineage GSM telephony parts
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/google/taimen/aosp_taimen.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := lineage_taimen
PRODUCT_BRAND := Google
PRODUCT_MODEL := Pixel 2 XL
TARGET_MANUFACTURER := LGE
PRODUCT_RESTRICT_VENDOR_FILES := false

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=taimen \
    BUILD_FINGERPRINT=google/taimen/taimen:9/PPR2.180905.005/4928864:user/release-keys \
    PRIVATE_BUILD_DESC="taimen-user 9 PPR2.180905.005 4928864 release-keys"

$(call inherit-product-if-exists, vendor/google/taimen/taimen-vendor.mk)
$(call inherit-product-if-exists, vendor/googleapps/googleapps.mk)
