# Make generic definition of media components.
PRODUCT_COPY_FILES += device/intel/common/media/mfx_omxil_core.conf:system/etc/mfx_omxil_core.conf

# libstagefrighthw
BUILD_WITH_FULL_STAGEFRIGHT := true
PRODUCT_PACKAGES += \
    libstagefrighthw

# Media SDK and OMX IL components
PRODUCT_PACKAGES += \
    libmfxhw32 \
    libmfxsw32 \
    libmfx_omx_core \
    libmfx_omx_components_hw \
    libmfx_omx_components_sw \
    libgabi++-mfx \
    libstlport-mfx

# Build OMX wrapper codecs
PRODUCT_PACKAGES += \
    libmdp_omx_core \
    libstagefright_soft_mp3dec_mdp \
    libstagefright_soft_aacdec_mdp \
    libstagefright_soft_aacenc_mdp \
    libstagefright_soft_vorbisdec_mdp \
    libstagefright_soft_amrenc_mdp \
    libstagefright_soft_amrdec_mdp

