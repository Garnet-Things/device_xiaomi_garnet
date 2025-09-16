#
# Copyright (C) 2025 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Enable updating of APEXes
$(call inherit-product, $(SRC_TARGET_DIR)/product/updatable_apex.mk)

# A/B
$(call inherit-product, $(SRC_TARGET_DIR)/product/virtual_ab_ota.mk)

AB_OTA_POSTINSTALL_CONFIG += RUN_POSTINSTALL_system=true
AB_OTA_POSTINSTALL_CONFIG += FILESYSTEM_TYPE_system=ext4
AB_OTA_POSTINSTALL_CONFIG += POSTINSTALL_OPTIONAL_system=true
AB_OTA_POSTINSTALL_CONFIG += POSTINSTALL_PATH_system=system/bin/otapreopt_script

AB_OTA_POSTINSTALL_CONFIG += RUN_POSTINSTALL_vendor=true
AB_OTA_POSTINSTALL_CONFIG += FILESYSTEM_TYPE_vendor=ext4
AB_OTA_POSTINSTALL_CONFIG += POSTINSTALL_OPTIONAL_vendor=true
AB_OTA_POSTINSTALL_CONFIG += POSTINSTALL_PATH_vendor=bin/checkpoint_gc

PRODUCT_PACKAGES += \
    checkpoint_gc \
    otapreopt_script

# API levels
PRODUCT_SHIPPING_API_LEVEL := 33

# fastbootd
PRODUCT_PACKAGES += \
    fastbootd

# Health
PRODUCT_PACKAGES += \
    android.hardware.health@2.1-impl \
    android.hardware.health@2.1-service

# Partitions
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# Product characteristics
PRODUCT_CHARACTERISTICS := nosdcard

# Update engine
PRODUCT_PACKAGES += \
    update_engine \
    update_engine_sideload \
    update_verifier

# Boot Control
PRODUCT_PACKAGES += \
    android.hardware.boot@1.2-impl \
    android.hardware.boot@1.2-impl.recovery \
    android.hardware.boot@1.2-service

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += $(COMMON_DEVICE_PATH)
PRODUCT_SOONG_NAMESPACES += $(COMMON_DEVICE_PATH)/rootdir