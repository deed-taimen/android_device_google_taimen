# Copyright (C) 2017 The Dirty Unicorns Project
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
# Boot animation
TARGET_SCREEN_HEIGHT := 2880
TARGET_SCREEN_WIDTH := 1440
TARGET_BOOTANIMATION_HALF_RES := true

# Include common configuration
include vendor/havoc/config/common.mk

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Inherit AOSP device configuration for  taimen
$(call inherit-product, device/google/taimen/aosp_taimen.mk)

export TARGET_DEVICE := taimen

# Override AOSP build properties
PRODUCT_NAME := havoc_taimen
PRODUCT_DEVICE := taimen
PRODUCT_BRAND := Google
PRODUCT_MODEL := Pixel 2 XL
PRODUCT_MANUFACTURER := Google

# Device Fingerprint
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=taimen \
    BUILD_FINGERPRINT=google/taimen/taimen:9/PQ1A.181205.002/5086253:user/release-keys \
    PRIVATE_BUILD_DESC="taimen-user 9 PQ1A.181205.002 5086253 release-keys"

$(call inherit-product-if-exists, vendor/google/taimen/taimen-vendor.mk)
$(call inherit-product-if-exists, vendor/googleapps/googleapps.mk)
