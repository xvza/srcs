#!/usr/bin/env bash
##############################################
trap      "return ${err}"  "ERR"
##############################################
declare   "sheb=$(basename ${SHELL})"
declare   "file=$(basename ${BASH_SOURCE[1]})"
declare   "err=0"
##############################################
eval      "${LINE}"
echo      "${sheb} file   :  ${file}"
##############################################