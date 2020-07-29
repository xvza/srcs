#!/usr/bin/env bash
###########################################################
declare     "last=${_}"
declare     "file=${0}"
declare     "-i"  "n=1"
source      "shel.sh"
###########################################################
eval        "${LINE}"
###########################################################
[[ ${last} != ${file} ]] && echo "${shell[0]}Environment is being sourced"
[[ ${last} == ${file} ]] && echo "${shell[1]}Environment is a subshell"
###########################################################
echo -n ${shell[init]}
###########################################################
sleep ${n}
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
source      "header.sh"
source      <(cat ${file[@]})
###########################################################
set +u
###########################################################
