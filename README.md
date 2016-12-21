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
    ├── app-office
    │   └── litetran
    ├── dev-libs
    │   └── libmesode
    ├── dev-python
    │   └── slixmpp
    ├── games-fps
    │   ├── urbanterror
    │   └── urbanterror-maps
    ├── games-util
    │   └── urtconnector
    ├── net-im
    │   ├── poezio
    │   ├── profanity
    │   └── rambox-bin
    ├── www-apps
    │   ├── rainloop
    │   └── rainloop-community
    ├── x11-misc
    │   └── twmn
    └── x11-themes
        ├── menda-circle-icon-theme
        └── menda-themes

```
