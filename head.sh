#!/usr/bin/env bash
#################################################
declare   "dire=$(dirname ${BASH_SOURCE[0]})"
source    "${dire}/dirs.sh"
declare   "name=$(basename ${BASH_SOURCE[0]%.*})"
#################################################
source    "${dire}/arrf.sh"  "${srcs[$name]}"
source    <(cat ${file[@]})
#################################################
