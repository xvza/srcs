#!/usr/bin/env bash
###########################################################
set +u
###########################################################
export      "PATH=${PATH}"
export      "TMPDIR=/tmp"
export      "EDITOR=nano"
###########################################################
export      "WIDTH=1920"
export      "HEIGHT=1080"
export      "COLOR=cyan"
export      "SKEL=/etc/skel"
export      "SHRD=${mnt}/shrd"
###########################################################
export      "LINE=seq -s─ $(($(tput cols) -1))|tr -d [:digit:]"
###########################################################
source      "/usr/share/bash-completion/bash_completion"
source      "/etc/profile.d/bash_completion.sh"
###########################################################
set -u
###########################################################
