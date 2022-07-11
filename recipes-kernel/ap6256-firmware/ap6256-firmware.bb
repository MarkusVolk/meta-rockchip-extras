SUMMARY = "Firmware files for the ap6256 wifi/bt module"
SECTION = "kernel"

LICENSE = "LICENSE.broadcom_bcm43xx"

LIC_FILES_CHKSUM = "file://${THISDIR}/../../files/custom-licenses/LICENSE.broadcom_bcm43xx;md5=083805bee8524f9b6ee913d4a40a641a"

PR = "1"

SRC_URI = "git://gitlab.manjaro.org/manjaro-arm/packages/community/ap6256-firmware.git;protocol=https;branch=master \
"

S = "${WORKDIR}/git"
SRCREV = "${AUTOREV}"

inherit allarch

CLEANBROKEN = "1"

do_install() {
	install -d ${D}${nonarch_base_libdir}/firmware/brcm
	# Bluetooth firmware
	install -m644 ${S}/BCM4345C5.hcd ${D}${nonarch_base_libdir}/firmware
	install -m644 ${S}/BCM4345C5.hcd ${D}${nonarch_base_libdir}/firmware/brcm/BCM.hcd
	install -m644 ${S}/BCM4345C5.hcd ${D}${nonarch_base_libdir}/firmware/brcm
	# Wifi firmware
	install -m644 ${S}/brcmfmac43456-sdio.AP6256.txt ${D}${nonarch_base_libdir}/firmware
	install -m644 ${S}/brcmfmac43456-sdio.AP6256.txt ${D}${nonarch_base_libdir}/firmware/brcm/brcmfmac43456-sdio.txt
	install -m644 ${S}/fw_bcm43456c5_ag.bin ${D}${nonarch_base_libdir}/firmware/brcm/brcmfmac43456-sdio.bin
	install -m644 ${S}/brcmfmac43456-sdio.clm_blob ${D}${nonarch_base_libdir}/firmware/brcm/brcmfmac43456-sdio.clm_blob
	install -m644 ${S}/brcmfmac43456-sdio.AP6256.txt ${D}${nonarch_base_libdir}/firmware/brcm/brcmfmac43456-sdio.radxa,rockpi4b.txt
	install -m644 ${S}/brcmfmac43456-sdio.AP6256.txt ${D}${nonarch_base_libdir}/firmware/brcm/brcmfmac43456-sdio.radxa,rockpi4b-plus.txt
	install -m644 ${S}/brcmfmac43456-sdio.AP6256.txt ${D}${nonarch_base_libdir}/firmware/brcm/brcmfmac43456-sdio.radxa,rockpi4c.txt
	install -m644 ${S}/brcmfmac43456-sdio.AP6256.txt ${D}${nonarch_base_libdir}/firmware/brcm/brcmfmac43456-sdio.pine64,pinebook-pro.txt
	install -m644 ${S}/brcmfmac43456-sdio.AP6256.txt ${D}${nonarch_base_libdir}/firmware/brcm/brcmfmac43456-sdio.pine64,rockpro64-v2.1.txt
	install -m644 ${S}/brcmfmac43456-sdio.AP6256.txt ${D}${nonarch_base_libdir}/firmware/brcm/brcmfmac43456-sdio.rockchip,rk3399-orangepi.txt
	install -m644 ${THISDIR}/../../files/custom-licenses/LICENSE.broadcom_bcm43xx ${D}${nonarch_base_libdir}/firmware/LICENSE.broadcom_bcm43xx
}


PACKAGES =+ "${PN}-license"

LICENSE:${PN}-license = "LICENSE.broadcom_bcm43xx"
FILES:${PN}-license = "${nonarch_base_libdir}/firmware/LICENSE.broadcom_bcm43xx"
FILES:${PN} = "${nonarch_base_libdir}/firmware"

RDEPENDS:${PN} += "${PN}-license wireless-regdb-static"

# Firmware files are generally not ran on the CPU, so they can be
# allarch despite being architecture specific
INSANE_SKIP = "arch"

