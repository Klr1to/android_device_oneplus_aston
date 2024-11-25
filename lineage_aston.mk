#
# Copyright (C) 2021-2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from aston device
$(call inherit-product, device/oneplus/aston/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_NAME := lineage_aston
PRODUCT_DEVICE := aston
PRODUCT_MANUFACTURER := OnePlus
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := CPH2585


# RisingOS Flags.
RISING_MAINTAINER := Klr1to
TARGET_ENABLE_BLUR := true
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_HAS_UDFPS := true
TARGETEPH_USE_GOOGLE_TELEPHONY := true

# Gapps
WITH_GMS := true
TARGET_CORE_GMS := true
TARGET_DEFAULT_PIXEL_LAUNCHER := false

# Extra Flags.
RISING_BATTERY := 5500mah
RISING_STORAGE := 256gb
RISING_RAM := 16gb

TARGET_PREBUILT_LAWNCHAIR_LAUNCHER := true

PRODUCT_GMS_CLIENTID_BASE := android-oneplus

PRODUCT_BUILD_PROP_OVERRIDES += \
    RisingChipset="Snapdragon 8 Gen 2" \
    RisingMaintainer="Klr1to" \
    BuildDesc="CPH2585IN-user 14 TP1A.220905.001 U.R4T3.1aa1fbe-1-5553 release-keys" \
    BuildFingerprint=OnePlus/CPH2585IN/OP5D35L1:14/TP1A.220905.001/U.R4T3.1aa1fbe-1-5553:user/release-keys \
    DeviceName=OP5D35L1 \
    DeviceProduct=CPH2585 \
    SystemDevice=OP5D35L1 \
    SystemName=CPH2585