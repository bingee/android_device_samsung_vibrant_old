# Copyright (C) 2009 The Android Open Source Project
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

# config.mk
#
# Product-specific compile-time definitions.
#

# WARNING: This line must come *before* including the proprietary
# variant, so that it gets overwritten by the parent (which goes
# against the traditional rules of inheritance).

USE_CAMERA_STUB := true

# inherit from the proprietary version
<<<<<<< HEAD
-include vendor/samsung/epic/BoardConfigVendor.mk
=======
-include vendor/samsung/vibrant/BoardConfigVendor.mk
>>>>>>> 29f94e753adaa3c4b088a2c843522cee5b7e1d36

TARGET_NO_BOOTLOADER := true
TARGET_NO_RECOVERY := true
TARGET_NO_KERNEL := true

TARGET_BOARD_PLATFORM := s5pc110
TARGET_BOARD_PLATFORM_GPU := POWERVR_SGX540_120

TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi

BOARD_USES_GENERIC_AUDIO := true

BOARD_HAVE_BLUETOOTH := true
BT_USE_BTL_IF := true
BT_ALT_STACK := true

BRCM_BTL_INCLUDE_A2DP := true
BRCM_BT_USE_BTL_IF := true

<<<<<<< HEAD
BOARD_EGL_CFG := device/samsung/epic/prebuilt/egl/egl.cfg
=======
BOARD_EGL_CFG := device/samsung/vibrant/prebuilt/egl/egl.cfg
>>>>>>> 29f94e753adaa3c4b088a2c843522cee5b7e1d36

BOARD_KERNEL_CMDLINE := no_console_suspend=1 console=null
BOARD_KERNEL_BASE := 0x02e00000

BOARD_BOOTIMAGE_MAX_SIZE := $(call image-size-from-data-size,0x00280000)
BOARD_RECOVERYIMAGE_MAX_SIZE := $(call image-size-from-data-size,0x00500000)
BOARD_SYSTEMIMAGE_MAX_SIZE := $(call image-size-from-data-size,0x07500000)
BOARD_USERDATAIMAGE_MAX_SIZE := $(call image-size-from-data-size,0x04ac0000)
# The size of a block that can be marked bad.
BOARD_FLASH_BLOCK_SIZE := 131072

BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_HAS_NO_MISC_PARTITION := true
BOARD_USES_FFORMAT := true
BOARD_RECOVERY_IGNORE_BOOTABLES := true

<<<<<<< HEAD
BOARD_DATA_DEVICE := /dev/block/stl10
BOARD_DATA_FILESYSTEM := rfs
BOARD_DATA_FILESYSTEM_OPTIONS := llw,check=no,nosuid,nodev
## doesn't have dbdata partition
##BOARD_HAS_DATADATA := true
##BOARD_DATADATA_DEVICE := /dev/block/stl10
##BOARD_DATADATA_FILESYSTEM := rfs
##BOARD_DATADATA_FILESYSTEM_OPTIONS := llw,check=no,nosuid,nodev
=======
BOARD_DATA_DEVICE := /dev/block/mmcblk0p2
BOARD_DATA_FILESYSTEM := rfs
BOARD_DATA_FILESYSTEM_OPTIONS := llw,check=no,nosuid,nodev
BOARD_HAS_DATADATA := true
BOARD_DATADATA_DEVICE := /dev/block/stl10
BOARD_DATADATA_FILESYSTEM := rfs
BOARD_DATADATA_FILESYSTEM_OPTIONS := llw,check=no,nosuid,nodev
>>>>>>> 29f94e753adaa3c4b088a2c843522cee5b7e1d36
BOARD_SYSTEM_DEVICE := /dev/block/stl9
BOARD_SYSTEM_FILESYSTEM := rfs
BOARD_SYSTEM_FILESYSTEM_OPTIONS := llw,check=no
BOARD_CACHE_DEVICE := /dev/block/stl11
BOARD_CACHE_FILESYSTEM := rfs
BOARD_CACHE_FILESYSTEM_OPTIONS := llw,check=no,nosuid,nodev
<<<<<<< HEAD
BOARD_SDCARD_DEVICE_PRIMARY := /dev/block/mmcblk0
BOARD_SDCARD_DEVICE_SECONDARY := /dev/block/mmcblk0p1
BOARD_SDEXT_DEVICE := /dev/block/mmcblk1p2
TARGET_PREBUILT_KERNEL := device/samsung/epic/kernel
=======
# The following is the *actual* sd card, but those don't mount in recovery.
# The mmc blocks aren't even available.
# Only internal storage (mmcblk0) is available.
#BOARD_SDCARD_DEVICE_PRIMARY := /dev/block/mmcblk1
#BOARD_SDCARD_DEVICE_SECONDARY := /dev/block/mmcblk1p1
BOARD_SDEXT_DEVICE := /dev/block/mmcblk1p2
TARGET_PREBUILT_KERNEL := device/samsung/vibrant/kernel
>>>>>>> 29f94e753adaa3c4b088a2c843522cee5b7e1d36
