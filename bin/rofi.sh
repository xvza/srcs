#!/usr/bin/env bash
###############################################################################
source    "colo.sh"
###############################################################################
declare   "window=${background},${border},${primary[background]}"
declare   "color=${background},${primary[foreground]},${background},${primary[background]},${background}"
###############################################################################
rofi  -color-window ${window}   \
      -color-normal ${color}    \
      -color-active ${color}    \
      -show
###############################################################################
