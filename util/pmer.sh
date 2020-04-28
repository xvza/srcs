#!/usr/bin/env bash
#############################################
declare   "dire=$(dirname ${BASH_SOURCE[0]})"
declare   "prog=$(dirname ${dire})/prog"
declare   "file=$(ls ${prog})"
declare   "cmds=$(echo ${file//.sh/})"
#############################################
read      "-a"  "item" <<< ${cmds}
#############################################
for i in ${!item[@]}
do
#############################################
  [[ "$(command -v ${item[$i]})" ]]         \
  && declare "prog=${item[$i]}"             \
  && break
#############################################
done
#############################################
