#!/usr/bin/env bash
######################################################
declare   "name=$(basename ${BASH_SOURCE[0]%.*})"
source    "moun.sh"  "${name}"
######################################################
declare   "dest=${HOME}/"
eval      "sudo del0.sh ${dest}"
######################################################
declare   "dest=/etc/skel"
eval      "sudo del0.sh ${dest}"
######################################################
declare   "dest=/etc"
declare   "src=${dire[$name]}"
eval      "sudo dir0.sh ${dest} ${src}"
######################################################
declare   "dest=/etc/bashrc"
source    "${dest}"
echo      "source: ${dest}"
######################################################
declare   "dest=${HOME}"
declare   "src=/etc/skel"
declare   "opt=-mindepth 1 -maxdepth 1 -name .*"
eval      "sudo dir0.sh ${dest} $(find ${src} ${opt})"
######################################################
