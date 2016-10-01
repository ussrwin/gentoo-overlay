Gentoo overlay
==================
Quality: experimental

Status: unofficial

Installing
---------
Option 1:

Follow:

        layman -f -o https://raw.githubusercontent.com/ussrwin/gentoo-overlay/master/repositories.xml -a ussr


Option 2:

To add it to the list of layman, open **/etc/layman/layman.cfg** and immediately after the line:

        overlays  : http://www.gentoo.org/proj/en/overlays/repositories.xml

add:

        https://raw.githubusercontent.com/ussrwin/gentoo-overlay/master/repositories.xml

must happen:

        overlays  : http://www.gentoo.org/proj/en/overlays/repositories.xml
                    https://raw.githubusercontent.com/ussrwin/gentoo-overlay/master/repositories.xml

then follow:

        layman -L
        layman -a ussr

Packages (stable)
---------
* app-antivirus/clamtk (5.20 / 5.21) - A frontend for ClamAV using Gtk2-perl
* app-backup/insync-bin (1.3.6 / 1.3.10) - Advanced cross-platform Google Drive client
* app-editors/atom-bin (1.5.4 / 1.6.0 / 1.6.1 / 1.6.2) - A hackable text editor for the 21st Century. - Binary package
* app-office/litetran (9999) - Very simple GUI for text translation (like google translate)
* dev-libs/libmesode (9999) - Fork of libstrophe for use with Profanity XMPP Client
* dev-python/aiodns (1.0.1 / 1.1.1) - Simple DNS resolver for asyncio
* dev-python/pafy (0.5.0 / 0.5.2) - Python library to download YouTube content and retrieve metadata
* dev-python/pycares (1.0.0 / 2.1.0) - Python interface for c-ares
* dev-python/slixmpp (9999) - Python library for XMPP (branched from sleekxmpp)
* games-fps/urbanterror-maps (20160214) - various maps for urban terror 4
* games-util/urtconnector (9999) - Advanced UrbanTerror launcher program
* net-im/poezio (9999) - Console XMPP client that looks like most famous IRC clients
* net-im/profanity (9999) - Ncurses based jabber client inspired by irssi
* net-misc/mps-youtube (0.2.6 / 0.2.7.1) - CLI Application to search, stream and download youtube video
* net-p2p/retroshare (0.6.9999) - P2P private sharing application
* x11-misc/twmn (9999) - A notification system for tiling window managers
* x11-plugins/pidgin-window_merge (9999) - pidgin plugin that merges a conversation window with the Buddy List window
* x11-themes/menda-circle-icon-theme (9999) - Menda Circle Icon Theme
* x11-themes/menda-themes (9999) - Manjaro's official Gtk2, Gtk3, Metacity, Xfwm, Openbox, Cinnamon and GNOME Shell themes

Packages (testing)
---------
* games-util/urtdsc (9999)

