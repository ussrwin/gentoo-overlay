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
