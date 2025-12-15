#
# Copyright (C) The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit device configuration
DEVICE_CODENAME := sunny
$(call inherit-product, device/xiaomi/$(DEVICE_CODENAME)/device.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_BRAND := Redmi
PRODUCT_DEVICE := $(DEVICE_CODENAME)
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_MODEL := M2101K7AG
PRODUCT_NAME := lineage_$(DEVICE_CODENAME)

# Boot animation
TARGET_SCREEN_HEIGHT := 2400
TARGET_SCREEN_WIDTH := 1080

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="sunny_global-user 12 RKQ1.210614.002 V14.0.9.0.SKGMIXM release-keys" \
    BuildFingerprint=Redmi/sunny_global/sunny:12/RKQ1.210614.002/V14.0.9.0.SKGMIXM:user/release-keys \
    DeviceProduct=$(DEVICE_CODENAME)

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
