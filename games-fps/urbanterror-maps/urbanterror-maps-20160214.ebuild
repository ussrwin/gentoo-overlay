# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2

inherit games

DESCRIPTION="various maps for urban terror 4"
HOMEPAGE="https://github.com/KronoZed/urbanterror-maps"

#https://github.com/KronoZed/urbanterror-maps
SRC_URI="https://raw.githubusercontent.com/KronoZed/urbanterror-maps/master/ut42_skeetshoot_2013.pk3
https://raw.githubusercontent.com/KronoZed/urbanterror-maps/master/ut4_aztec_b3.pk3
https://raw.githubusercontent.com/KronoZed/urbanterror-maps/master/ut4_aztek_b2.pk3
https://raw.githubusercontent.com/KronoZed/urbanterror-maps/master/ut4_beijing_b3.pk3
https://raw.githubusercontent.com/KronoZed/urbanterror-maps/master/ut4_cambridge_b1.pk3
https://raw.githubusercontent.com/KronoZed/urbanterror-maps/master/ut4_cambridge_fixed.pk3
https://raw.githubusercontent.com/KronoZed/urbanterror-maps/master/ut4_commune_fixed.pk3
https://raw.githubusercontent.com/KronoZed/urbanterror-maps/master/ut4_dust2_v2.pk3
https://raw.githubusercontent.com/KronoZed/urbanterror-maps/master/ut4_dust2_v3b.pk3
https://raw.githubusercontent.com/KronoZed/urbanterror-maps/master/ut4_dustie_b4.pk3
https://raw.githubusercontent.com/KronoZed/urbanterror-maps/master/ut4_facade_b4.pk3
https://raw.githubusercontent.com/KronoZed/urbanterror-maps/master/ut4_facade_b5.pk3
https://raw.githubusercontent.com/KronoZed/urbanterror-maps/master/ut4_facade_b5a.pk3
https://raw.githubusercontent.com/KronoZed/urbanterror-maps/master/ut4_italy_a6.pk3
https://raw.githubusercontent.com/KronoZed/urbanterror-maps/master/ut4_kingdom_rc6.pk3
https://raw.githubusercontent.com/KronoZed/urbanterror-maps/master/ut4_mykonos_a11.pk3
https://raw.githubusercontent.com/KronoZed/urbanterror-maps/master/ut4_mykonos_a9.pk3
https://raw.githubusercontent.com/KronoZed/urbanterror-maps/master/ut4_orbital_sl.pk3
https://raw.githubusercontent.com/KronoZed/urbanterror-maps/master/ut4_pandora_b6.pk3
https://raw.githubusercontent.com/KronoZed/urbanterror-maps/master/ut4_pandora_b7.pk3
https://raw.githubusercontent.com/KronoZed/urbanterror-maps/master/ut4_paris_v2.pk3
https://raw.githubusercontent.com/KronoZed/urbanterror-maps/master/ut4_roma_beta2.pk3
https://raw.githubusercontent.com/KronoZed/urbanterror-maps/master/ut4_sarlat_a17.pk3
https://raw.githubusercontent.com/KronoZed/urbanterror-maps/master/ut4_skeetshoot_2010.pk3
https://raw.githubusercontent.com/KronoZed/urbanterror-maps/master/ut4_skeetshoot_2011.pk3
https://raw.githubusercontent.com/KronoZed/urbanterror-maps/master/ut4_skeetshoot_2012.pk3
https://raw.githubusercontent.com/KronoZed/urbanterror-maps/master/ut4_subterra.pk3
https://raw.githubusercontent.com/KronoZed/urbanterror-maps/master/ut4_tohunga_b10.pk3
https://raw.githubusercontent.com/KronoZed/urbanterror-maps/master/ut4_tohunga_b8.pk3
https://raw.githubusercontent.com/KronoZed/urbanterror-maps/master/ut4_village.pk3
https://raw.githubusercontent.com/KronoZed/urbanterror-maps/master/ut4_village_classic_rc4.pk3"

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
