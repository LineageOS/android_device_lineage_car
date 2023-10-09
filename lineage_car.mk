$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_default.mk)

PRODUCT_PACKAGE_OVERLAYS += \
    device/lineage/car/overlay \

PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    config.override_forced_orient=true \
    persist.bluetooth.enablenewavrcp=false \

PRODUCT_IS_AUTO := true
