#
# Copyright (C) 2025 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Enable updating of APEXes
$(call inherit-product, $(SRC_TARGET_DIR)/product/updatable_apex.mk)

# A/B
$(call inherit-product, $(SRC_TARGET_DIR)/product/virtual_ab_ota.mk)

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += $(COMMON_DEVICE_PATH)
PRODUCT_SOONG_NAMESPACES += $(COMMON_DEVICE_PATH)/rootdir