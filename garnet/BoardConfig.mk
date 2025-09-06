#
# Copyright 2014 The Android Open-Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

GARNET_DEVICE_PATH := device/xiaomi/garnet

BOARD_KERNEL_IMAGE_NAME := kernel

ifeq ($(TARGET_PREBUILT_KERNEL),)
LOCAL_KERNEL := device/xiaomi/garnet-kernel/kernel
else
LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES := \
	$(LOCAL_KERNEL):kernel

# Vendor Interface Manifest
DEVICE_FRAMEWORK_MANIFEST_FILE := $(GARNET_DEVICE_PATH)/garnet/framework_manifest.xml

-include vendor/xiaomi/garnet/BoardConfigVendor.mk
include $(GARNET_DEVICE_PATH)/BoardConfig-common.mk