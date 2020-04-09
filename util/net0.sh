#!/usr/bin/env bash
#################################################
declare   "dirs=$(dirname ${BASH_SOURCE[0]})"
source    "arrd.sh"  "${dirs}/../../"
source    "endf.sh"
#################################################
declare   "name=$(basename ${BASH_SOURCE[0]%.*})"
declare   "l0=directory label"
declare   "l1=directory not found"
#################################################
[[ -z ${1?$l0} ]]                               \
&& exit
#################################################
declare   "mesg[0]=${dire[$1]}"
declare   "mesg[1]=${l1}"
#################################################
[[ ${dire[$1]} ]]                               \
&& eval   "${name} ${1}"
#################################################
