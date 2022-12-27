#
# Copyright (C) 2022 The LineageOS Project
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

LOCAL_PATH := device/samsung/m23xq

# Inherit from motorola sdm660-common
include device/samsung/sm7225-common/BoardConfigCommon.mk

# Kernel
TARGET_KERNEL_CONFIG        := vendor/m23xq_eur_open_defconfig
BOARD_NAME                  := lito

# Kernel - prebuilt
TARGET_FORCE_PREBUILT_KERNEL := true
ifeq ($(TARGET_FORCE_PREBUILT_KERNEL),true)
TARGET_PREBUILT_DTB := $(LOCAL_PATH)/prebuilt/dtb.img
BOARD_PREBUILT_DTBOIMAGE := $(LOCAL_PATH)/prebuilt/dtbo.img
TARGET_PREBUILT_KERNEL := $(LOCAL_PATH)/prebuilt/kernel
endif

# Display
TARGET_SCREEN_DENSITY := 384

# OTA assert
TARGET_OTA_ASSERT_DEVICE := m23xq
