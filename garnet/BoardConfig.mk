#
# Copyright (C) 2025 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# false -> use prebuilt kernel (faster)
# true -> use kernel source code (slower)
BUILD_KERNEL_FROM_SOURCE := false

ifeq ($(BUILD_KERNEL_FROM_SOURCE),true)
BOARD_KERNEL_IMAGE_NAME := Image
TARGET_KERNEL_CONFIG := gki_defconfig
TARGET_KERNEL_SOURCE := kernel/xiaomi/garnet
else
TARGET_NEEDS_DTBOIMAGE := true
TARGET_PREBUILT_KERNEL := $(GARNET_PREBUILT_PATH)/kernel
BOARD_PREBUILT_DTBIMAGE_DIR := $(GARNET_PREBUILT_PATH)/dtbs
BOARD_PREBUILT_DTBOIMAGE := $(GARNET_PREBUILT_PATH)/dtbo.img
endif

include $(COMMON_DEVICE_PATH)/BoardConfigCommon.mk

# Inherit the proprietary files
include vendor/xiaomi/garnet/BoardConfigVendor.mk