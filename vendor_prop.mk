#
# Copyright (C) 2018 The LineageOS Project
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
    persist.bluetooth.a2dp_offload.disabled=true \
    persist.vendor.audio.fluence.speaker=false \
    persist.vendor.audio.fluence.voicecall=true \
    persist.vendor.audio.fluence.voicerec=false \
    persist.vendor.audio.hw.binder.size_kbyte=1024 \
    ro.vendor.audio.sdk.fluencetype=fluence \
		ro.bluetooth.a2dp_offload.supported=true \
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
    vendor.audio.safx.pbe.enabled=true \
    vendor.voice.path.for.pcm.voip=true

# Bluetooth
PRODUCT_PROPERTY_OVERRIDES += \
    vendor.qcom.bluetooth.soc=smd

# Camera
PRODUCT_PROPERTY_OVERRIDES += \
    vendor.camera.hal1.packagelist=com.android.facelock \
    persist.vendor.camera.display.umax=1920x1080 \
    persist.vendor.camera.display.lmax=1280x720 \
    camera.lowpower.record.enable=1 \
    vidc.enc.dcvs.extra-buff-count=2 \
    persist.camera.HAL3.enabled=1

# Charger
PRODUCT_PROPERTY_OVERRIDES += \
    log.tag.smart_charger=W

# CNE
PRODUCT_PROPERTY_OVERRIDES += \
    persist.vendor.cne.feature=1
    persist.dpm.feature=1

# Display
PRODUCT_PROPERTY_OVERRIDES += \
    debug.sf.enable_hwc_vds=1 \
    ro.opengles.version=196610 \
    ro.sf.lcd_density=480 \
    ro.vendor.display.cabl=0 \
    debug.sdm.support_writeback=0 \
    vendor.display.disable_skip_validate=1 \
    vendor.display.enable_default_color_mode=1 \
    vendor.gralloc.enable_fb_ubwc=1

# SurfaceFlinger
PRODUCT_PROPERTY_OVERRIDES += \
		ro.surface_flinger.protected_contents=true \
		ro.surface_flinger.use_smart_90_for_video=true \
		ro.surface_flinger.set_display_power_timer_ms=10000 \
		ro.surface_flinger.set_touch_timer_ms=5000 \
		ro.surface_flinger.set_idle_timer_ms=9000

# Miracast
PRODUCT_PROPERTY_OVERRIDES += \
    persist.hwc.enable_vds=1 \
    persist.sys.wfd.nohdcp=1 \
    persist.debug.wfd.enable=1 \
    persist.sys.wfd.virtual=0 \
    vendor.gralloc.disable_wb_ubwc=1

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

# GPS
PRODUCT_PROPERTY_OVERRIDES += \
    ro.gps.agps_provider=1

# IMS
PRODUCT_PROPERTY_OVERRIDES += \
    persist.dbg.volte_avail_ovr=1 \
    persist.dbg.vt_avail_ovr=1 \
    persist.vendor.qti.telephony.vt_cam_interface=1

# IMS debug
PRODUCT_PROPERTY_OVERRIDES += \
		persist.vendor.ims.disableADBLogs=1 \
		persist.vendor.ims.disableDebugLogs=1 \
		persist.vendor.ims.disableIMSLogs=1 \
		persist.vendor.ims.disableQXDMLogs=1

# Media
PRODUCT_PROPERTY_OVERRIDES += \
    media.stagefright.audio.sink=280 \
    vendor.vidc.dec.downscalar_width=1920 \
    vendor.vidc.dec.downscalar_height=1088 \
    vendor.vidc.disable.split.mode=1 \
    vendor.vidc.enc.disable_bframes=1 \
    vendor.vidc.enc.disable_pframes=1 \
    vendor.vidc.enc.disable.pq=true \
    vendor.vidc.enc.narrow.searchrange=1 \
    vendor.video.disable.ubwc=1

# Memory optimizations
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.qti.sys.fw.bservice_enable=true

# Dark
#PRODUCT_PROPERTY_OVERRIDES += \
#    debug.hwui.force_dark=true

# Perf
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.extension_library=libqti-perfd-client.so

# Radio
PRODUCT_PROPERTY_OVERRIDES += \
    rild.libpath=/vendor/lib64/libril-qc-qmi-1.so \
    vendor.rild.libpath=/vendor/lib64/libril-qc-qmi-1.so \
    persist.radio.multisim.config=dsds \
		persist.vendor.radio.multisim_switch_support=true \
    ro.telephony.default_network=9,1 \
    persist.vendor.radio.apm_sim_not_pwdn=1 \
    persist.vendor.radio.custom_ecc=1 \
    persist.vendor.radio.rat_on=combine \
    persist.vendor.radio.sib16_support=1 \
    persist.vendor.radio.atfwd.start=true \
    persist.vendor.data.mode=concurrent \
    ro.vendor.use_data_netmgrd=true \
    persist.vendor.radio.add_power_save=1 \
    persist.data.netmgrd.qos.enable=true \
    persist.vendor.radio.aosp_usr_pref_sel=true

# SurfaceFlinger
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
		ro.surface_flinger.protected_contents=true

PRODUCT_PROPERTY_OVERRIDES += \
		debug.sf.early_phase_offset_ns=1500000 \
		debug.sf.early_app_phase_offset_ns=1500000 \
		debug.sf.early_gl_phase_offset_ns=3000000 \
		debug.sf.early_gl_app_phase_offset_ns=15000000

# Time services
PRODUCT_PROPERTY_OVERRIDES += \
    persist.vendor.delta_time.enable=true

# VoLTE hax
PRODUCT_PROPERTY_OVERRIDES += \
   persist.dbg.volte_avail_ovr=1 \
   persist.dbg.vt_avail_ovr=1

# WiFi
PRODUCT_PROPERTY_OVERRIDES += \
    wifi.interface=wlan0

# Maintainer
PRODUCT_PROPERTY_OVERRIDES += \
    ro.havoc.maintainer=SVB

# USB debugging
PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=adb \
    ro.adb.secure=0 \
    ro.secure=0 \
    ro.debuggable=1 \
		persist.service.adb.enable=1 \
		persist.service.debuggable=1 \
