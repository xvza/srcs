#!/usr/bin/env bash
################################################
declare   "srcs=$(dirname ${BASH_SOURCE[0]})"
declare   "http=${srcs}/.."
declare   "shel=${http}/srcs/bin"
################################################
source    "${srcs}/util/arrd.sh"  "${srcs}"
declare   "path=$(echo ${dire[@]})"
export    "PATH=$(getconf PATH):${path// /:}"
################################################
source    "${srcs}/util/arrd.sh"  "${http}"
source    "${srcs}/util/arrf.sh"  "${shel}/bash"
################################################
source    "dircolors.sh"
################################################
