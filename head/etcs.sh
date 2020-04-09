#!/usr/bin/env bash
#################################################
declare   "name=$(basename ${BASH_SOURCE[0]%.*})"
source    "moun.sh"  "${name}"
#################################################
declare   "dest=${HOME}/"
eval      "sudo del1.sh ${dest}"
#################################################
declare   "dest=/etc/skel/"
eval      "sudo del1.sh ${dest}"
#################################################
declare   "dest=/etc/"
declare   "src=${dire[$name]}"
eval      "sudo dir0.sh ${dest} ${src}"
#################################################
declare   "dest=${HOME}/.config/"
declare   "src=/etc/skel/.config"
eval      "sudo dir0.sh ${dest} ${src}"
#################################################
declare   "dest=${HOME}/.local/share/"
declare   "src=/etc/skel/.local/share/"
eval      "sudo dir0.sh ${dest} ${src}"
#################################################
declare   "dest=${dest}bashrc"
source    "${dest}"
echo      "source: ${dest}"
#################################################
