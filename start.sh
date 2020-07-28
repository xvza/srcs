#!/usr/bin/env bash
###########################################################
[[ $_ != $0 ]] && echo "Script is being sourced" || echo "Script is a subshell"
sleep .7
###########################################################
set -u
###########################################################
declare     "srcs=$(dirname ${BASH_SOURCE[0]})"
declare     "http=${srcs}/.."
declare     "shel=${srcs}/shell.d"
declare     "file=$(find ${shel} -type f)"
###########################################################
source      "${srcs}/source.d/dire.sh"  "${srcs}"
declare     "path=$(echo ${dire[@]})"
declare     "PATH=$(getconf PATH):${path// /:}"
###########################################################
source      "environment.sh"
###########################################################
eval        "clear"
###########################################################
source      "header.sh"
source      <(cat ${file[@]})
###########################################################
set +u
###########################################################
