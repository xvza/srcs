#!/usr/bin/env bash
#############################################
declare   "srcs=$(dirname ${BASH_SOURCE[0]})"
declare   "http=${srcs}/.."
declare   "shel=${srcs}/shell.d"
#############################################
source    "${srcs}/source.d/arrd.sh"  "${srcs}"
declare   "path=$(echo ${dire[@]})"
export    "PATH=$(getconf PATH):${path// /:}"
#############################################
source    "arrf.sh"                 "${shel}"
source    "dircolors.sh"
source    "terminal.sh"
source    "palette.sh"
#############################################
eval      "clear"
#############################################
source    "environment.sh"
source    "header.sh"
#############################################
