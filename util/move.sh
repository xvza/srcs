#!/usr/bin/env bash
#############################################
declare   "id=$(xdotool getactivewindow)"
declare   "-i"  "pos=${WIDTH}/2"
#############################################
eval      "xdotool windowsize ${id} 50% 92%"
#############################################
[[ ${1?} -eq 0 ]]                           \
&& eval   "xdotool windowmove ${id} ${1} y"
#############################################
[[ ${1?} -eq 1 ]]                           \
&& eval   "xdotool windowmove ${id} ${pos} y"
#############################################
