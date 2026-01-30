#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from AOSP Car product makefiles
$(call inherit-product, packages/services/Car/car_product/build/car_vendor.mk)

# HALs
PRODUCT_PACKAGES += \
    android.hardware.automotive.audiocontrol-service.example \
    android.hardware.automotive.vehicle@V4-default-service

# SELinux
BOARD_SEPOLICY_DIRS += device/google_car/common/sepolicy
