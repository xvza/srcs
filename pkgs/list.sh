#!/usr/bin/env bash
#######################################################
declare   "s0=operation label"
#######################################################
source    "pmer.sh"
source    "vali.sh"  "${1?$s0}"
source    "moun.sh"  "list"
#######################################################
declare   "list=${dire[list]}/pkgs/${!2}/${1?}"
#######################################################
source    "head.sh"
source    "core.sh"  "${!1}"     "operation   :"  false
source    "core.sh"  "${list}"   "list        :"
source    "foot.sh"
#######################################################
eval      "sudo ${prog} ${!1} $(echo $(cat ${list}))"
#######################################################
