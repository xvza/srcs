#!/usr/bin/env bash
#################################################
declare   "dirs=$(dirname ${BASH_SOURCE[0]})/../"
source    "${dirs}dirs.sh"
#################################################
source    "moun.sh"  "list"
declare   "syst=${path[list]}/syst/"
#################################################
declare   "list=$(cat ${syst}ena)"
eval      "sudo systemctl enable ${list}"
echo      "systemctl: enable ${list}"
#################################################
declare   "list=$(cat ${syst}mas)"
eval      "sudo systemctl mask ${list}"
echo      "systemctl: mask ${list}"
#################################################
eval      "sudo systemctl daemon-reload"
echo      "systemctl: daemon-reload"
#################################################
#   systemctl   set-default   graphical.target
#################################################
