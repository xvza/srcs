#!/usr/bin/env bash
###########################################################
echo "a=$_"
echo "b=$0"

declare     "last=${_}"
declare     "file=${0}"

[[ $_ != ${file} ]] && echo "Script is being sourced"
[[ $_ == ${file} ]] && echo "Script is a subshell"
###########################################################
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
