#!/usr/bin/env bash
################################################
declare   "s0=undefined package manager"
declare   "bin=$(command -v ${1?$s0})"
################################################
source    "head.sh"
source    "core.sh"  "${bin}"  "program     :"
source    "foot.sh"
################################################
source    "${1}.sh"
declare   "opts=${!2}"
################################################
