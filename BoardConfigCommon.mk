#
# Copyright (C) 2025 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# A/B
AB_OTA_UPDATER := true
AB_OTA_PARTITIONS += \
    odm \
    system \
    product \
    vendor_dlkm \
    system_ext \
    vendor
BOARD_USES_RECOVERY_AS_BOOT := true

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 := 
TARGET_CPU_VARIANT := generic
TARGET_CPU_VARIANT_RUNTIME := cortex-a78

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := generic
TARGET_2ND_CPU_VARIANT_RUNTIME := cortex-a55

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := parrot
TARGET_NO_BOOTLOADER := true

# Kernel
BOARD_KERNEL_PAGESIZE := 4096
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_IMAGE_NAME := Image
BOARD_BOOTIMG_HEADER_VERSION := 4

TARGET_KERNEL_SOURCE := kernel/xiaomi/generic
TARGET_KERNEL_CONFIG += gki_defconfig
TARGET_KERNEL_CONFIG += vendor/parrot_GKI.config
TARGET_KERNEL_CONFIG += vendor/garnet_GKI.config
TARGET_KERNEL_CONFIG += vendor/debugfs.config

BOARD_KERNEL_SEPARATED_DTBO := true
BOARD_INCLUDE_DTB_IN_BOOTIMG := true
BOARD_MKBOOTIMG_ARGS += --header_version $(BOARD_BOOTIMG_HEADER_VERSION)

BOARD_KERNEL_CMDLINE += bootconfig
BOARD_KERNEL_CMDLINE += disable_dma32=on
BOARD_KERNEL_CMDLINE := video=vfb:640x400,bpp=32,memsize=3072000

GARNET_FINGERPRINT := Xiaomi/garnet/garnet:14/OS2.0.10.0.VNRMIXM:user/release-keys

BOARD_KERNEL_CMDLINE += swinfo.fingerprint=$(GARNET_FINGERPRINT)
BOARD_KERNEL_CMDLINE += mtdoops.fingerprint=$(GARNET_FINGERPRINT)