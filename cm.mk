# Release name
PRODUCT_RELEASE_NAME := k3g

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/k3g/device_k3g.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := k3g
PRODUCT_NAME := cm_k3g
PRODUCT_BRAND := samsung
PRODUCT_MODEL := k3g
PRODUCT_MANUFACTURER := samsung
