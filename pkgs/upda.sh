#!/usr/bin/env bash
#################################
declare   "opts=upd"
#################################
source    "pmer.sh"
source    "vali.sh"  "${opts}"
#################################
eval      "sudo ${prog} ${!opts}"
#################################
