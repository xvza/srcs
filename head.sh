#!/usr/bin/env bash
#################################################
source    "dirs.sh"
declare   "name=$(basename ${BASH_SOURCE[0]%.*})"
#################################################
source    "arrf.sh"   "${srcs[$name]}"
source    <(cat ${file[@]})
#################################################
