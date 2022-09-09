FILESEXTRAPATHS:prepend := "${THISDIR}/linux-yocto-5-19:"

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

#EXTRA_OEMAKE_rockchip += "CROSS_COMPILE_COMPAT=${STAGING_BINDIR_NATIVE}/arm-pokymllib32-linux-gnueabi/arm-pokymllib32-linux-gnueabi-"

