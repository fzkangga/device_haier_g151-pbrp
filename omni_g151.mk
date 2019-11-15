# Release name
PRODUCT_RELEASE_NAME := g151

$(call inherit-product, build/target/product/embedded.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/pb/config/common.mk)

# Charger
PRODUCT_PACKAGES += \
    charger_res_images

# Encryption
PRODUCT_PACKAGES += \
    libcryptfs_hw

PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
      ro.hardware.keystore=msm8909

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/dt.img:dt.img \
    $(LOCAL_PATH)/prebuilt/kernel:kernel \

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := g151
PRODUCT_NAME := omni_g151
PRODUCT_BRAND := Smartfren
PRODUCT_MODEL := Andromax A16C3H
PRODUCT_MANUFACTURER := Haier

TARGET_VENDOR_PRODUCT_NAME := A16C3H
TARGET_VENDOR_DEVICE_NAME := A16C3H
PRODUCT_BUILD_PROP_OVERRIDES += TARGET_DEVICE=A16C3H PRODUCT_NAME=A16C3H
