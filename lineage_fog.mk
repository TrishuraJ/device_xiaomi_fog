#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common stuff.
TARGET_DISABLE_EPPE := true
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)
TARGET_BOOT_ANIMATION_RES := 720

# Inherit from fog device
$(call inherit-product, device/xiaomi/fog/device.mk)

# AxionAOSP specific flags
TARGET_PREBUILT_BCR := false
TARGET_ENABLE_BLUR := true
TARGET_INCLUDE_AXFX := true
TARGET_INCLUDES_LOS_PREBUILTS := true
AXION_CAMERA_REAR_INFO := 50,5
AXION_CAMERA_FRONT_INFO := 5
AXION_MAINTAINER := stfubtech
AXION_PROCESSOR := Snapdragon_680
AXION_CPU_BIG_CORES := 4,5,6,7
AXION_CPU_SMALL_CORES := 0,1,2,3

PRODUCT_NAME := lineage_fog
PRODUCT_DEVICE := fog
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := Redmi 10C

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="fog_global-user 13 TKQ1.221114.001 V14.0.8.0.TGEMIXM release-keys" \
    BuildFingerprint=Redmi/fog_global/fog:13/TKQ1.221114.001/V14.0.8.0.TGEMIXM:user/release-keys