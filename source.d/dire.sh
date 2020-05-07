#!/usr/bin/env bash
###########################################################
declare   "opts=-mindepth 1 -maxdepth 1 -type d"
declare   "find=find ${1} ${opts}"
declare   "path=$(${find}|xargs realpath)"
declare   "key=$(${find}|rev|cut -d/ -f1|rev)"
###########################################################
declare   "-A"  "dire"
declare   "-a"  "key=(${key})"
declare   "-a"  "path=(${path})"
###########################################################
for i in ${!key[@]}
do
  eval    "dire[${key[$i]}]=${path[$i]}"
done
###########################################################
