#!/usr/bin/env bash
###########################################################
declare   "name=$(basename ${BASH_SOURCE[0]%.*})"
###########################################################
eval      "killall -q ${name}"
eval      "${name} -c ${SHRD}/${name}/config.sh"          &
###########################################################
