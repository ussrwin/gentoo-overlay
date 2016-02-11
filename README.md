My Gentoo overlay
==================

Quality: experimental || Status: unofficial

Setting
---------
Option 1:

Follow:

        layman -f -o https://raw.githubusercontent.com/KronoZed/gentoo-overlay/master/repositories.xml -a kronoz


Option 2:

To add it to the list of layman, open **/etc/layman/layman.cfg** and immediately after the line::

        overlays  : http://www.gentoo.org/proj/en/overlays/repositories.xml

add::

        https://raw.githubusercontent.com/KronoZed/gentoo-overlay/master/repositories.xml

must happen::

        overlays  : http://www.gentoo.org/proj/en/overlays/repositories.xml
                    https://raw.githubusercontent.com/KronoZed/gentoo-overlay/master/repositories.xml

then follow::

        layman -L
        layman -a kronoz
