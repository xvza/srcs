#!/usr/bin/env bash
###########################################################
set -u
###########################################################
declare   "name=$(basename ${BASH_SOURCE[0]%.*})"
declare   "dele=$(command -v dele.sh)"
declare   "copy=$(command -v copy.sh)"
###########################################################
source    "moun.sh"  "${name}"
source    "environment.sh"
###########################################################
eval      "sudo ${dele} ${HOME}"
eval      "sudo ${dele} ${SKEL}"
###########################################################
eval      "sudo ${copy} /etc ${dire[$name]}"
eval      "sudo ${copy} ${HOME} ${SKEL} 1"
###########################################################
