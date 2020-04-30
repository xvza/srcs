#!/usr/bin/env bash
#################################################
declare   "name=$(basename ${BASH_SOURCE[0]%.*})"
declare   "opts=-mindepth 1 -maxdepth 1"
declare   "dele=$(command -v dele.sh)"
declare   "copy=$(command -v copy.sh)"
#################################################
source    "moun.sh"  "${name}"
source    "environment.sh"
#################################################
eval      "sudo ${dele} ${HOME}"
eval      "sudo ${dele} ${SKEL}"
#################################################
declare   "dest=${dire[$name]} ${opts}"
declare   "dest=$(find ${dest} -not -name '.*')"
eval      "sudo ${copy} /etc ${dest}"
#################################################
declare   "dest=${SKEL} ${opts}"
declare   "dest=$(find ${dest} -name '.*')"
eval      "sudo ${copy} ${HOME} ${dest}"
#################################################
