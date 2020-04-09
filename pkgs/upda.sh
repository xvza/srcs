#!/usr/bin/env bash
######################################################
source    "vali.sh"  "${1}"     "upd"
source    "head.sh"
source    "core.sh"  "${opts}"  "options     :"  false
source    "foot.sh"
######################################################
eval      "sudo ${1} ${opts}"
######################################################
