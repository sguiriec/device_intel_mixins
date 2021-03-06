PRODUCT_PACKAGES += \
    hostapd \
    hostapd_cli \
    wpa_supplicant \
    wpa_cli

# iwlwifi USC
PRODUCT_PACKAGES += \
    wifi_intel_usc

#copy iwlwifi wpa config files
PRODUCT_COPY_FILES += \
        device/intel/common/wlan/wpa_supplicant-common.conf:system/etc/wifi/wpa_supplicant.conf \
{{#tdls_auto}}
        device/intel/common/wlan/iwlwifi/wpa_supplicant_overlay.conf:system/etc/wifi/wpa_supplicant_overlay.conf \
{{/tdls_auto}}
{{^tdls_auto}}
        device/intel/common/wlan/iwlwifi/wpa_supplicant_overlay_no_tdls.conf:system/etc/wifi/wpa_supplicant_overlay.conf \
{{/tdls_auto}}
        frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
        frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml

PRODUCT_COPY_FILES += \
        device/intel/common/wlan/iwlwifi/load_iwlwifi.sh:system/bin/load_iwlwifi.sh


$(call inherit-product-if-exists, vendor/intel/fw/iwl/{{{iwl_platfrom}}}/iwl-fw-{{{chip_id}}}.mk)

# Add Manufacturing tool
PRODUCT_PACKAGES += \
    wlan_intel_restore.sh
