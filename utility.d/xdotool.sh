#!/usr/bin/env bash
###########################################################
declare   "name=$(basename ${BASH_SOURCE[0]%.*})"
declare   "id=$(${name} getwindowfocus)"


echo      "${name} window${1} ${id} ${@:2}"
eval      "${name} window${1} ${id} ${@:2}"
###########################################################
[[ ${1} == "move" ]] && eval "xdotool.sh size 50% 100%"
###########################################################
