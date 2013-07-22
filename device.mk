# Copyright (C) 2011 The Android Open Source Project
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

# This file includes all definitions that apply only to dragon devices
#
# Anything that is generic to all softwinner products should go in the common directory
#
# Everything in this directory will become public

$(call inherit-product, device/softwinner/common/device.mk)
$(call inherit-product-if-exists, vendor/softwinner/dragon/dragon-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/softwinner/dragon/overlay

# These are the hardware-specific features
PRODUCT_COPY_FILES += \
        frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
        frameworks/native/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
#

PRODUCT_COPY_FILES += \
	device/softwinner/dragon/init.sun4i.modules.rc:root/init.sun4i.modules.rc \
	device/softwinner/dragon/config/camera.cfg:system/etc/camera.cfg \
	device/softwinner/dragon/config/media_profiles.xml:system/etc/media_profiles.xml \
	device/softwinner/dragon/config/axp20-supplyer.kl:system/usr/keylayout/axp20-supplyer.kl \
	device/softwinner/dragon/config/sun4i-keyboard.kl:system/usr/keylayout/sun4i-keyboard.kl \
	device/softwinner/dragon/config/Goodix-TS-board-3.idc:system/usr/idc/Goodix-TS-board-3.idc \
	device/softwinner/dragon/config/devicespecific.sh:recovery/root/sbin/devicespecific.sh \
	device/softwinner/dragon/goodix_touch_3F.ko:system/lib/goodix_touch_3F.ko \
	device/softwinner/dragon/goodix_touch_3F.ko:recovery/root/lib/goodix_touch_3F.ko \
#
