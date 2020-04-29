#!/usr/bin/env bash
######################################
source    "colo.sh"
######################################
for i in ${!order[@]}
do
  declare "-i"  "x=$i+8"
  printf  "\e]P$i${order[$i]}"
  printf  "\e]P%X${order[$i]}"  "$x"
done
######################################
