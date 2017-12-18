# Copyright (C) 2014 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

$(call inherit-product, device/LYF/LS5015/full_LS5015.mk)

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/cm/config/common_mini_phone.mk)

# Must define platform variant before including any common things
TARGET_BOARD_PLATFORM_VARIANT := msm8939

PRODUCT_NAME := lineage_LS5015
BOARD_VENDOR := LYF
PRODUCT_DEVICE := LS5015

PRODUCT_GMS_CLIENTID_BASE := android-ckt

TARGET_VENDOR_PRODUCT_NAME := LS5015
TARGET_VENDOR_DEVICE_NAME := LS5015
PRODUCT_BUILD_PROP_OVERRIDES += TARGET_DEVICE=LS5015 PRODUCT_NAME=LS5015

## Use the latest approved GMS identifiers unless running a signed build
ifneq ($(SIGN_BUILD),true)
PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT=LYF/LS-5015/LS-5015:6.0.1/MMB29M/434:user/release-keys \
    PRIVATE_BUILD_DESC="mobee01a_msm8916_64-user 6.0.1 MMB29M 701 release-keys"
endif
