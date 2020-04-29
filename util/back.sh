#!/usr/bin/env bash
######################################
declare   "-a"  "back"
declare   "-A"  "color"
declare   "format=setterm -background"

source    "colo.sh"
######################################
for color in ${!color[@]}
do
  declare "back+=($(${format} ${color}))"
done
######################################
