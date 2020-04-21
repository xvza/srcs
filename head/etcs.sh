#!/usr/bin/env bash
#################################################
declare   "name=$(basename ${BASH_SOURCE[0]%.*})"
declare   "opts=-mindepth 1 -maxdepth 1"
declare   "hide=-name .*"
declare   "dele=$(command -v dele.sh)"
declare   "copy=$(command -v copy.sh)"
declare   "env=profile.d/environment.sh"
#################################################
source    "moun.sh"  "${name}"
source    "${dire[$name]}/${env}"
#################################################
eval      "sudo ${dele} ${HOME}"
eval      "sudo ${dele} ${SKEL}"
#################################################
declare   "dest=${dire[$name]} ${opts} ! ${hide}"
eval      "sudo ${copy} /etc $(find ${dest})"
#################################################
declare   "dest=${SKEL} ${opts} ${hide}"
eval      "sudo ${copy} ${HOME} $(find ${dest})"
#################################################
