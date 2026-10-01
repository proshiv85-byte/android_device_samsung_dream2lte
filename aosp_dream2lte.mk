#
# Copyright (C) 2019 The LineageOS Project
# Copyright (C) 2026 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Plain AOSP phone product for the Samsung Galaxy S8+ (Exynos, SM-G955F).
# Composed like aosp_arm64, minus GSI/A-B specifics.

$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/generic_system.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/handheld_system_ext.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/telephony_system_ext.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_product.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/handheld_vendor.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/telephony_vendor.mk)

# Inherit from dream2lte device
$(call inherit-product, device/samsung/dream2lte/device.mk)

PRODUCT_PACKAGES += \
    FrameworksResDeviceDream2lte

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := dream2lte
PRODUCT_NAME := aosp_dream2lte
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-G955F
PRODUCT_MANUFACTURER := samsung
