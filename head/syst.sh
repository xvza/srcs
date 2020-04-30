#!/usr/bin/env bash
#################################################
source    "moun.sh"  "list"
#################################################
declare   "syst=${dire[list]}/syst/"
#################################################
declare   "list=$(echo $(cat ${syst}ena))"
#################################################
eval      "sudo systemctl enable ${list}"
echo      "systemctl: enable ${list}"
#################################################
declare   "list=$(echo $(cat ${syst}mas)"
#################################################
eval      "sudo systemctl mask ${list}"
echo      "systemctl: mask ${list}"
#################################################
eval      "sudo systemctl daemon-reload"
echo      "systemctl: daemon-reload"
#################################################
eval      "sudo updatedb -v"
#################################################
