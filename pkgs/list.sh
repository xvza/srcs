#!/usr/bin/env bash
##########################################################
declare   "s0=operation label"
##########################################################
source    "vali.sh"  "${1}"     "${2?$s0}"       "${list}"
##########################################################
source    "moun.sh"  "list"
declare   "list=${dire[list]}/${3?}/${2?}"
##########################################################
source    "head.sh"
source    "core.sh"  "${opts}"  "options     :"  false
source    "core.sh"  "${list}"  "list        :"
source    "foot.sh"
##########################################################
declare   "pkgs=$(echo $(cat ${list}))"
eval      "sudo ${1} ${opts} ${pkgs}"
##########################################################
