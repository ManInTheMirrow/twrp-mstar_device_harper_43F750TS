#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_minimal.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)

# Installs gsi keys into ramdisk, to boot a developer GSI with verified boot.
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# Inherit some common TWRP stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from mt5867 device
$(call inherit-product, device/mediatek/mt5867/device.mk)

PRODUCT_DEVICE := mt5867
PRODUCT_NAME := twrp_mt5867
PRODUCT_BRAND := MediaTek
PRODUCT_MODEL := mt5867
PRODUCT_MANUFACTURER := MediaTek

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=mt5867 \
	PRODUCT_NAME=mt5867
    PRIVATE_BUILD_DESC="mt5867_eu-user 11 RP1A.200720.011 1408108023 dev-keys"

BUILD_FINGERPRINT := HARPER/43F750TS.HV430FHB-F90/43F750TS.HV430FHB-F90:11/RP1A.200720.011/1408108023:user/dev-keys