#!/usr/bin/env bash
##########################################################
declare   "s0=operation label"
declare   "oper=${2?$s0}"
declare   "list=${3-defa}/${oper}"
##########################################################
source    "vali.sh"  "${1}"     "${oper}"  "${list}"
##########################################################
source    "moun.sh"  "list"
declare   "list=${dirs[list]}${list}"
##########################################################
source    "head.sh"
source    "core.sh"  "${opts}"  "options         :"  false
source    "core.sh"  "${list}"  "list directory  :"
source    "foot.sh"
##########################################################
declare   "pkgs=$(cat ${list})"
eval      "sudo ${1} ${opts} ${pkgs}"
##########################################################
