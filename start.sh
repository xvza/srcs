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
eval      "source environment.sh"
eval      "source dircolors.sh"
eval      "source terminal.sh"
eval      "source palette.sh"
eval      "clear"
eval      "source header.sh"
###########################################################
