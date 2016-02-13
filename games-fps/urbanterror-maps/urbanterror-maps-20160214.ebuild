# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2

inherit games

DESCRIPTION="various maps for urban terror 4"
HOMEPAGE="http://xmw.de/mirror/urbanterror-maps"

#http://xmw.de/mirror/urbanterror-maps/list
SRC_URI="https://raw.githubusercontent.com/KronoZed/urbanterror-maps/master/ut42_skeetshoot_2013.pk3
https://raw.githubusercontent.com/KronoZed/urbanterror-maps/master/ut42_skeetshoot_2013.pk3
https://raw.githubusercontent.com/KronoZed/urbanterror-maps/master/ut42_skeetshoot_2013.pk3
https://raw.githubusercontent.com/KronoZed/urbanterror-maps/master/ut42_skeetshoot_2013.pk3
https://raw.githubusercontent.com/KronoZed/urbanterror-maps/master/ut42_skeetshoot_2013.pk3
https://raw.githubusercontent.com/KronoZed/urbanterror-maps/master/ut42_skeetshoot_2013.pk3
https://raw.githubusercontent.com/KronoZed/urbanterror-maps/master/ut42_skeetshoot_2013.pk3
https://raw.githubusercontent.com/KronoZed/urbanterror-maps/master/ut42_skeetshoot_2013.pk3
https://raw.githubusercontent.com/KronoZed/urbanterror-maps/master/ut42_skeetshoot_2013.pk3
https://raw.githubusercontent.com/KronoZed/urbanterror-maps/master/ut42_skeetshoot_2013.pk3
https://raw.githubusercontent.com/KronoZed/urbanterror-maps/master/ut42_skeetshoot_2013.pk3
"

LICENSE="as-is"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RESTRICT="mirror"

DEPEND=""
RDEPEND=""

src_unpack() {
	return
}

src_install() {
	insinto /usr/share/games/urbanterror/q3ut4
	local map
	for map in ${A} ; do
		einfo ${map}
		doins "${DISTDIR}"/${map} || die
	done
	prepgamesdirs
}
