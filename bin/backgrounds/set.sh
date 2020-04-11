#!/usr/bin/env bash
###############################################
declare   "path=org.gnome.desktop.background"
declare   "key=picture-uri"
###############################################
eval      "feh --bg-fill --no-fehbg ${IMG}"
eval      "gsettings set ${path} ${key} ${IMG}"
###############################################
