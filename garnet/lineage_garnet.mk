#
# Copyright (C) 2025 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

PRODUCT_MODEL := garnet
PRODUCT_BRAND := Xiaomi
PRODUCT_DEVICE := garnet
PRODUCT_NAME := lineage_garnet
PRODUCT_MANUFACTURER := xiaomi

# Inherit Garnet Specifics
$(call inherit-product, $(GARNET_DEVICE_PATH)/garnet/device.mk)