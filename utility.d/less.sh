#!/usr/bin/env bash
###########################################################
source    "pass.sh"
###########################################################
declare   "opts=d w c ${ssid} password ${key}"
###########################################################
eval      "nmcli ${opts}"
###########################################################
