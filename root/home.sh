#!/usr/bin/env bash
##########################################################
declare   "dest=/root/"
declare   "src=${dirs[etcs]}skel/.config/gtk-3.0/"
##########################################################
source    "moun.sh"  "etcs"
source    "head.sh"
source    "core.sh"  "${dirs[etcs]}"  "etcs directory   :"
source    "core.sh"  "${dest}"        "dest directory   :"
source    "foot.sh"
##########################################################
eval      "sudo del1.sh ${dest}"
eval      "sudo dir0.sh ${dest}.config/ ${src}"
eval      "sudo rep3.sh ${dest} _USER ${USER}"
##########################################################
