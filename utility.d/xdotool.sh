#!/usr/bin/env bash
###########################################################
declare   "name=$(basename ${BASH_SOURCE[0]%.*})"
declare   "id=$(${name} getactivewindow)"
eval      "${name} window${1} ${id} ${@:2}"
###########################################################
[[ ${1} == "move" ]] && eval "xdotool.sh size 50% 92%"
###########################################################
