#
# Copyright (C) 2025 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

COMMON_DEVICE_PATH := device/xiaomi/garnet
GARNET_DEVICE_PATH := $(COMMON_DEVICE_PATH)/garnet
GARNET_PREBUILT_PATH := device/xiaomi/garnet-prebuilt

PRODUCT_MAKEFILES := \
    $(GARNET_DEVICE_PATH)/aosp_garnet.mk

COMMON_LUNCH_CHOICES := \
    aosp_garnet-trunk_staging-user \
    aosp_garnet-trunk_staging-userdebug \
    aosp_garnet-trunk_staging-eng