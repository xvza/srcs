#!/usr/bin/env bash
#####################################################################
source    "dirs.sh"
#####################################################################
source    "moun.sh"  "etcs"
source    "head.sh"
source    "core.sh"  "${HOME}"                   "home directory   :"
source    "core.sh"  "${SKEL}"                   "skel directory   :"
source    "core.sh"  "${dire[etcs]}"             "etcs directory   :"
source    "foot.sh"
#####################################################################
source    "del1.sh"  "${HOME}"
source    "del1.sh"  "${SKEL}"
source    "dir1.sh"  "${SKEL}"                   "${dire[etcs]}skel/"
#####################################################################
source    "rep3.sh"  "${SKEL}/.config/gtk-3.0/"  "_USER"  "${USER}"
#####################################################################
