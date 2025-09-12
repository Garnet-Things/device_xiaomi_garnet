#
# Copyright (C) 2025 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

$(call inherit-product, $(GARNET_DEVICE_PATH)/device-common.mk)
$(call inherit-product-if-exists, vendor/xiaomi/garnet/device-vendor.mk)