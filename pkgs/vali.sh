#!/usr/bin/env bash
######################################################
declare   "path=$(command -v ${prog})"
######################################################
source    "${prog}.sh"
######################################################
source    "head.sh"
source    "core.sh"  "${path}"  "program     :"
source    "core.sh"  "${!1}"    "operation   :"  false
source    "foot.sh"
######################################################
