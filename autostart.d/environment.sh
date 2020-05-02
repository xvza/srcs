#!/usr/bin/env bash
###########################################################
export    "SXHKD_SHELL=${SHELL}"
export    "TMPDIR=/tmp"
export    "EDITOR=nano"
###########################################################
export    "WIDTH=1920"
export    "HEIGHT=1080"
export    "COLOR=cyan"
export    "SKEL=/etc/skel"
export    "SHRD=/var/http/shrd"
###########################################################
export    "LINE=seq -s─ $(($(tput cols) -1))|tr -d [:digit:]"
###########################################################
