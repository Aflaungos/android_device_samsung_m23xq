#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := device/samsung/m23xq

include device/samsung/sm7225-common/BoardConfigCommon.mk

# Kernel
TARGET_KERNEL_CONFIG        := vendor/lineage-m23xq_defconfig
BOARD_NAME                  := lito

# Display
TARGET_SCREEN_DENSITY := 384

# OTA assert
TARGET_OTA_ASSERT_DEVICE := m23xq
