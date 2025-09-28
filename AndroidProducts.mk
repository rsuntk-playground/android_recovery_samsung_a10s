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

PRODUCT_MK_ARM := twrp_a10s
PRODUCT_MK_ARM64 := twrp_a10s-arm64

PRODUCT_MAKEFILES := \
    $(LOCAL_DIR)/$(PRODUCT_MK_ARM).mk \
    $(LOCAL_DIR)/$(PRODUCT_MK_ARM64).mk

# ARM
COMMON_LUNCH_CHOICES := \
    $(PRODUCT_MK_ARM)-user \
    $(PRODUCT_MK_ARM)-userdebug \
    $(PRODUCT_MK_ARM)-eng

# ARM64
COMMON_LUNCH_CHOICES += \
    $(PRODUCT_MK_ARM64)-user \
    $(PRODUCT_MK_ARM64)-userdebug \
    $(PRODUCT_MK_ARM64)-eng
