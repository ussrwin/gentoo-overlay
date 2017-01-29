# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

inherit user

DESCRIPTION="Fast, cross-platform HTTP/2 web server with automatic HTTPS"
HOMEPAGE="https://caddyserver.com"
SRC_URI="https://github.com/mholt/caddy/releases/download/v${PV}/caddy_linux_amd64.tar.gz -> ${P}.tar.gz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}
	>=dev-lang/go-1.6"

HOME_DIR="/var/lib/caddy"
LOG_DIR="/var/log/caddy"
SSL_DIR="/etc/caddy/ssl"

S=${WORKDIR}

pkg_setup(){
	ebegin "Creating caddy user and group"
	enewgroup caddy
	enewuser caddy -1 -1 ${HOME_DIR} caddy
	eend $?
}

src_install() {
	mv caddy_linux_amd64 caddy
	dobin caddy

	newinitd "${FILESDIR}"/caddy.initd caddy
	newconfd "${FILESDIR}"/caddy.confd caddy

	keepdir ${LOG_DIR}
	fowners caddy:caddy ${LOG_DIR}

	keepdir ${SSL_DIR}
	fperms 750 ${SSL_DIR}
	fowners caddy:caddy ${SSL_DIR}

	insinto /etc/caddy
	doins "${FILESDIR}"/Caddyfile.example

	dodoc {CHANGES,LICENSES,README}.txt
}
