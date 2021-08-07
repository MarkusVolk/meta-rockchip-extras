SUMMARY = "Firmware file for rockchip display port"
SECTION = "kernel"

LICENSE = "LICENSE.rockchip"

LIC_FILES_CHKSUM = "file://${THISDIR}/../../files/custom-licenses/LICENSE.rockchip;md5=90300c2f2cb509485f11b78901a83141"

PR = "1"

SRC_URI = "https://kernel.googlesource.com/pub/scm/linux/kernel/git/firmware/linux-firmware/+archive/master/rockchip.tar.gz"

SRC_URI[sha256sum] = "f7e4d4f6eb84593c94e236e15b48b471795c3d7718c9e5ccd44dc41ae251e41f"



inherit allarch

CLEANBROKEN = "1"

do_install() {
	install -d ${D}${nonarch_base_libdir}/firmware/rockchip
	# Display port firmware
	install -m644 ${WORKDIR}/dptx.bin ${D}${nonarch_base_libdir}/firmware/rockchip
	install -m644 ${THISDIR}/../../files/custom-licenses/LICENSE.rockchip ${D}${nonarch_base_libdir}/firmware/LICENSE.rockchip
}

PACKAGES =+ "${PN}-license"

LICENSE:${PN}-license = "LICENSE.rockchip"
FILES:${PN}-license = "${nonarch_base_libdir}/firmware/LICENSE.rockchip"
FILES:${PN} = "${nonarch_base_libdir}/firmware"

RDEPENDS:${PN} += "${PN}-license"

# Firmware files are generally not ran on the CPU, so they can be
# allarch despite being architecture specific
INSANE_SKIP = "arch"

