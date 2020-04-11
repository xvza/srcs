#!/usr/bin/env bash
#############################################
eval      "gpaste-client empty"
eval      "yay -Scc --noconfirm 2> /dev/null"
eval      "dnf clean all 2> /dev/null"
#############################################
declare   "path=${SHRD}/dconf"
eval      "dconf reset -f /"
#############################################
declare   "name=config.ini"
eval      "dconf load / < ${path}/${name}"
#############################################
declare   "name=desktop.ini"
eval      "dconf load / < ${path}/${name}"
#############################################
