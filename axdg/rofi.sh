#!/usr/bin/env bash
#############################################################
declare   "name=$(basename ${BASH_SOURCE[0]%.*})"
declare   "color=${SHRD}/xrdb/color/${name}.ini"
#############################################################
source    "colo.sh"
#############################################################
declare   "hb=${hexa[background]}"
declare   "hp=${hexa[primary]}"
declare   "hf=${hexa[foreground]}"
declare   "hr=${hexa[border]}"
#############################################################
declare   "color_window=${hb},${hr},${hp}"
declare   "color_normal=${hb},${hf},${hb},${hp},${hb}"
declare   "color_active=${hb},${hf},${hb},${hp},${hb}"
#############################################################
printf    ""                                     >   ${color}
echo      "rofi.color-window  :${color_window}"  >>  ${color}
echo      "rofi.color-normal  :${color_normal}"  >>  ${color}
echo      "rofi.color-active  :${color_active}"  >>  ${color}
#############################################################
