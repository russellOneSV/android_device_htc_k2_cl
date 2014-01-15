#
# Copyright 2012 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Sample: This is where we'd set a backup provider if we had one
# $(call inherit-product, device/sample/products/backup_overlay.mk)

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/hydrogen/products/common.mk)

# Inherit from hardware-specific part of the product configuration
$(call inherit-product, device/htc/k2_cl/device.mk)

PRODUCT_NAME := hydrogen_k2_cl
PRODUCT_DEVICE := k2_cl
PRODUCT_BRAND := htc
PRODUCT_MODEL := One SV
PRODUCT_MANUFACTURER := HTC

# Kernel inline build
TARGET_KERNEL_SOURCE := kernel/htc/k2
TARGET_KERNEL_CONFIG := k2_ul_defconfig
TARGET_VARIANT_CONFIG := k2_ul_defconfig
#TARGET_SELINUX_CONFIG := k2_ul_defconfig

$(call inherit-product-if-exists, vendor/htc/k2_cl/device-vendor.mk)

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=htc_k2_ul BUILD_FINGERPRINT=cingular_us/k2_ul/k2_ul:4.0.4/IMM76I/124286.5:user/release-keys PRIVATE_BUILD_DESC="=1.17.502.5 CL124286 release-keys" BUILD_NUMBER=96068
