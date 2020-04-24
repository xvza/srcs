#!/usr/bin/env bash
##########################################################
declare   "name=$(basename ${BASH_SOURCE[0]%.*})"
declare   "file=$(find ${SHRD}/${name} -type f)"
declare   "color=${SHRD}/xrdb/color/${name}.ini"
##########################################################
source    "colo.sh"
##########################################################
declare   "hb=${hexa[background]}"
declare   "hp=${hexa[primary]}"
declare   "hf=${hexa[foreground]}"
declare   "hr=${hexa[border]}"
##########################################################
echo      ""                                                   >   ${color}
echo      "rofi.color-window  :${hb},${hr},${hp}"              >>  ${color}
echo      "rofi.color-normal  :${hb},${hf},${hb},${hp},${hb}"  >>  ${color}
echo      "rofi.color-active  :${hb},${hf},${hb},${hp},${hb}"  >>  ${color}
##########################################################
