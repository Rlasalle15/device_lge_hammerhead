# inherit from the EOS vendor, if present
$(call inherit-product-if-exists, vendor/eos/config/common_full_phone.mk)

# Copy Bootanimation
PRODUCT_COPY_FILES += \
vendor/eos/prebuilt/common/bootanimation/1080.zip:system/media/bootanimation.zip

$(call inherit-product, device/lge/hammerhead/device.mk)
$(call inherit-product-if-exists, vendor/lge/hammerhead/device-vendor.mk)

PRODUCT_BUILD_PROP_OVERRIDES +=
PRODUCT_NAME=hammerhead BUILD_FINGERPRINT=google/hammerhead/hammerhead:5.0/LRX21O/1570415:user/release-keys PRIVATE_BUILD_DESC="hammerhead-user 5.0 LRX21O 1570415 release-keys"

# Inherit device configuration
$(call inherit-product, device/lge/hammerhead/full_hammerhead.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := hammerhead
PRODUCT_NAME := eos_hammerhead
PRODUCT_BRAND := google
PRODUCT_MODEL := Nexus 5
PRODUCT_MANUFACTURER := LGE