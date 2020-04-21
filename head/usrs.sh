#!/usr/bin/env bash
##################################################
declare   "name=$(basename ${BASH_SOURCE[0]%.*})"
declare   "copy=$(command -v copy.sh)"
##################################################
source    "moun.sh"  "${name}"
##################################################
eval      "sudo ${copy} /usr ${dire[$name]}/share"
##################################################
