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

#
# This file sets variables that control the way modules are built
# thorughout the system. It should not be used to conditionally
# disable makefiles (the proper mechanism to control what gets
# included in a build is to use PRODUCT_PACKAGES in a product
# definition file).
#

# inherit from msm8916-common
-include device/samsung/msm8916-common/BoardConfigCommon.mk

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/samsung/gt510wifixx/bluetooth

# Partition sizes
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 13631488
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 15728640
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 3145728000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 12138278912
BOARD_FLASH_BLOCK_SIZE := 131072

# Ramdisk
PRODUCT_PACKAGES += \
	fstab.qcom \
	init.carrier.rc \
	init.class_main.sh \
	init.ksm.sh \
	init.mdm.sh \
	init.qcom.audio.sh \
	init.qcom.bt.sh \
	init.qcom.uicc.sh \
	init.qcom.wifi.sh \
	init.qcom.post_boot.sh \
	init.qcom.class_core.sh \
	init.qcom.early_boot.sh \
	init.qcom.syspart_fixup.sh \
	init.qcom.usb.rc \
	init.qcom.usb.sh \
	init.qcom.rc \
	init.qcom.fm.sh \
	init.qcom.sh \
	ueventd.qcom.rc

TARGET_RECOVERY_FSTAB := $(VENDOR_PATH)/rootdir/etc/fstab.qcom

# Assert
TARGET_OTA_ASSERT_DEVICE := gt510wifi,gt510wifixx,SM-T350,gt510lte,gt510ltexx,SM-T550

# Kernel
TARGET_KERNEL_CONFIG := gt510wifi_defconfig

# Misc.
TARGET_SYSTEM_PROP := device/samsung/gt510wifixx/system.prop

# Inherit from the proprietary version
-include vendor/samsung/gt510wifixx/BoardConfigVendor.mk