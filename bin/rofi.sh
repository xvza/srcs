#!/usr/bin/env bash
####################################################################
source    "colo.sh"
####################################################################
declare   "name=$(basename ${BASH_SOURCE[0]%.*})"
declare   "window=${background},${border},${primary[background]}"
declare   "color=${background},${primary[foreground]},${background}"
declare   "color=${color},${primary[background]},${background}"
####################################################################
${name}   "-color-window"  "${window}"                             \
          "-color-normal"  "${color}"                              \
          "-color-active"  "${color}"                              \
          "-show"
####################################################################
