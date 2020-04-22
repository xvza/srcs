#!/usr/bin/env bash
#########################################################
source    "colo.sh"
#########################################################
declare   "name=$(basename ${BASH_SOURCE[0]%.*})"
declare   "b=${hexa[background]}"
declare   "p=${hexa[primary]}"
declare   "f=${hexa[foreground]}"
#########################################################
${name}   "-color-window"  "${b},${hexa[border]},${p}"  \
          "-color-normal"  "${b},${f},${b},${p},${b}"   \
          "-color-active"  "${b},${f},${b},${p},${b}"   \
          "-show"
#########################################################
