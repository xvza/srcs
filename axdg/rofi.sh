#!/usr/bin/env bash
##########################################################
declare   "name=$(basename ${BASH_SOURCE[0]%.*})"
declare   "file=$(find ${SHRD}/${name} -type f)"
declare   "color=${SHRD}/${name}/color.ini"
##########################################################
source    "colo.sh"
##########################################################
declare   "hb=${hexa[background]}"
##########################################################
echo      ""                                  >   ${color}
echo      "rofi.color-window  :${hexa[foreground]}"  >>  ${color}
##########################################################
