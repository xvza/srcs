#!/usr/bin/env bash
#################################################
declare   "name=$(basename ${BASH_SOURCE[0]%.*})"
declare   "opts=-mindepth 1 -maxdepth 1"
declare   "hide=-name .*"
declare   "dele=$(command -v dele.sh)"
declare   "copy=$(command -v dir0.sh)"
#################################################
source    "moun.sh"  "${name}"
#################################################
eval      "sudo ${dele} ${HOME}"
eval      "sudo ${dele} /etc/skel"
#################################################
declare   "dest=${dire[$name]} ${opts} ! ${hide}"
eval      "sudo ${copy} /etc $(find ${dest})"
#################################################
declare   "dest=${SKEL} ${opts} ${hide}"
eval      "sudo ${copy} ${HOME} $(find ${dest})"
#################################################
declare   "dest=/etc/bashrc"
source    "${dest}"
echo      "source: ${dest}"
#################################################
declare   "dest=/etc/bash.bashrc"
source    "${dest}"
echo      "source: ${dest}"
#################################################
