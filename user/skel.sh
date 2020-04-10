#!/usr/bin/env bash
#####################################################################
source    "moun.sh"  "etcs"
source    "head.sh"
source    "core.sh"  "${HOME}"                   "home directory   :"
source    "core.sh"  "${SKEL}"                   "skel directory   :"
source    "core.sh"  "${dire[etcs]}"             "etcs directory   :"
source    "foot.sh"
#####################################################################
source    "del0.sh"  "${HOME}"
source    "del0.sh"  "${SKEL}"
source    "dir1.sh"  "${HOME}"                   "${dire[etcs]}skel/"
source    "dir1.sh"  "${SKEL}"                   "${dire[etcs]}skel/"
#####################################################################
source    "rep0.sh"  "${SKEL}/.config/gtk-3.0/"  "_USER"  "${USER}"
#####################################################################
