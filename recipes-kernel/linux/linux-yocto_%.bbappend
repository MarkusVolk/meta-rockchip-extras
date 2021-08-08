FILESEXTRAPATHS:prepend := "${THISDIR}/files:"

SRC_URI:append:rockchip = " \
	file://linux-0001-rockchip-from-5.11.patch \
	file://linux-0002-rockchip-from-5.12.patch \
	file://linux-0003-rockchip-from-5.13.patch \
	file://linux-0003-rockchip-from-next.patch \
	file://linux-0004-rockchip-from-list.patch \
	file://linux-0010-v4l2-from-list.patch \
	file://linux-0020-drm-from-5.11.patch \
	file://linux-0021-drm-from-list.patch \
	file://linux-1001-drm-rockchip.patch \
	file://linux-1002-v4l2-rockchip.patch \
	file://linux-1003-for-libreelec.patch \
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
	file://0001-drm-panfrost-Make-sure-MMU-context-lifetime-is-not-b.patch \
	file://0002-drm-sched-Avoid-infinite-waits-in-the-drm_sched_enti.patch \
	file://0001-rkvdec.c-fix-for-recent-headers.patch \
"


SRC_URI:append:rockchip = " \
	file://0001-hid_nintendo-add-Daniel-Ogorchocks-nintendo-switch-d.patch \
	file://0001-arm64-defconfig-drop-obsolete-config-options.patch \
	file://kernel.cfg \
	file://general-btsdio-ignore-uart-devs.patch \
	file://general-emmc-hs400es-init-tweak.patch \
	file://linux-020-eld-constraints-for-compressed-formats.patch \
"

#EXTRA_OEMAKE_rockchip += "CROSS_COMPILE_COMPAT=${STAGING_BINDIR_NATIVE}/arm-pokymllib32-linux-gnueabi/arm-pokymllib32-linux-gnueabi-"

