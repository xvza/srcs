#!/usr/bin/env bash
###########################################################
declare   "srcs=$(dirname ${BASH_SOURCE[0]})"
declare   "http=${srcs}/.."
declare   "shel=${srcs}/shell.d"
declare   "file=$(find ${shel} -type f)"
###########################################################
source    "${srcs}/source.d/dire.sh"  "${srcs}"
export    "PATH=$(getconf PATH):${$(echo ${dire[@]})// /:}"
###########################################################
eval      "source dircolors.sh"
eval      "source terminal.sh"
eval      "source palette.sh"
eval      "command clear"
eval      "source environment.sh"
eval      "source header.sh"
###########################################################
