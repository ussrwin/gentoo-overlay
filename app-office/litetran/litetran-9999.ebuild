# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit cmake-utils git-2

DESCRIPTION="Very simple GUI for text translation (like google translate)."
HOMEPAGE="http://flareguner.github.io/litetran/"
EGIT_REPO_URI="https://bitbucket.org/gfarniev/litetran.git"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS=""
IUSE=""

DEPEND=">=dev-util/cmake-2.8.10
		dev-qt/qtcore:5
		dev-qt/qtgui:5
		dev-qt/linguist-tools:5
		dev-qt/qtmultimedia:5
        dev-qt/qtwidgets:5"

RDEPEND="${DEPEND}"
