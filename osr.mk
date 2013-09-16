# Release name
PRODUCT_RELEASE_NAME := Dragon

# Boot animation
TARGET_BOOTANIMATION_NAME := horizontal-1024x768

# Inherit some common CM stuff.
$(call inherit-product, vendor/osr/config/common_full_tablet_wifionly.mk)

# Inherit device configuration
$(call inherit-product, device/unusual/dragon/full_dragon.mk)

# Inherit GAPPS
#$(call inherit-product, vendor/google/essencial.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := dragon
PRODUCT_NAME := osr_dragon
PRODUCT_BRAND := UNUSUAL
PRODUCT_MODEL := Dragon
PRODUCT_MANUFACTURER := Allwinner
