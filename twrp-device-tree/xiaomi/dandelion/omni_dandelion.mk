#
# Copyright (C) 2025 The Android Open Source Project
# Copyright (C) 2025 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from dandelion device
$(call inherit-product, device/xiaomi/dandelion/device.mk)

PRODUCT_DEVICE := dandelion
PRODUCT_NAME := omni_dandelion
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := M2006C3LG
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="dandelion-user 11 RP1A.200720.011 V12.5.7.0.RCDRUXM release-keys"

BUILD_FINGERPRINT := Redmi/dandelion_ru/dandelion:11/RP1A.200720.011/V12.5.7.0.RCDRUXM:user/release-keys
