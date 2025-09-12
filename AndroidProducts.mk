#
# Copyright (C) 2025 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

GARNET_DEVICE_PATH := device/xiaomi/garnet

PRODUCT_MAKEFILES := $(LOCAL_DIR)/garnet/lineage_garnet.mk

COMMON_LUNCH_CHOICES := \
	lineage_garnet-aosp_current-eng \
	lineage_garnet-aosp_current-user \
	lineage_garnet-aosp_current-userdebug