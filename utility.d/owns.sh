#!/usr/bin/env bash
###########################################################
source    "head.sh"
source    "core.sh"  "${2}"  "owner       :"  false
source    "core.sh"  "${3}"  "file        :"
source    "foot.sh"
###########################################################
eval      "sudo ${BASH_ALIASES[chown]} ${@}"
###########################################################
