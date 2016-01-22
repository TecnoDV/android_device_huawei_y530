# Release name
PRODUCT_RELEASE_NAME := y530

# Inherit from the common open source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# Inherit device configuration.
$(call inherit-product, device/huawei/y530/device.mk)

# Device identifier.
PRODUCT_DEVICE := y530
PRODUCT_NAME := cm_y530
PRODUCT_BRAND := huawei
PRODUCT_MODEL := Ascend y530
PRODUCT_MANUFACTURER := huawei
