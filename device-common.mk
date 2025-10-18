#
# Copyright (C) 2025 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Enable updating of APEXes
$(call inherit-product, $(SRC_TARGET_DIR)/product/updatable_apex.mk)

# A/B
$(call inherit-product, $(SRC_TARGET_DIR)/product/virtual_ab_ota/launch_with_vendor_ramdisk.mk)

# Qualcomm
$(call inherit-product, hardware/qcom-caf/common/common.mk)

# A/B
AB_OTA_POSTINSTALL_CONFIG += \
    RUN_POSTINSTALL_system=true \
    POSTINSTALL_PATH_system=system/bin/otapreopt_script \
    FILESYSTEM_TYPE_system=ext4 \
    POSTINSTALL_OPTIONAL_system=true

AB_OTA_POSTINSTALL_CONFIG += \
    RUN_POSTINSTALL_vendor=true \
    POSTINSTALL_PATH_vendor=bin/checkpoint_gc \
    FILESYSTEM_TYPE_vendor=ext4 \
    POSTINSTALL_OPTIONAL_vendor=true

PRODUCT_PACKAGES += \
    checkpoint_gc \
    otapreopt_script

# API levels
PRODUCT_SHIPPING_API_LEVEL := 33

PRODUCT_PACKAGES += \
    android.hardware.boot@1.2-impl \
    android.hardware.boot@1.2-impl.recovery \
    android.hardware.boot@1.2-service

PRODUCT_PACKAGES += \
    update_engine \
    update_engine_sideload \
    update_verifier

# Display
PRODUCT_PACKAGES += \
    android.hardware.graphics.mapper@4.0-impl-qti-display \
    vendor.qti.hardware.display.allocator-service

# fastbootd
PRODUCT_PACKAGES += \
    android.hardware.fastboot@1.1-impl-mock \
    fastbootd

# Health
PRODUCT_PACKAGES += \
    android.hardware.health@2.1-impl \
    android.hardware.health@2.1-service

# Keylayout
PRODUCT_COPY_FILES += \
    $(COMMON_PATH)/configs/keylayout/garnet.kl:$(TARGET_COPY_OUT_VENDOR_RAMDISK)/usr/keylayout/garnet.kl

# Overlays
PRODUCT_ENFORCE_RRO_TARGETS := *

# Partitions
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# Product characteristics
PRODUCT_CHARACTERISTICS := nosdcard

# Rootdir
PRODUCT_PACKAGES += \
    audio_jack_status.sh \
    elliptic_uscal.sh \
    elliptic_uscal_v2.sh \
    headset_detect.sh \
    init.kernel.post_boot-ravelin.sh \
    init.qcom.usb.sh \
    init.qti.display_boot.sh \
    init.qti.kernel.debug-ravelin.sh \
    playback_headset.sh \
    setup_rcv2backmic.sh \
    setup_rcv2mainmic.sh \
    setup_rcv2topmic.sh \
    spk_dsm_test.sh \
    us_cal.sh

PRODUCT_PACKAGES += \
    fstab.qcom \
    init.qcom.rc \
    init.qcom.usb.rc \
    init.target.rc \
    init.recovery.hardware.rc \
    init.recovery.qcom.rc \
    miui.factoryreset.rc

PRODUCT_COPY_FILES += \
    $(COMMON_PATH)/rootdir/etc/fstab.qcom:$(TARGET_VENDOR_RAMDISK_OUT)/first_stage_ramdisk/fstab.qcom

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(COMMON_PATH) \
    $(COMMON_PATH)/rootdir

# Vendor service manager
PRODUCT_PACKAGES += \
    vndservice \
    vndservicemanager

# Inherit the proprietary files
$(call inherit-product, vendor/xiaomi/garnet/garnet-vendor.mk)