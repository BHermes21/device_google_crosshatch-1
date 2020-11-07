# Boot animation
TARGET_SCREEN_HEIGHT := 2160
TARGET_SCREEN_WIDTH := 1080

# Inherit some common rr stuff.
$(call inherit-product, vendor/rr/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/google/crosshatch/aosp_blueline.mk)

-include device/google/crosshatch/blueline/device-rr.mk

# Inherit PixelGApps
$(call inherit-product-if-exists, vendor/pixelgapps/pixel-gapps.mk)

# RR Wallpapers
BUILD_RR_WALLPAPERS := true

## Device identifier. This must come after all inclusions
PRODUCT_NAME := rr_blueline
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 3
TARGET_MANUFACTURER := Google
PRODUCT_RESTRICT_VENDOR_FILES := false

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=blueline \
    PRIVATE_BUILD_DESC="blueline-user 10 QQ3A.200805.001 6578210 release-keys"

BUILD_FINGERPRINT := "google/walleye/walleye:8.1.0/OPM1.171019.011/4448085:user/release-keys"

TARGET_FACE_UNLOCK_SUPPORTED := true

$(call inherit-product-if-exists, vendor/google/blueline/blueline-vendor.mk)
