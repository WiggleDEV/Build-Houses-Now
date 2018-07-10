
Debian
====================
This directory contains files used to package bhnd/bhn-qt
for Debian-based Linux systems. If you compile bhnd/bhn-qt yourself, there are some useful files here.

## bhn: URI support ##


bhn-qt.desktop  (Gnome / Open Desktop)
To install:

	sudo desktop-file-install bhn-qt.desktop
	sudo update-desktop-database

If you build yourself, you will either need to modify the paths in
the .desktop file or copy or symlink your bhnqt binary to `/usr/bin`
and the `../../share/pixmaps/bhn128.png` to `/usr/share/pixmaps`

bhn-qt.protocol (KDE)

