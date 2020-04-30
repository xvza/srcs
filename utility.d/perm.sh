#!/usr/bin/env bash
###################################################
source    "head.sh"
source    "core.sh"  "${2}"  "mode        :"  false
source    "core.sh"  "${3}"  "file        :"
source    "foot.sh"
###################################################
[[ -O ${3} ]]                                     \
&& eval   "${BASH_ALIASES[chmod]} ${@}"
###################################################
[[ -O ${3} ]]                                     \
|| eval   "sudo ${BASH_ALIASES[chmod]} ${@}"
###################################################