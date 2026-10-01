#
# Copyright (C) 2019 The LineageOS Project
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

DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Kernel (prebuilt; boot.img gets the DTBH dt.img injected by
# device/samsung/universal8895-common/tools/mkbootimg_dtbh.py)
PRODUCT_COPY_FILES += \
    device/samsung/dream2lte-kernel/Image:kernel

# Audio
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/audio/mixer_gains.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_gains.xml

# Inherit from common
$(call inherit-product, device/samsung/universal8895-common/device-common.mk)

$(call inherit-product-if-exists, vendor/samsung/dream2lte/dream2lte-vendor.mk)
