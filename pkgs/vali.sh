#!/usr/bin/env bash
################################################
declare   "s0=undefined package manager"
################################################
source    "head.sh"
source    "core.sh"  "${1?$s0}"  "program     :"
source    "foot.sh"
################################################
source    "${1}.sh"
declare   "opts=${!2}"
################################################
