#!/usr/bin/env bash
#####################################################
declare   "name=$(basename ${BASH_SOURCE[0]%.*})"
source    "moun.sh"  "${name}"
#####################################################
declare   "dest=${dire[$name]}local"
eval      "sudo ${BASH_ALIASES[cro]} ${USER} ${dest}"
#####################################################
declare   "dest=${dire[$name]}local/bin"
eval      "sudo ${BASH_ALIASES[crm]} ${dest}"
#####################################################
declare   "dire=${dire[$name]}local/share/dconf"
declare   "file=${dire}/config.ini"
eval      "dconf reset -f /"
eval      "dconf load / ${file}"
#####################################################
