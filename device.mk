#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#
#

DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(COMMON_PATH)/bluetooth/include

# call the common setup
$(call inherit-product, device/samsung/sm7225-common/common.mk)

# call the proprietary setup
$(call inherit-product, vendor/samsung/m23xq/m23xq-vendor.mk)

# Init files
PRODUCT_PACKAGES += \
    init.m23xq.rc

# Audio
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/audio/mixer_paths.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths.xml

TARGET_VENDOR_PROP += $(COMMON_PATH)/vendor.prop

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)