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

# Audio
PRODUCT_PROPERTY_OVERRIDES += \
    af.fast_track_multiplier=1 \
    audio.deep_buffer.media=true \
    audio.offload.min.duration.secs=30 \
    audio.offload.video=true \
    persist.vendor.audio.fluence.speaker=false \
    persist.vendor.audio.fluence.voicecall=true \
    persist.vendor.audio.fluence.voicerec=false \
    ro.vendor.audio.sdk.fluencetype=none \
    vendor.audio_hal.period_size=192 \
    vendor.audio.hw.aac.encoder=true \
    vendor.audio.offload.buffer.size.kb=64 \
    vendor.audio.offload.gapless.enabled=true \
    vendor.audio.offload.multiaac.enable=true \
    vendor.audio.offload.multiple.enabled=false \
    vendor.audio.offload.passthrough=false \
    vendor.audio.offload.track.enable=true \
    vendor.audio.parser.ip.buffer.size=262144 \
    vendor.audio.playback.mch.downsample=true \
    vendor.audio.pp.asphere.enabled=false \
    vendor.audio.safx.pbe.enabled=true \
    vendor.voice.path.for.pcm.voip=true \
    persist.vendor.audio.hw.binder.size_kbyte=1024

# Bluetooth
PRODUCT_PROPERTY_OVERRIDES += \
    vendor.qcom.bluetooth.soc=smd

# Camera
PRODUCT_PROPERTY_OVERRIDES += \
    persist.vendor.camera.display.umax=1920x1080 \
    persist.vendor.camera.display.lmax=1280x720 \
    camera.lowpower.record.enable=1 \
    vidc.enc.dcvs.extra-buff-count=2 \
    persist.camera.HAL3.enabled=1

# Charger
PRODUCT_PROPERTY_OVERRIDES += \
    log.tag.smart_charger=W

# Cast
PRODUCT_PROPERTY_OVERRIDES += \
    debug.sf.enable_hwc_vds=1 \
    persist.hwc.enable_vds=1 \
    persist.sys.wfd.nohdcp=1 \
    persist.debug.wfd.enable=1 \
    persist.sys.wfd.virtual=0 \
    vendor.video.disable.ubwc=1 \
    vendor.gralloc.disable_wb_ubwc=1 \
    vendor.gralloc.enable_fb_ubwc=1

# CNE-DPM
PRODUCT_PROPERTY_OVERRIDES += \
    persist.vendor.cne.feature=1 \
    persist.vendor.dpm.feature=0

# Dalvik
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.heapstartsize=16m \
    dalvik.vm.heapgrowthlimit=192m \
    dalvik.vm.heapsize=512m \
    dalvik.vm.heaptargetutilization=0.75 \
    dalvik.vm.heapminfree=2m \
    dalvik.vm.heapmaxfree=8m

# Display
PRODUCT_PROPERTY_OVERRIDES += \
    ro.opengles.version=196610 \
    ro.vendor.display.cabl=0 \
    debug.sdm.support_writeback=0 \
    debug.sf.enable_gl_backpressure=1 \
    vendor.display.disable_rotator_downscale=1 \
    vendor.display.disable_skip_validate=1

# DRM
PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true

# Factory reset protection
PRODUCT_PROPERTY_OVERRIDES += \
    ro.frp.pst=/dev/block/platform/soc/7824900.sdhci/by-name/config

# Fingerprint
PRODUCT_PROPERTY_OVERRIDES += \
    log.tag.synaFpHal=W \
    log.tag.SynapticsLIB=W \
    log.tag.synaTransport=W \
    persist.vendor.fp.gesture=1

# Fm
PRODUCT_PROPERTY_OVERRIDES += \
    vendor.hw.fm.init=0

# GPS
PRODUCT_PROPERTY_OVERRIDES += \
    ro.gps.agps_provider=1

# IMS
PRODUCT_PROPERTY_OVERRIDES += \
    persist.dbg.volte_avail_ovr=1 \
    persist.dbg.vt_avail_ovr=1 \
    persist.vendor.qti.telephony.vt_cam_interface=1

# Media
PRODUCT_PROPERTY_OVERRIDES += \
    media.stagefright.thumbnail.prefer_hw_codecs=true \
    media.stagefright.audio.sink=280 \
    debug.stagefright.ccodec=0 \
    debug.stagefright.omx_default_rank.sw-audio=1 \
    debug.stagefright.omx_default_rank=0 \
    vendor.vidc.dec.downscalar_width=1920 \
    vendor.vidc.dec.downscalar_height=1088 \
    vendor.vidc.disable.split.mode=1 \
    vendor.vidc.enc.disable_bframes=1 \
    vendor.vidc.enc.disable_pframes=1 \
    vendor.vidc.enc.narrow.searchrange=1

# Perf
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.extension_library=libqti-perfd-client.so

# Radio
PRODUCT_PROPERTY_OVERRIDES += \
    rild.libpath=/vendor/lib64/libril-qc-qmi-1.so \
    vendor.rild.libpath=/vendor/lib64/libril-qc-qmi-1.so \
    persist.vendor.radio.apm_sim_not_pwdn=1 \
    persist.radio.multisim.config=dsds \
    ro.telephony.default_network=9,1 \
    persist.vendor.radio.custom_ecc=1 \
    persist.vendor.radio.rat_on=combine \
    persist.vendor.radio.sib16_support=1 \
    persist.vendor.radio.aosp_usr_pref_sel=true

# Netmgrd
PRODUCT_PROPERTY_OVERRIDES += \
    persist.vendor.data.iwlan.enable=true \
    ro.vendor.use_data_netmgrd=true \
    persist.data.netmgrd.qos.enable=true \
    persist.vendor.data.mode=concurrent

# Time Services
PRODUCT_PROPERTY_OVERRIDES += \
    persist.vendor.delta_time.enable=true

# WiFi
PRODUCT_PROPERTY_OVERRIDES += \
    wifi.interface=wlan0

# QC framework value-adds
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    ro.vendor.qti.va_aosp.support=1

PRODUCT_ODM_PROPERTIES += \
    ro.vendor.qti.va_odm.support=1
