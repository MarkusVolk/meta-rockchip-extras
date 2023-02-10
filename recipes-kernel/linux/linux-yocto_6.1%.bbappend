FILESEXTRAPATHS:prepend := "${THISDIR}/linux-yocto-6-1:"

SRC_URI:append:rockchip = " \
	file://kernel.cfg \
"

SRC_URI:append:rockchip = " \
	file://libreelec/linux-0002-rockchip-from-list.patch \
	file://libreelec/linux-0011-v4l2-from-list.patch \
	file://libreelec/linux-0020-drm-from-list.patch \
	file://libreelec/linux-1000-drm-rockchip.patch \
	file://libreelec/linux-1001-v4l2-rockchip.patch \
	file://libreelec/linux-1002-for-libreelec.patch \
	file://libreelec/linux-2000-v4l2-wip-rkvdec-hevc.patch \
	file://libreelec/linux-2001-v4l2-wip-iep-driver.patch \
"

SRC_URI:append:rockchip = " \
	file://rockchip/add-board-nanopi-m4v2.patch \
	file://rockchip/add-board-nanopi-r2c.patch \
	file://rockchip/add-board-nanopi-r2s.patch \
	file://rockchip/add-board-orangepi-4-lts.patch \
	file://rockchip/add-board-orangepi-4.patch \
	file://rockchip/add-board-orangepi-r1-plus-lts.patch \
	file://rockchip/add-board-orangepi-r1plus.patch \
	file://rockchip/add-boards-to-dts-makefile.patch \
	file://rockchip/add-board-tinker-board-2.patch \
	file://rockchip/add-board-tvbox-rk3318.patch \
	file://rockchip/add-board-xxx-nanopi-Neo3-with-enabled-I2S-and-spdif.patch \
	file://rockchip/add-board-Z28-PRO-as-link-to-Rock64.patch \
	file://rockchip/add-fusb30x-driver.patch \
	file://rockchip/add-maker-friendlyarm.patch \
	file://rockchip/board-helios64-remove-overclock.patch \
	file://rockchip/board-nanopc-t4-add-typec-dp.patch \
	file://rockchip/board-nanopi-m4v2-dts-add-sound-card.patch \
	file://rockchip/board-nanopi-m4v2-dts-ethernet-tweak.patch \
	file://rockchip/board-nanopi-m4v2-dts-fix-stability-issues.patch \
	file://rockchip/board-nanopi-r2s-r8152-customise-leds.patch \
	file://rockchip/board-nanopi-r2s-r8152-mac-from-dt.patch \
	file://rockchip/board-pbp-fix-wonky-wifi-bt.patch \
	file://rockchip/board-rk3328-roc-cc-dts-enable-dmc.patch \
	file://rockchip/board-rk3328-roc-cc-dts-ram-profile.patch \
	file://rockchip/board-rk3328-roc-cc-rock64-add-usb3.patch \
	file://rockchip/board-rk3328-roc-pc-dts-ram-profile.patch \
	file://rockchip/board-rock3a-emmc-sfc.patch \
	file://rockchip/board-rock3a-gmac1.patch \
	file://rockchip/board-rock3a-hdmi-sound.patch \
	file://rockchip/board-rock3a-pcie.patch \
	file://rockchip/board-rock3a-usb3.patch \
	file://rockchip/board-rock3a-vop2-hdmi.patch \
	file://rockchip/board-rock64-mail-supply.patch \
	file://rockchip/board-rockpi4-0001-arm64-dts-audio-over-hdmi.patch \
	file://rockchip/board-rockpi4-0002-arm64-dts-leds.patch \
	file://rockchip/board-rockpi4-0003-arm64-dts-pcie.patch \
	file://rockchip/board-rockpi4-Add-DT-link-for-backward-compatibility.patch \
	file://rockchip/board-rockpi4-FixMMCFreq.patch \
	file://rockchip/board-rockpro64-change-rx_delay-for-gmac.patch \
	file://rockchip/board-rockpro64-fix-emmc.patch \
	file://rockchip/board-rockpro64-fix-spi1-flash-speed.patch \
	file://rockchip/board-rockpro64-work-led-heartbeat.patch \
	file://rockchip/board-roc-rk3399-pc-fix-fusb302-compatible.patch \
	file://rockchip/general-add-miniDP-dt-doc.patch \
	file://rockchip/general-add-miniDP-virtual-extcon.patch \
	file://rockchip/general-add-overlay-compilation-support.patch \
	file://rockchip/general-add-overlay-configfs.patch \
	file://rockchip/general-add-xtx-spi-nor-chips.patch \
	file://rockchip/general-bluetooth-02-add-support-for-RTL8723CS.patch \
	file://rockchip/general-bluetooth-03-hci_h5-add-binding-RTL8723CS.patch \
	file://rockchip/general-bluetooth-04-add-rtl8703bs.patch \
	file://rockchip/general-bluetooth-add-new-quirk.patch \
	file://rockchip/general-enhance-backport-es8328-driver.patch \
	file://rockchip/general-fix-es8316-kernel-panic.patch \
	file://rockchip/general-fix-mmc-signal-voltage-before-reboot.patch \
	file://rockchip/general-increasing_DMA_block_memory_allocation_to_2048.patch \
	file://rockchip/general-possibility-of-disabling-rk808-rtc.patch \
	file://rockchip/general-rk3328-dtsi-trb-ent-quirk.patch \
	file://rockchip/general-rk808-configurable-switch-voltage-steps.patch \
	file://rockchip/general-rt5651-add-mclk.patch \
	file://rockchip/general-workaround-broadcom-bt-serdev.patch \
	file://rockchip/regulator-add-fan53200-driver.patch \
	file://rockchip/rk3328-add-dmc-driver.patch \
	file://rockchip/rk3328-add-rga-node.patch \
	file://rockchip/rk3328-dtsi-mmc-reset-properties.patch \
	file://rockchip/rk3328-dtsi-sdmmc-ext-node.patch \
	file://rockchip/rk3328-dtsi-usb3-reset-properties.patch \
	file://rockchip/rk3399-add-sclk-i2sout-src-clock.patch \
	file://rockchip/rk3399-enable-dwc3-xhci-usb-trb-quirk.patch \
	file://rockchip/rk3399-pci-rockchip-support-ep-gpio-undefined-case.patch \
	file://rockchip/rk3399-rp64-pcie-Reimplement-rockchip-PCIe-bus-scan-delay.patch \
	file://rockchip/rk3399-sd-drive-level-8ma.patch \
	file://rockchip/rk3399-unlock-temperature.patch \
	file://rockchip/rk356x-dts-hdmi.patch \
	file://rockchip/rk356x-dts-hdmi-sound.patch \
	file://rockchip/rk356x-dts-pcie2x1.patch \
	file://rockchip/rk356x-dts-vpu.patch \
	file://rockchip/rk356x-rga.patch \
	file://rockchip/wifi-4001-add-realtek-8723cs-kconfig-makefile.patch \
	file://rockchip/wifi-4002-add-realtek-8723cs.patch \
	file://rockchip/wifi-4002-realtek-8723cs-Fix-IEEE80211_MAX_AMPDU_BUF.patch \
	file://rockchip/wifi-4003-add-bcm43342-chip.patch \
	file://rockchip/wifi-4003-uwe5622-driver.patch \
	file://rockchip/wifi-4004-fix-uwe5622-warnings.patch \
	file://rockchip/wifi-4005-uwe5622-makefile.patch \
	file://rockchip/wifi-hf-lps170-bl602-kconfig-makefile.patch \
	file://rockchip/wifi-hf-lps170-bl602.patch \
	file://rockchip/workaround-need-proper-adjustement-for-reading-MAC-f.patch \
"

#EXTRA_OEMAKE_rockchip += "CROSS_COMPILE_COMPAT=${STAGING_BINDIR_NATIVE}/arm-pokymllib32-linux-gnueabi/arm-pokymllib32-linux-gnueabi-"

