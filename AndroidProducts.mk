#
# Copyright (C) 2025 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

COMMON_PATH := device/xiaomi/garnet
GARNET_PATH := device/xiaomi/garnet/garnet
GARNET_PREBUILT := device/xiaomi/garnet-prebuilts

PRODUCT_MAKEFILES := \
    $(GARNET_PATH)/lineage_garnet.mk

COMMON_LUNCH_CHOICES := \
    lineage_garnet-aosp_current-user \
    lineage_garnet-aosp_current-userdebug \
    lineage_garnet-aosp_current-eng