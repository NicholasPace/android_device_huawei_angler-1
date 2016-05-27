# Boot animation
TARGET_SCREEN_HEIGHT := 2560
TARGET_SCREEN_WIDTH := 1440

#inherit telephony stuff
$(call inherit-product, vendor/xosp/config/telephony.mk)

# Inherit some common XOSP stuff.
$(call inherit-product, vendor/xosp/config/common_full_phone.mk)
$(call inherit-product, vendor/xosp/config/xosp.mk)

# Inherit device configuration
$(call inherit-product, device/huawei/angler/aosp_angler.mk)

DEVICE_PACKAGE_OVERLAYS += device/huawei/angler/overlay-cm

## Device identifier. This must come after all inclusions
PRODUCT_NAME := xosp_angler
PRODUCT_BRAND := google
PRODUCT_MODEL := Nexus 6P
RELEASE_TYPE := XOSP_OFFICIAL

TARGET_VENDOR := huawei

IS_ARM64 := TRUE

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=angler \
    BUILD_FINGERPRINT=google/angler/angler:6.0.1/MTC19T/2741993:user/release-keys \
    PRIVATE_BUILD_DESC="angler-user 6.0.1 MTC19T 2741993 release-keys"
