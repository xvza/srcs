###########################################!/usr/bin/env bash
#############################################################
declare   "id=$(id -u ${USER})"
source    "colo.sh"
#############################################################
declare   "PS1=\[${bold}\]\[${color[$id]}\][\w:\#]\[${nc}\] "
#############################################################
