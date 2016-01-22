$(call inherit-product, device/huawei/y530/full_y530.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := cm_y530
PRODUCT_RELEASE_NAME := Ascend Y530