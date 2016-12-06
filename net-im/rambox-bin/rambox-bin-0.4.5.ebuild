# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

inherit eutils autotools

DESCRIPTION="Free and Open Source messaging and emailing app that combines common web applications into one"
HOMEPAGE="http://rambox.pro/"

SRC_URI_AMD64="https://github.com/saenzramiro/rambox/releases/download/${PV}/Rambox-${PV}-x64.tar.gz"
SRC_URI_X86="https://github.com/saenzramiro/rambox/releases/download/${PV}/Rambox-${PV}-ia32.tar.gz"
SRC_URI="
        amd64? ( ${SRC_URI_AMD64} )
        x86? ( ${SRC_URI_X86} )
"

SRC_URI="https://github.com/saenzramiro/rambox/releases/download/${PV}/Rambox-${PV}-x64.tar.gz"

SLOT='0'

KEYWORDS="~amd64 ~x86"

RESTRICT="mirror"

S="${WORKDIR}"

src_unpack() {
    unpack ${A}
}

src_install() {
    dodir /usr/share/Rambox/
    cp -R ${WORKDIR}/Rambox-${PV}/* ${D}/usr/share/Rambox || die "Install failed!"
    dolib ${WORKDIR}/Rambox-${PV}/libnode.so
    dolib ${WORKDIR}/Rambox-${PV}/libffmpeg.so
    domenu ${FILESDIR}/rambox.desktop
    doicon ${FILESDIR}/rambox.png
    dodir /usr/bin
    dosym /usr/share/Rambox/Rambox /usr/bin/Rambox
}
