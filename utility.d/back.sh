#!/usr/bin/env bash
########################################
declare   "-a"  "back"
declare   "format=setterm -background "
########################################
source    "colo.sh"
########################################
for color in ${!order[@]}
do
  declare "back+=($(${format}${color}))"
done
########################################