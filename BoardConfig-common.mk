#
# Copyright (C) 2016 The Android Open-Source Project
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

include build/make/target/board/BoardConfigPixelCommon.mk
include build/make/target/board/BoardConfigMainlineCommon.mk

TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := generic
TARGET_CPU_VARIANT_RUNTIME := cortex-a78

ifeq (,$(filter %_64,$(TARGET_PRODUCT)))
TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-a
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := generic
TARGET_2ND_CPU_VARIANT_RUNTIME := cortex-a55
endif

# A/B
AB_OTA_UPDATER := true
AB_OTA_PARTITIONS += product
AB_OTA_PARTITIONS += system_ext

# Dynamic Partitions
BOARD_SUPER_PARTITION_GROUPS := qti_dynamic_partitions
BOARD_SUPER_PARTITION_SIZE := 9653190656
BOARD_QTI_DYNAMIC_PARTITIONS_PARTITION_LIST += product
BOARD_QTI_DYNAMIC_PARTITIONS_PARTITION_LIST += system_ext

# product.img
TARGET_COPY_OUT_PRODUCT := product
BOARD_PRODUCTIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_PRODUCTIMAGE_PARTITION_SIZE := 3312644096    # 3.09 GB

# system_ext.img
TARGET_COPY_OUT_SYSTEM_EXT := system_ext
BOARD_SYSTEM_EXTIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_SYSTEM_EXTIMAGE_PARTITION_SIZE := 648847360 # 618.79 MB