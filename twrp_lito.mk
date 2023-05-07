#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from lito device
$(call inherit-product, device/qualcomm/lito/device.mk)

PRODUCT_DEVICE := lito
PRODUCT_NAME := twrp_lito
PRODUCT_BRAND := qti
PRODUCT_MODEL := Lito for arm64
PRODUCT_MANUFACTURER := qualcomm

PRODUCT_GMS_CLIENTID_BASE := android-qualcomm

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="lito-user 12 RKQ1.211119.001 1677729784975 release-keys"

BUILD_FINGERPRINT := qti/lito/lito:12/RKQ1.211119.001/1677729784975:user/release-keys
