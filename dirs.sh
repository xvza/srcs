#!/usr/bin/env bash
#############################################
declare   "srcs=$(dirname ${BASH_SOURCE[0]})"
declare   "http=${srcs}/.."
declare   "shel=${srcs}/shel.d"
#############################################
source    "${srcs}/util.d/arrd.sh"  "${srcs}"
declare   "path=$(echo ${dire[@]})"
export    "PATH=$(getconf PATH):${path// /:}"
#############################################
source    "arrf.sh"                 "${shel}"
source    "dircolors.sh"
source    "terminal.sh"
#############################################
command   "clear"
#############################################
source    "environment.sh"
source    "palette.sh"
source    "header.sh"
#############################################
