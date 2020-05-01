#!/usr/bin/env bash
###########################################################
source    "colo.sh"
###########################################################
declare   "name[$$]=$(basename ${BASH_SOURCE[0]%.*})"
declare   "${name[$$]}=$(typeset -p ${1})"
declare   "${name[$$]}=${!name[$$]//=\"/=\"#}"
declare   "${name[$$]}=${!name[$$]//${1}/hexa}"
###########################################################
eval      "${!name[$$]//$1/$name}"
###########################################################
