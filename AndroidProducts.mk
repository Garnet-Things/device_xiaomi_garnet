#
# Copyright (C) 2025 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

COMMON_DEVICE_PATH := device/xiaomi/garnet
GARNET_DEVICE_PATH := $(COMMON_DEVICE_PATH)/garnet
GARNET_PREBUILT_PATH := device/xiaomi/garnet-prebuilt

PRODUCT_MAKEFILES := \
    $(GARNET_DEVICE_PATH)/infinity_garnet.mk

COMMON_LUNCH_CHOICES := \
    infinity_garnet-aosp_current-user \
    infinity_garnet-aosp_current-userdebug \
    infinity_garnet-aosp_current-eng