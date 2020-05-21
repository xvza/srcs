#!/usr/bin/env bash
###########################################################
export      "PATH=${PATH}"
export      "TMPDIR=/tmp"
export      "EDITOR=nano"
###########################################################
export      "WIDTH=1920"
export      "HEIGHT=1080"
export      "COLOR=cyan"
export      "SKEL=/etc/skel"
export      "SHRD=${mnt}/xvza/shrd"
###########################################################
export      "LINE=seq -s─ $(($(tput cols) -1))|tr -d [:digit:]"
###########################################################
source      "/usr/share/bash-completion/bash_completion"
source      "/etc/bash_completion"
###########################################################
