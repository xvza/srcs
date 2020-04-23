#!/usr/bin/env bash
#############################################
trap      "return ${err}"  "ERR"
source    "colo.sh"
#############################################
declare   "sheb=$(basename ${SHELL})"
declare   "file=$(basename ${BASH_SOURCE[1]})"
declare   "err=0"
#############################################
eval      "${line}"
echo      "${sheb} file   :  ${file}"
#############################################
