#
# Copyright (C) 2021-2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from aston device
$(call inherit-product, device/oneplus/aston/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_NAME := lineage_aston
PRODUCT_DEVICE := aston
PRODUCT_MANUFACTURER := OnePlus
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := CPH2609

PRODUCT_SYSTEM_NAME := $(PRODUCT_MODEL)
PRODUCT_SYSTEM_DEVICE := OP5D35L1

PRODUCT_GMS_CLIENTID_BASE := android-oneplus

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="CPH2609-user 14 TP1A.220905.001 U.R4T3.16afb3d-1-aa4b release-keys" \
    TARGET_DEVICE=$(PRODUCT_SYSTEM_DEVICE) \
    TARGET_PRODUCT=$(PRODUCT_SYSTEM_NAME)

# friendly tip: builders can use vendor init_xxx.cpp as workaround for spacing
# e.g. property_override("ro.rising.chipset", "Snapdragon 870 5G");
PRODUCT_BUILD_PROP_OVERRIDES += \
    RISING_CHIPSET="Snapdragon 8 Gen 2"
    RISING_MAINTAINER="Weaponmasterjax"

# whether to ship aperture camera, default is false
PRODUCT_NO_CAMERA := true

TARGET_ENABLE_BLUR := true

# Wether to ship lawnchair launcher
TARGET_PREBUILT_LAWNCHAIR_LAUNCHER := true
TARGET_PREBUILT_PIXEL_LAUNCHER := false

# GMS build flags
# ship with GMS packages, replaces default AOSP packages with Google manufactured packages.
WITH_GMS := true
# These flags needs WITH_GMS set to true
# for more information about core GMS flags, please see vendor/gms/common/common-vendor.mk
# ships core GMS components that are needed to run GMS environment
TARGET_CORE_GMS := true
TARGET_CORE_GMS_EXTRAS := false
PRODUCT_PACKAGES += \
    Photos \
    MarkupGoogle \
    LatinIMEGooglePrebuilt \
    AiWallpapers \
    WallpaperEmojiPrebuilt \
    CalculatorGooglePrebuilt \
    CalendarGooglePrebuilt \
    Velvet
TARGET_USE_GOOGLE_TELEPHONY := true

RISING_MAINTAINER := Weaponmasterjax
PRODUCT_BUILD_PROP_OVERRIDES += \
    RISING_MAINTAINER="Weaponmasterjax"		

BUILD_FINGERPRINT := OnePlus/CPH2609/OP5D35L1:14/TP1A.220905.001/U.R4T3.16afb3d-1-aa4b:user/release-keys
