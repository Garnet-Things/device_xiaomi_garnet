#
# Copyright (C) 2025 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from lineage common
$(call inherit-product, $(COMMON_DEVICE_PATH)/lineage_common.mk)

# Inherit from garnet device
$(call inherit-product, $(GARNET_DEVICE_PATH)/device.mk)

PRODUCT_DEVICE := garnet
PRODUCT_MODEL := 2312DRA50G
PRODUCT_NAME := lineage_garnet