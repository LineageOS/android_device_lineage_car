#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherits
ifneq ($(TARGET_NO_TELEPHONY), true)
$(call inherit-product, $(SRC_TARGET_DIR)/product/telephony_vendor.mk)
endif

# Overlays
PRODUCT_PACKAGE_OVERLAYS += \
    device/google_car/common/overlay

PRODUCT_PACKAGES += \
    CarServiceOverlayPhoneCar

# Permissions
ifneq ($(PORTRAIT_UI),true)
# Enable landscape
PRODUCT_COPY_FILES += \
    device/google_car/common/unavailable_features_landscape.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/unavailable_features_landscape.xml \
    frameworks/native/data/etc/android.hardware.screen.landscape.xml:system/etc/permissions/android.hardware.screen.landscape.xml
endif
