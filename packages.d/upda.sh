#!/usr/bin/env bash
#################################
declare   "opts=upd"
#################################
source    "prog.sh"
source    "vali.sh"  "${opts}"
#################################
eval      "sudo ${prog} ${!opts}"
#################################