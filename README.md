My Gentoo overlay
==================
Quality: experimental

Status: unofficial

Installing
---------
Option 1:

Follow:

        layman -f -o https://raw.githubusercontent.com/KronoZed/gentoo-overlay/master/repositories.xml -a kronoz


Option 2:

To add it to the list of layman, open **/etc/layman/layman.cfg** and immediately after the line:

        overlays  : http://www.gentoo.org/proj/en/overlays/repositories.xml

add:

        https://raw.githubusercontent.com/KronoZed/gentoo-overlay/master/repositories.xml

must happen:

        overlays  : http://www.gentoo.org/proj/en/overlays/repositories.xml
                    https://raw.githubusercontent.com/KronoZed/gentoo-overlay/master/repositories.xml

then follow:

        layman -L
        layman -a kronoz

Packages (stable)
---------
* app-antivirus/clamtk (5.20) - A frontend for ClamAV using Gtk2-perl
* app-backup/insync-bin (1.3.6) - Advanced cross-platform Google Drive client
* app-editors/atom-bin (1.5.4) - A hackable text editor for the 21st Century. - Binary package
* app-office/litetran (9999) - Very simple GUI for text translation (like google translate)
* dev-python/aiodns (1.0.1) - Simple DNS resolver for asyncio
* dev-python/pafy (0.5.0) - Python library to download YouTube content and retrieve metadata
* dev-python/pycares (1.0.0) - Python interface for c-ares
* dev-python/slixmpp (9999) - Python library for XMPP (branched from sleekxmpp)
* games-fps/urbanterror-maps (20160214) - various maps for urban terror 4
* games-util/urtconnector (9999) - Advanced UrbanTerror launcher program
* net-im/poezio (9999) - Console XMPP client that looks like most famous IRC clients
* net-im/profanity (9999) - Ncurses based jabber client inspired by irssi
* net-misc/mps-youtube (0.2.6) - CLI Application to search, stream and download youtube video
* net-p2p/retroshare (0.6.9999) - P2P private sharing application
* x11-misc/twmn (9999) - A notification system for tiling window managers
* x11-plugins/pidgin-window_merge (9999) - pidgin plugin that merges a conversation window with the Buddy List window
* x11-themes/menda-circle-icon-theme (9999) - Menda Circle Icon Theme

Packages (testing)
---------
* games-util/urtdsc (9999)

