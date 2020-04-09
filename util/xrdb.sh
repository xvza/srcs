#!/usr/bin/env bash
#######################################
declare   "s0=xresource directory"
source    "arrf.sh"  "${1?$s0}"
declare   "name=$(basename ${1})"
#######################################
eval      "$(${name} <(cat ${file[@]}))"
#######################################
