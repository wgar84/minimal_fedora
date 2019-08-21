#!/bin/bash

dnf -y install \
	xorg-x11-font-utils \
	xorg-x11-xauth \
	xorg-x11-xbitmaps \
	xorg-x11-server-utils \
	xorg-x11-apps \
	xorg-x11-server-common \
	dmenu xorg-x11-xinit \
	xorg-x11-drv-intel \
	xorg-x11-server-Xorg \
	xorg-x11-fonts-misc \
	xorg-x11-drv-libinput \
	xorg-x11-xkb-utils \
	xorg-x11-utils

dnf copr enable gregw/i3desktop

dnf -y install i3lock i3status i3

dnf -y install lightdm lightdm-gtk

systemctl enable lightdm.service

systemctl set-default graphical.target 
