#!/usr/bin/env bash
#############################################
declare   "srcs=$(dirname ${BASH_SOURCE[0]})"
declare   "http=${srcs}/.."
declare   "shel=${srcs}/shell.d"
declare   "file=${srcs}/source.d/arrd.sh"
#############################################
source    "${file}"  "${srcs}"

#${dire[@]}

declare   "path=$(echo ${dire[@]})"
export    "PATH=$(getconf PATH):${path// /:}"
#############################################
source    "arrf.sh"  "${shel}"

#echo ${file[@]} | source



source    "dircolors.sh"
source    "terminal.sh"
source    "palette.sh"
#############################################
#eval      "clear"
#############################################
source    "environment.sh"
source    "header.sh"
#############################################
