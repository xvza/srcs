#!/usr/bin/env bash
#################################################
declare   "name=$(basename ${BASH_SOURCE[0]%.*})"
#################################################
declare   "cmd=killall"
declare   "cfg=${SHRD}/${name}/config.sh"
#################################################
eval      "${cmd} -q ${name}"
eval      "${name} -c ${cfg}"                   &
#################################################
