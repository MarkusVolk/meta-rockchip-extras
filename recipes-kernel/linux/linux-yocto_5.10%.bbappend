FILESEXTRAPATHS:prepend := "${THISDIR}/linux-yocto-5-10:"

SRC_URI:append:rockchip = " \
	file://linux-0001-rockchip-from-5.11.patch \
	file://linux-0002-rockchip-from-5.12.patch \
	file://linux-0003-rockchip-from-5.13.patch \
	file://linux-0004-rockchip-from-next.patch \
	file://linux-0005-rockchip-from-list.patch \
	file://linux-0010-v4l2-from-list.patch \
	file://linux-0020-drm-from-5.11.patch \
	file://linux-0021-drm-from-list.patch \
	file://linux-1000-drm-rockchip.patch \
	file://linux-1001-v4l2-rockchip.patch \
	file://linux-1002-for-libreelec.patch \
	file://linux-2000-v4l-wip-rkvdec-vp9.patch \
	file://linux-2001-v4l-wip-rkvdec-hevc.patch \
	file://linux-2002-v4l-wip-iep-driver.patch \
	file://add-bus-type-match-for-pci-ranges-parser.patch \
	file://rk3399-pcie-add-qos-register.patch \
	file://0001-rk3399-fix-cache-hierarchy-detection.patch \
	file://disable-mmc-power-on-shutdown.patch \
	file://pm-disable-async-suspend.patch \
	file://supported-inverted-jack-detect-GPIOs.patch \
	file://run-micdetect-only-if-jack-status-asserted.patch \
	file://rockchip-PCIe-bus-scan-delay.patch \
	file://PCI-rockchip-Make-ep-gpios-DT-property-optional.patch \
	file://tty-serdev-support-shutdown-op.patch \
	file://bluetooth-hci_serdev-Clear-registered-bit-on-unregister.patch \
	file://bluetooth-hci_bcm-disable-power-on-shutdown.patch \
	file://drm-allow-gpu-shutdown-on-reboot.patch \
	file://0001-rock-pi-4-overclocking.patch \
	file://rockchip-support-more-core-div-settings.patch \
	file://0002-drm-sched-Avoid-infinite-waits-in-the-drm_sched_enti.patch \
	file://clk-rockchip-export-ACLK_VCODEC-for-RK3036.patch \
	file://Updates-for-Radxa-ROCK-Pi-4.patch \
	file://0001-rock-pi-4b-c-fix-bluetooth-audio-distortion.patch \
	file://0001-rk3399-rock-pi-4.dtsi-use-only-supported-PCIe-link-s.patch \
	file://arm64-dts-rockchip-rk3399-Hook-up-DMA-for-UARTs.patch \
	file://1-3-drm-rockchip-define-gamma-registers-for-RK3399.patch \
	file://2-3-drm-rockchip-support-gamma-control-on-RK3399.patch \
	file://3-3-arm64-dts-rockchip-enable-gamma-control-on-RK3399.patch \
	file://drm-rockchip-vop-Add-timeout-for-DSP-hold.patch \
	file://drm-Fix-wrong-use-of-connector-in-vop_get_edp_connector.patch \
	file://2-2-arm64-dts-rockchip-add-interrupt-and-headphone-detection-for-Rock-Pi4-s-audio-codec.patch \
	file://drm-prime-gem-drm_gem_object_release_handle-by-handle.patch \
"

SRC_URI:append:rockchip = " \
	file://0001-hid_nintendo-add-Daniel-Ogorchocks-nintendo-switch-d.patch \
	file://0001-linux-yocto-5.10-backport-hid_playstation-driver.patch \
	file://0001-arm64-defconfig-drop-obsolete-config-options.patch \
	file://kernel.cfg \
	file://general-btsdio-ignore-uart-devs.patch \
	file://general-emmc-hs400es-init-tweak.patch \
	file://linux-020-eld-constraints-for-compressed-formats.patch \
"

#EXTRA_OEMAKE_rockchip += "CROSS_COMPILE_COMPAT=${STAGING_BINDIR_NATIVE}/arm-pokymllib32-linux-gnueabi/arm-pokymllib32-linux-gnueabi-"

