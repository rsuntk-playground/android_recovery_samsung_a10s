#
# Copyright (C) 2025 The Android Open Source Project
# Copyright (C) 2025 The TWRP Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

LOCAL_PATH := device/samsung/a10s

# Screen
TARGET_SCREEN_WIDTH := 720
TARGET_SCREEN_HEIGHT := 1520
TARGET_SCREEN_DENSITY := 271
TARGET_RECOVERY_PIXEL_FORMAT := "RGBA_8888"

# Architecture
TARGET_DEVICE_ARCH ?= arm
ifeq ($(TARGET_DEVICE_ARCH),arm)
$(warning "Building for arm")
include $(LOCAL_PATH)/common/arch_arm.mk
else
$(warning "Building for arm64")
include $(LOCAL_PATH)/common/arch_arm64.mk
endif

# Health HAL
PRODUCT_PACKAGES += \
    android.hardware.health@2.1-impl \
    android.hardware.health@2.1-service \
    libhealthd.$(PRODUCT_PLATFORM)

# Copy
PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*,device/samsung/a10s/recovery/root,recovery/root)
