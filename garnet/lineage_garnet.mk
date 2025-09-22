#
# Copyright (C) 2025 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from aosp common
$(call inherit-product, $(COMMON_DEVICE_PATH)/aosp_common.mk)

# Inherit from garnet device
$(call inherit-product, $(GARNET_DEVICE_PATH)/device.mk)

PRODUCT_DEVICE := garnet
PRODUCT_MODEL := 2312DRA50G
PRODUCT_NAME := aosp_garnet