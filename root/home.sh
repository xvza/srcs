#!/usr/bin/env bash
##########################################################
declare   "dest=/$(id -nu 0)/"
declare   "src=${dirs[etcs]}skel/.config/gtk-3.0/"
##########################################################
source    "moun.sh"  "etcs"
source    "head.sh"
source    "core.sh"  "${dirs[etcs]}"  "etcs directory   :"
source    "core.sh"  "${dest}"        "dest directory   :"
source    "foot.sh"
##########################################################
eval      "sudo del0.sh ${dest}"
eval      "sudo dir0.sh ${dest}.config/ ${src}"
eval      "sudo rep0.sh ${dest} _USER ${USER}"
##########################################################
