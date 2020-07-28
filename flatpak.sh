#!/usr/bin/env bash
###########################################################
set -u
###########################################################
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak install flathub com.github.micahflee.torbrowser-launcher
###########################################################
set +u
###########################################################
