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
$(call inherit-product, device/tecno/KH7n/device.mk)

PRODUCT_BRAND := TECNO
PRODUCT_DEVICE := KH7n
PRODUCT_MANUFACTURER := Tecno Mobility Limited
PRODUCT_NAME := lineage_KH7n
PRODUCT_MODEL := TECNO KH7n

PRODUCT_GMS_CLIENTID_BASE := android-tecno

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="sys_tssi_64_tecno-user 12 SP1A.210812.016 585038 release-keys"

BUILD_FINGERPRINT := TECNO/KH7n-OP/TECNO-KH7n:12/SP1A.210812.016/240416V962:user/release-keys

