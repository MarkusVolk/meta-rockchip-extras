FILESEXTRAPATHS:prepend := "${THISDIR}/linux-yocto-5-15:"

SRC_URI:append:rockchip = " \
	file://kernel.cfg \
	file://0001-hid_nintendo-add-Daniel-Ogorchocks-nintendo-switch-d.patch \
"

SRC_URI:append:rockchip = " \
	file://libreelec/linux-0001-rockchip-from-5.16.patch \
	file://libreelec/linux-0002-rockchip-from-list.patch \
	file://libreelec/linux-0011-v4l2-from-list.patch \
	file://libreelec/linux-0020-drm-from-list.patch \
	file://libreelec/linux-1000-drm-rockchip.patch \
	file://libreelec/linux-1001-v4l2-rockchip.patch \
	file://libreelec/linux-1002-for-libreelec.patch \
	file://libreelec/linux-2000-v4l-wip-rkvdec-vp9.patch \
	file://libreelec/linux-2001-v4l-wip-rkvdec-hevc.patch \
	file://libreelec/linux-2002-v4l-wip-iep-driver.patch \
	file://libreelec/linux-020-eld-constraints-for-compressed-formats.patch \
	file://libreelec/linux-051-ouya_controller_support.patch \
	file://libreelec/linux-058.05-hid_sony-add_autorepeat_for_PS3_remotes.patch \
	file://libreelec/linux-062-imon_pad_ignore_diagonal.patch \
	file://libreelec/linux-999.02-0001-pm-disable-async-suspend-resume-by-default.patch \
	file://libreelec/linux-999-no-lzma-in-x86-perf-build.patch \
	file://rockchip/0001-rk3399-fix-cache-hierarchy-detection.patch \
	file://rockchip/0001-rock-pi-4b-c-fix-bluetooth-audio-distortion.patch \
	file://rockchip/0001-rock-pi-4-overclocking.patch \
	file://rockchip/0002-drm-sched-Avoid-infinite-waits-in-the-drm_sched_enti.patch \
	file://rockchip/1-3-drm-rockchip-define-gamma-registers-for-RK3399.patch \
	file://rockchip/2-3-drm-rockchip-support-gamma-control-on-RK3399.patch \
	file://rockchip/3-3-arm64-dts-rockchip-enable-gamma-control-on-RK3399.patch \
	file://rockchip/add-bus-type-match-for-pci-ranges-parser.patch \
	file://rockchip/arm64-dts-rockchip-rk3399-Hook-up-DMA-for-UARTs.patch \
	file://rockchip/drm-Fix-wrong-use-of-connector-in-vop_get_edp_connector.patch \
	file://rockchip/drm-prime-gem-drm_gem_object_release_handle-by-handle.patch \
	file://rockchip/drm-rockchip-vop-Add-timeout-for-DSP-hold.patch \
	file://rockchip/general-btsdio-ignore-uart-devs.patch \
	file://rockchip/run-micdetect-only-if-jack-status-asserted.patch \
	file://rockchip/supported-inverted-jack-detect-GPIOs.patch \
	file://rockchip/media-hantro-Hook-up-RK3399-JPEG-encoder-output.patch \
"

#EXTRA_OEMAKE_rockchip += "CROSS_COMPILE_COMPAT=${STAGING_BINDIR_NATIVE}/arm-pokymllib32-linux-gnueabi/arm-pokymllib32-linux-gnueabi-"

