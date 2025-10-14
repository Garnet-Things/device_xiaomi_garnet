#
# Copyright (C) 2025 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Include from common
include $(COMMON_PATH)/lineage_common.mk

# Inherit from garnet device
$(call inherit-product, $(GARNET_PATH)/device.mk)

PRODUCT_DEVICE := garnet
PRODUCT_MODEL := 2312DRA50G
PRODUCT_NAME := lineage_garnet