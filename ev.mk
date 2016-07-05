#
# Copyright (C) 2015 The Evervolv Project
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

# Call this first so apn list is actually copied
$(call inherit-product, $(SRC_EVERVOLV_DIR)/config/apns.mk)

# Product makefile
$(call inherit-product, device/samsung/gt510wifixx/full_gt510wifixx.mk)

# Inherit some common evervolv stuff.
$(call inherit-product, $(SRC_EVERVOLV_DIR)/config/common_full_tablet_wifionly.mk)

# Pull all dictionaries
$(call inherit-product, $(SRC_EVERVOLV_DIR)/config/dictionaries/intl.mk)

# Boot animation
BOOT_ANIMATION_SIZE := xga

#
# Setup device specific product configuration.
#
PRODUCT_NAME := ev_gt510wifixx
PRODUCT_DEVICE := gt510wifixx
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung
PRODUCT_MODEL := SM-T550

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += \
  TARGET_DEVICE=gt510wifi \
  PRODUCT_NAME=gt510wifixx \
  BUILD_FINGERPRINT=samsung/gt510wifixx/gt58wifi:6.0.1/MMB29M/T550XXU1BPE1:user/release-keys \
  PRIVATE_BUILD_DESC="gt510wifixx-user 6.0.1 MMB29M T550XXU1BPE1 release-keys"


# Set up the product codename, build version & MOTD.
PRODUCT_CODENAME := candidus

PRODUCT_MOTD :="\n\n\n--------------------MESSAGE---------------------\nThank you for choosing Evervolv for your Samsung Galaxy A Tablet\nPlease visit us at \#evervolv on irc.freenode.net\nFollow @preludedrew for the latest Evervolv updates\nGet the latest rom at evervolv.com\n------------------------------------------------\n"


