# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3
PYTHON_DEPEND="3"

inherit python

DESCRIPTION="Console XMPP client that looks like most famous IRC clients"
ATTACH_ID="91"
HOMEPAGE="http://poezio.eu/"
SRC_URI="http://dev.louiz.org/attachments/download/${ATTACH_ID}/${P}.tar.xz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

#dnspython dep is optional and skipped (requires privately patched, python3 version)
DEPEND=">=dev-python/sleekxmpp-1.0_beta5"
RDEPEND="${DEPEND}"

src_install()
{
	emake DESTDIR="${D}" prefix="/usr/" install || die "make install failed"
}
