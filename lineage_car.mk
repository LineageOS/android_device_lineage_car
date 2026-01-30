#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from AOSP Car product makefiles
$(call inherit-product, packages/services/Car/car_product/build/car_generic_system.mk)
$(call inherit-product, packages/services/Car/car_product/build/car_system_ext.mk)
$(call inherit-product, packages/services/Car/car_product/build/car_product.mk)

# Overlays
PRODUCT_PACKAGES += \
    CarServiceOverlay \
    CarSettingsProviderOverlay

# Whitelisted packages per user type
PRODUCT_COPY_FILES += \
    device/google/cuttlefish/shared/auto/preinstalled-packages-product-car-cuttlefish.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/sysconfig/preinstalled-packages-product-car-cuttlefish.xml

# Workarounds
## CarServiceHelperService accesses the hidden api in the system server.
SYSTEM_OPTIMIZE_JAVA := false
## Do not enforce artifact path requirements
PRODUCT_ENFORCE_ARTIFACT_PATH_REQUIREMENTS := false
## FIXME: generic_system.mk sets 'PRODUCT_ENFORCE_RRO_TARGETS := *'
##        but this breaks phone_car. So undo it here.
PRODUCT_ENFORCE_RRO_TARGETS := frameworks-res
