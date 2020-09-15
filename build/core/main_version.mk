# Build fingerprint
ifneq ($(BUILD_FINGERPRINT),)
ADDITIONAL_BUILD_PROPERTIES += \
    ro.build.fingerprint=$(BUILD_FINGERPRINT)
endif

# LineageOS System Version
ADDITIONAL_BUILD_PROPERTIES += \
    ro.lime.version=$(LIME_VERSION) \
    ro.lime.releasetype=$(LIME_BUILDTYPE) \
    ro.lime.build.version=$(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR) \
    ro.modversion=$(LIME_VERSION) \
    ro.limelegal.url=https://limeos.me/legal

# Lime Platform Display Version
ADDITIONAL_BUILD_PROPERTIES += \
    ro.lime.display.version=$(LIME_DISPLAY_VERSION)
