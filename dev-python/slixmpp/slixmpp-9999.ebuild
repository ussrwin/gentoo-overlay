# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5
PYTHON_COMPAT=( python3_4 )
DISTUTILS_SINGLE_IMPL="1"

inherit eutils distutils-r1 git-r3

EGIT_REPO_URI="git://git.poez.io/${PN}"
EGIT_MIN_CLONE_TYPE="mirror"

DESCRIPTION="Python library for XMPP (branched from sleekxmpp)"
HOMEPAGE="http://blog.louiz.org/slixmpp https://dev.louiz.org/projects/slixmpp http://sleekxmpp.com/"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"
#IUSE="crypt"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
RDEPEND="dev-python/aiodns[${PYTHON_USEDEP}]
		dev-python/pyasn1[${PYTHON_USEDEP}]
		dev-python/pyasn1-modules[${PYTHON_USEDEP}]"
#		crypt? ( dev-python/pyasn1[${PYTHON_USEDEP}] dev-python/pyasn1-modules[${PYTHON_USEDEP}] )"

python_test() {
	esetup.py test
}
