#!/usr/bin/env bash
#################################################
declare   "name=$(basename ${BASH_SOURCE[0]%.*})"
declare   "cfg=${SHRD}/${name}/config.ini"
#################################################
eval      "$(${name} ${cfg})"
#################################################
