#!/usr/bin/env bash
#################################################################
declare   "dest=/${1-root}/.config/gtk-3.0/bookmarks"
#################################################################
source    "moun.sh"  "etcs"
source    "head.sh"
source    "core.sh"  "${dirs[etcs]}"  "etcs directory   :"
source    "core.sh"  "${dest}"        "dest directory   :"  false
source    "foot.sh"
#################################################################
declare   "src=${dirs[etcs]}skel/.config/gtk-3.0/"
eval      "sudo dir0.sh ${dest} ${src}"
eval      "sudo rep3.sh ${dest} _USER ${USER}"
#################################################################
declare   "src=${dirs[etcs]}skel/.config/mimeapps.list"
eval      "sudo dir0.sh ${dest} ${src}"
#################################################################
