 
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# Add this line if your device is 64-bit
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# If you are building from TWRPROM's minimal source, Inherit some common TWRP stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Replace $$DEVICE$$ with your Device Name's Value.
# Replace $$BRAND$$ with your Brand's / Manufacturer's Value.
PRODUCT_COPY_FILES += device/realme/RMX3395/prebuilt/zImage:kernel
# Fles under $(LOCAL_PATH)/recovery/root/ gets automatically copied into recovery
# PRODUCT_COPY_FILES += $(LOCAL_PATH)/recovery/root/*:root/*

PRODUCT_DEVICE := RMX3395
PRODUCT_NAME := omni_RMX3395
PRODUCT_BRAND := realme
PRODUCT_MODEL := Realme Narzo 50 Pro
PRODUCT_MANUFACTURER := realme

# Forcefully add mtp support (adb is already there)
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp

# Add fingerprint from Stock ROM build.prop
PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT="oplus/ossi/ossi:12/SP1A.210812.016/1660098184990:user/release-keys
    PRIVATE_BUILD_DESC="oplus/ossi/ossi:12/SP1A.210812.016/1660098184990:user/release-keys
