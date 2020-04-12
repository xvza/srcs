#!/usr/bin/env bash
##################################################
declare   "name=$(basename ${BASH_SOURCE[0]%.*})"
source    "moun.sh"  "${name}"
##################################################
eval      "sudo dir0.sh /usr ${dire[$name]}/share"
##################################################
