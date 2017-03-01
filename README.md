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

Repository ebuilds
---------

Category | Name | Description | Versions
--- | --- | --- | ---
app-antivirus | clamtk | A frontend for ClamAV using Gtk2-perl | 5.24
app-backup | insync-bin | Advanced cross-platform Google Drive client | 1.3.14
app-editors | brackets-bin | Open source code editor for web designers and front-end developers | 1.8
app-editors | lighttable-bin | The next generation code editor | 0.8.1-r1
app-office | litetran | Very simple GUI for text translation (like google translate) | 9999
dev-libs | libmesode | Fork of libstrophe for use with Profanity XMPP Client | 0.9.1 / 9999
dev-python | slixmpp | Python library for XMPP - asyncio fork | 1.2.4 / 9999
dev-qt | qt5-styleplugins | Additional style plugins for Qt | 9999
games-fps | urbanterror-maps | Various maps for urban terror 4 | 20160214
games-fps | urbanterror | Hollywood tactical shooter based on the ioquake3 engine | 4.2.023
games-util | urtconnector | Advanced UrbanTerror launcher program | 9999
mail-client | wmail-bin | The missing desktop client for Gmail & Google Inbox | 2.3.0
media-sound | teamspeak-client-bin | TeamSpeak Client - Voice Communication Software | 3.1.1 / 3.1.1.1
media-tv | popcorntime-bin | Watch Movies and TV Shows instantly | 0.3.10
media-video | gnome-twitch | Enjoy Twitch on your GNU/Linux desktop | 0.3.1
net-im | ghetto-skype | Free calls, text and picture sharing with anyone, anywhere | 1.5.0
net-im | poezio | Console XMPP client that looks like most famous IRC clients | 9999
net-im | profanity | Ncurses based jabber client inspired by irssi | 0.5.1 / 9999
net-im | rambox-bin | Free and Open Source messaging and emailing app that combines common web applications into one | 0.5.3
net-im | riot-web-bin | A glossy Matrix collaboration client for the web | 0.9.7
net-news | feedreader |  A modern desktop application designed to complement web-based RSS accounts| 2.0
www-apps | rainloop-community | Simple, modern and fast web-based email client | 1.10.5.192
www-apps | rainloop | Simple, modern and fast web-based email client | 1.10.5.192
www-servers | caddy-bin | Fast, cross-platform HTTP/2 web server with automatic HTTPS | 0.9.5
x11-misc | sunflower | Small and highly customizable twin-panel file manager with plugin-support | 0.3.1-r1
x11-misc | twmn | A notification system for tiling window managers | 9999
x11-themes | menda-circle-icon-theme | Menda Circle Icon Theme | 9999
x11-themes | menda-themes | Manjaro's official Gtk2, Gtk3, Metacity, Xfwm, Openbox, Cinnamon and GNOME Shell themes | 9999

Repository tree
---------
```
    .
    ├── app-antivirus
    │   └── clamtk
    ├── app-backup
    │   └── insync-bin
    ├── app-editors
    │   ├── brackets-bin
    │   └── lighttable-bin
    ├── app-office
    │   └── litetran
    ├── dev-libs
    │   └── libmesode
    ├── dev-python
    │   └── slixmpp
    ├── dev-qt
    │   └── qt5-styleplugins
    ├── games-fps
    │   ├── urbanterror
    │   └── urbanterror-maps
    ├── games-util
    │   └── urtconnector
    ├── mail-client
    │   └── wmail-bin
    ├── media-sound
    │   └── teamspeak-client-bin
    ├── media-tv
    │   └── popcorntime-bin
    ├── media-video
    │   └── gnome-twitch
    ├── net-im
    │   ├── ghetto-skype
    │   ├── poezio
    │   ├── profanity
    │   ├── rambox-bin
    │   └── riot-web-bin
    ├── net-news
    │   └── feedreader
    ├── www-apps
    │   ├── rainloop
    │   └── rainloop-community
    ├── www-servers
    │   └── caddy-bin
    ├── x11-misc
    │   ├── sunflower
    │   └── twmn
    └── x11-themes
        ├── menda-circle-icon-theme
        └── menda-themes

```
