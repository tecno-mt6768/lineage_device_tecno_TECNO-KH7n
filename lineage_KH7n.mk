#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from KH7n device
$(call inherit-product, device/TECNO/KH7n/device.mk)

PRODUCT_BRAND := TECNO
PRODUCT_DEVICE := KH7n
PRODUCT_NAME := lineage_KH7n
PRODUCT_MODEL := Tecno Spark 9 Pro
PRODUCT_MANUFACTURER := Tecno Mobility Limited

# GMS - Google service
WITH_GMS := true
TARGET_CORE_GMS := true
TARGET_CORE_GMS_EXTRAS := true
PRODUCT_GMS_CLIENTID_BASE := android-tecno

TARGET_VENDOR := TECNO
TARGET_VENDOR_PRODUCT_NAME := KH7n

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=TECNO-KH7n \
    PRODUCT_NAME=KH7n-OP \
    RISING_CHIPSET="Helio G85" \
    PRIVATE_BUILD_DESC="sys_tssi_64_tecno-user 12 SP1A.210812.016 585038 release-keys"

BUILD_FINGERPRINT := TECNO/KH7n-OP/TECNO-KH7n:12/SP1A.210812.016/240416V962:user/release-keys

# Rising Stuff
RISING_MAINTAINER=isus203
RISING_PACKAGE_TYPE := GAPPS
TARGET_ENABLE_BLUR := true
PRODUCT_NO_CAMERA := false
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_USE_GOOGLE_TELEPHONY := true
