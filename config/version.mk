# Copyright (C) 2016-2017 AOSiP
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

# Versioning System
LIME_VERSION = 2.1

TARGET_PRODUCT_SHORT := $(subst lime_,,$(LIME_BUILD_TYPE))

ifndef LIME_BUILD_TYPE
    LIME_BUILD_TYPE := UNOFFICIAL
endif

# Set all versions
BUILD_DATE := $(shell date -u +%Y%m%d)
BUILD_TIME := $(shell date -u +%H%M)
LIME_BUILD_DATE := $(BUILD_DATE)-$(BUILD_TIME)
LIME_BUILD_VERSION := AospLime_$(LIME_VERSION)-$(LIME_BUILD)-$(LIME_BUILD_DATE)-$(LIME_BUILD_TYPE)
ROM_FINGERPRINT := AospLime/$(PLATFORM_VERSION)/$(TARGET_PRODUCT_SHORT)/$(BUILD_TIME)

PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
  ro.lime.build.version=$(LIME_VERSION) \
  ro.lime.build.date=$(BUILD_DATE) \
  ro.lime.buildtype=$(LIME_BUILD_TYPE) \
  ro.lime.fingerprint=$(ROM_FINGERPRINT) \
  ro.lime.version=$(LIME_VERSION) \
  ro.lime.device=$(LIME_BUILD) \
  ro.modversion=$(LIME_VERSION)
