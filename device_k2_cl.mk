$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product, build/target/product/full.mk)

PRODUCT_COPY_FILES += \
    device/htc/k2_cl/recovery/choice_fn:recovery/root/sbin/choice_fn \
    device/htc/k2_cl/recovery/detect_key:recovery/root/sbin/detect_key \
    device/htc/k2_cl/recovery/init.recovery.qcom.rc:root/init.recovery.qcom.rc \
    device/htc/k2_cl/recovery/offmode_charging:recovery/root/sbin/offmode_charging \
    device/htc/k2_cl/recovery/power_test:recovery/root/sbin/power_test

PRODUCT_NAME := One SV
PRODUCT_DEVICE := k2_cl
