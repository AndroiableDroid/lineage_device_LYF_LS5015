# Copyright (C) 2015 The CyanogenMod Project
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

#FORCE_32_BIT := true
WITH_SU := true
RECOVERY_VARIANT := twrp
# Must define platform variant before including any common things

$(call inherit-product, device/LYF/LS5015/full_LS5015.mk)

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Must define platform variant before including any common things
TARGET_BOARD_PLATFORM_VARIANT := msm8939

ADDITIONAL_DEFAULT_PROPERTIES += \
	ro.adb.secure=0 \
	persist.sys.usb.config=adb

PRODUCT_NAME := lineage_LS5015
BOARD_VENDOR := LYF
PRODUCT_DEVICE := LS5015

PRODUCT_GMS_CLIENTID_BASE := android-LYF

PRODUCT_MANUFACTURER := LYF
PRODUCT_MODEL := LYF Water 8

PRODUCT_BRAND := LYF
TARGET_VENDOR := LYF
TARGET_VENDOR_PRODUCT_NAME := LS5015
TARGET_VENDOR_DEVICE_NAME := LS5015

# Assert
TARGET_OTA_ASSERT_DEVICE := LS5015, mobee01a_msm8916_64
