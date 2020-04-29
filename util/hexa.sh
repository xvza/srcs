#!/usr/bin/env bash
###################################
source    "colo.sh"  "${1?}"
###################################
declare   "hexa=$(typeset -p ${1})"
declare   "hexa=${hexa//=\"/=\"#}"
eval      "${hexa//${1}/hexa}"
###################################
