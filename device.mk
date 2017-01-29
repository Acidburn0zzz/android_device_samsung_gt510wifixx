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

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Also get non-open-source specific aspects if available
$(call inherit-product-if-exists, vendor/samsung/gt510wifixx/gt510wifixx-vendor.mk)

# Device overlay
DEVICE_PACKAGE_OVERLAYS += device/samsung/gt510wifixx/overlay

# Audio
PRODUCT_COPY_FILES += \
    device/samsung/gt510wifixx/config/audio/audio_effects.conf:system/etc/audio_effects.conf \
    device/samsung/gt510wifixx/config/audio/audio_policy.conf:system/etc/audio_policy.conf \
	device/samsung/gt510wifixx/config/audio/audio_platform_info.xml:system/etc/audio_platform_info.xml \
    device/samsung/gt510wifixx/config/audio/mixer_paths.xml:system/etc/mixer_paths.xml \
    device/samsung/gt510wifixx/config/audio/sound_trigger_mixer_paths.xml:system/etc/sound_trigger_mixer_paths.xml \
    device/samsung/gt510wifixx/config/audio/sound_trigger_platform_info.xml:system/etc/sound_trigger_platform_info.xml \
    device/samsung/gt510wifixx/config/audio/acdb/Bluetooth_cal.acdb:system/etc/Bluetooth_cal.acdb \
    device/samsung/gt510wifixx/config/audio/acdb/General_cal.acdb:system/etc/General_cal.acdb \
    device/samsung/gt510wifixx/config/audio/acdb/Global_cal.acdb:system/etc/Global_cal.acdb \
    device/samsung/gt510wifixx/config/audio/acdb/Handset_cal.acdb:system/etc/Handset_cal.acdb \
    device/samsung/gt510wifixx/config/audio/acdb/Hdmi_cal.acdb:system/etc/Hdmi_cal.acdb \
    device/samsung/gt510wifixx/config/audio/acdb/Headset_cal.acdb:system/etc/Headset_cal.acdb \
    device/samsung/gt510wifixx/config/audio/acdb/Speaker_cal.acdb:system/etc/Speaker_cal.acdb

# This is a tablet.
PRODUCT_CHARACTERISTICS := tablet
PRODUCT_AAPT_CONFIG := xlarge
PRODUCT_AAPT_PREF_CONFIG := mdpi

# Input
PRODUCT_PACKAGES += \
    InputDisabler

# Boot animation
TARGET_BOOTANIMATION_HALF_RES := true
TARGET_SCREEN_HEIGHT := 1024
TARGET_SCREEN_WIDTH := 768

# Disable RIL
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    ro.carrier=wifi-only \
    ro.radio.noril=1

# GPS
PRODUCT_COPY_FILES += \
    device/samsung/gt510wifixx/configs/gps/gps.conf:system/etc/gps.conf

# Media
PRODUCT_COPY_FILES += \
    device/samsung/gt510wifixx/configs/media/media_codecs.xml:system/etc/media_codecs.xml \
    device/samsung/gt510wifixx/configs/media/media_profiles.xml:system/etc/media_profiles.xml

# Common msm8916-common
$(call inherit-product, device/samsung/msm8916-common/msm8916.mk)

