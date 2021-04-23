FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

SRC_URI_append_rockchip = " \
	file://linux-0001-rockchip-from-5.11.patch \
	file://linux-0002-rockchip-from-next.patch \
	file://linux-0003-rockchip-from-list.patch \
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
"


SRC_URI_append_rockchip = " \
	file://kernel.cfg \
	file://general-btsdio-ignore-uart-devs.patch \
	file://general-emmc-hs400es-init-tweak.patch \
"

RRECOMMENDS_${PN}_rockchip += "rockchip-firmware ap6256-firmware"

#EXTRA_OEMAKE_rockchip += "CROSS_COMPILE_COMPAT=${STAGING_BINDIR_NATIVE}/arm-pokymllib32-linux-gnueabi/arm-pokymllib32-linux-gnueabi-"

