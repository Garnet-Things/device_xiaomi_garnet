#
# Copyright (C) 2025 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

COMMON_DEVICE_PATH := device/xiaomi/garnet
GARNET_DEVICE_PATH := $(COMMON_DEVICE_PATH)/garnet
GARNET_PREBUILT_PATH := device/xiaomi/garnet-prebuilt

PRODUCT_MAKEFILES := \
    $(GARNET_DEVICE_PATH)/lineage_garnet.mk

COMMON_LUNCH_CHOICES := \
    lineage_garnet-aosp_current-user \
    lineage_garnet-aosp_current-userdebug \
    lineage_garnet-aosp_current-eng