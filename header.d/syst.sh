#!/usr/bin/env bash
##########################################
function  syst()                         {
##########################################
  [[ -n ${2} ]]                          \
  && local  "list=$(cat ${2}/${1?}|xargs)"
  eval      "sudo systemctl ${1} ${list}"
  echo      "systemctl: ${1} ${list}"
##########################################
                                         }
##########################################
source    "moun.sh"  "list"
eval      "syst enable ${dire[list]}/syst"
eval      "syst mask ${dire[list]}/syst"
eval      "syst daemon-reload"
eval      "sudo updatedb -v"
##########################################
