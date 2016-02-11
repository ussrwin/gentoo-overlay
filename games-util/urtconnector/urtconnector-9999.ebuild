# Copyright 1999-2010 Gentoo Foundation
# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit games git-r3 cmake-utils

DESCRIPTION="Advanced UrbanTerror launcher program"
HOMEPAGE="http://code.google.com/p/urtconnector/"
EGIT_REPO_URI="https://github.com/navrocky/urtconnector.git"
EGIT_BRANCH="master"

LICENSE="GPL"
KEYWORDS="~x86 ~amd64"
SLOT="0"
IUSE=""

RDEPEND="dev-qt/qtgui:4
    games-util/qstat
    dev-libs/boost
    dev-db/sqlite:3
    "

DEPEND="${RDEPEND}"
