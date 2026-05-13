#
# Copyright (C) 2026 The Android Open Source Project
# Copyright (C) 2026 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from twrp
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from uke device
$(call inherit-product, device/xiaomi/uke/device.mk)

PRODUCT_DEVICE := uke
PRODUCT_NAME := twrp_uke
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := 2410CRP4CG
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="uke_global-user 14 UKQ1.240624.001 OS3.0.8.0.WOZMIXM release-keys"

BUILD_FINGERPRINT := Xiaomi/uke_global/uke:14/UKQ1.240624.001/OS3.0.8.0.WOZMIXM:user/release-keys
