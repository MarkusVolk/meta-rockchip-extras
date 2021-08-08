SUMMARY = "Firmware file for rockchip display port"
SECTION = "kernel"

LICENSE = "LICENSE.rockchip"

LIC_FILES_CHKSUM = "file://${THISDIR}/../../files/custom-licenses/LICENSE.rockchip;md5=90300c2f2cb509485f11b78901a83141"

PR = "1"

SRC_URI = "https://anduin.linuxfromscratch.org/sources/linux-firmware/rockchip/dptx.bin"

SRC_URI[sha256sum] = "203c5f061fb5075e4ca5398f8becc74e7cc450b494af857da5400788a7eae20b"

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

