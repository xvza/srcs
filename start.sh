#!/usr/bin/env bash
###########################################################
set -u
###########################################################
declare   "srcs=$(dirname ${BASH_SOURCE[0]})"
declare   "http=${srcs}/.."
declare   "shel=${srcs}/shell.d"
declare   "file=$(find ${shel} -type f)"
###########################################################
source    "${srcs}/source.d/dire.sh"  "${srcs}"
declare   "path=$(echo ${dire[@]})"
export    "PATH=$(getconf PATH):${path// /:}"
###########################################################
source    "environment.sh"
source    "dircolors.sh"
source    "terminal.sh"
source    "palette.sh"
###########################################################
eval      "clear"
###########################################################
source    "header.sh"
###########################################################
set +u
###########################################################
