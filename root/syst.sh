#!/usr/bin/env bash
#################################################
declare   "dirs=$(dirname ${BASH_SOURCE[0]})/../"
source    "${dirs}dirs.sh"
#################################################
source    "moun.sh"  "list"
declare   "dire=${dire[list]}/syst/"
#################################################
declare   "file=${syst}ena"
##################################################
eval      "dos2unix ${file}"
declare   "list=$(echo $(cat ${file}))"
##################################################
eval      "sudo systemctl enable ${list}"
#echo      "systemctl: enable ${list}"
##################################################
declare   "file=${syst}mas"
##################################################
eval      "dos2unix ${file}"
declare   "list=$(echo $(cat ${file})"
##################################################
#eval      "sudo systemctl mask ${list}"
#echo      "systemctl: mask ${list}"
##################################################
#eval      "sudo systemctl daemon-reload"
#echo      "systemctl: daemon-reload"
##################################################
##   systemctl   set-default   graphical.target
##################################################
