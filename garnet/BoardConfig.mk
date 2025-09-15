#
# Copyright (C) 2025 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

BOARD_KERNEL_IMAGE_NAME := Image
TARGET_KERNEL_CONFIG := gki_defconfig
TARGET_KERNEL_SOURCE := kernel/xiaomi/garnet

include $(COMMON_DEVICE_PATH)/BoardConfigCommon.mk

# Inherit the proprietary files
include vendor/xiaomi/garnet/BoardConfigVendor.mk