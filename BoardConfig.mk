#
# Copyright (C) 2012 The CyanogenMod Project
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
#

# This variable is set first, so it can be overridden
# by BoardConfigVendor.mk
-include device/samsung/kona-common/BoardConfigCommon.mk
-include device/samsung/smdk4412-qcom-common/BoardCommonConfig.mk

LOCAL_PATH := device/samsung/n5120

# Inline kernel building
TARGET_KERNEL_SOURCE := kernel/samsung/smdk4412
TARGET_KERNEL_CONFIG := cyanogenmod_n5120_defconfig

# RIL
COMMON_GLOBAL_CFLAGS += -DPROPERTY_PERMS_APPEND='{ "ril.ks.status", AID_SYSTEM, 0 },'

# Recovery
TARGET_RECOVERY_FSTAB := device/samsung/kona-common/rootdir/fstab.smdk4x12
RECOVERY_FSTAB_VERSION := 2
BOARD_RECOVERY_SWIPE := true
BOARD_RECOVERY_SWIPE_SWAPXY := true

# TWRP Recovery
DEVICE_RESOLUTION := 1280x800
RECOVERY_SDCARD_ON_DATA := true
TW_INTERNAL_STORAGE_PATH := "/data/media"
TW_INTERNAL_STORAGE_MOUNT_POINT := "data"
TW_EXTERNAL_STORAGE_PATH := "/external_sdcard"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "external_sdcard"
TARGET_USERIMAGES_USE_EXT4 := true
RECOVERY_TOUCHSCREEN_FLIP_Y := true
RECOVERY_TOUCHSCREEN_SWAP_XY := true

# inherit from the proprietary version
-include vendor/samsung/n5120/BoardConfigVendor.mk

# assert
TARGET_OTA_ASSERT_DEVICE := konawifi,konaltexx,n5120,GT-N5120,konalte


# BlissPop Config Flags
BLISS_WIPE_CACHES := 1
TARGET_TC_ROM := 4.8
TARGET_TC_KERNEL := 4.8
BLISSIFY := true
#BLISS_O3 := true
#BLISS_STRICT := true
#BLISS_GRAPHITE := false
#BLISS_KRAIT := true
#BLISS_PIPE := true
TARGET_GCC_VERSION_EXP := $(TARGET_TC_ROM)
TARGET_KERNEL_CUSTOM_TOOLCHAIN := $(TARGET_TC_KERNEL)

#SaberMod
-include vendor/bliss/config/sm.mk
