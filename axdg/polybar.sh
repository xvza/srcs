#!/usr/bin/env bash
##########################################################
declare   "name=$(basename ${BASH_SOURCE[0]%.*})"
declare   "file=$(find ${SHRD}/${name} -type f)"
declare   "color=${SHRD}/${name}/color.ini"
##########################################################
source    "colo.sh"
##########################################################
echo      "[color]"                           >   ${color}
echo      "foreground  =${hexa[foreground]}"  >>  ${color}
echo      "background  =${hexa[border]}"      >>  ${color}
echo      "border      =${hexa[border]}"      >>  ${color}
echo      "success     =${hexa[primary]}"     >>  ${color}
echo      "warning     =${hexa[warning]}"     >>  ${color}
echo      "alert       =${hexa[alert]}"       >>  ${color}
##########################################################
command   "killall"  "-q"  "${name}"
command   "${name}"  "-c"  <(cat ${file})  "bottom"      &
command   "${name}"  "-c"  <(cat ${file})  "top"         &
##########################################################
