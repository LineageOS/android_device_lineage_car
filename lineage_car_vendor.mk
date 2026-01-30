#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

PRODUCT_PACKAGES += \
    android.hardware.automotive.audiocontrol-service.example \
    android.hardware.automotive.vehicle@V4-default-service

# Additional selinux policy
BOARD_SEPOLICY_DIRS += device/generic/car/common/sepolicy

# Whitelisted packages per user type
PRODUCT_COPY_FILES += \
    device/generic/car/common/preinstalled-packages-product-car-emulator.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/sysconfig/preinstalled-packages-product-car-emulator.xml
