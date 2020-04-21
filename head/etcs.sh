#!/usr/bin/env bash
#################################################
declare   "name=$(basename ${BASH_SOURCE[0]%.*})"
declare   "opts=-mindepth 1 -maxdepth 1 -name .*"
declare   "cmd=${SKEL} ${opts}"
declare   "dele=$(command -v dele.sh)"
declare   "dir0=$(command -v dir0.sh)"
#################################################
source    "moun.sh"  "${name}"
#################################################
eval      "sudo ${dele} ${HOME}"
eval      "sudo ${dele} /etc/skel"
eval      "sudo ${dir0} /etc ${dire[$name]}/*"
eval      "sudo ${dir0} ${HOME} $(find ${cmd})"
#################################################
declare   "dest=/etc/bashrc"
source    "${dest}"
echo      "source: ${dest}"
#################################################
declare   "dest=/etc/bash.bashrc"
source    "${dest}"
echo      "source: ${dest}"
#################################################
