#!/usr/bin/env bash
########################################
declare   "pass=$(zenity --password)"
eval      "echo ${pass} | sudo -bS ${@}"
########################################
