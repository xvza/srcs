#!/usr/bin/env bash
#############################################################
source    "colo.sh"
#############################################################
declare   "name=$(basename ${BASH_SOURCE[0]%.*})"
declare   "hb=${hexa[background]}"
declare   "hp=${hexa[primary]}"
declare   "hf=${hexa[foreground]}"
declare   "hr=${hexa[border]}"
#############################################################
command   "${name}"                                         \
          "-color-window"  "${hb},${hr},${hp}"              \
          "-color-normal"  "${hb},${hf},${hb},${hp},${hb}"  \
          "-color-active"  "${hb},${hf},${hb},${hp},${hb}"  \
          "-show"
#############################################################
