#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

PRODUCT_PACKAGES += \
    CarServiceOverlay \
    CarSettingsProviderOverlay

PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    persist.bluetooth.enablenewavrcp=false \
