#!/usr/bin/env bash
###########################################################
function  mu()                                            {
###########################################################
  source    "musc.sh"  "${SKEL}/Music"
###########################################################
                                                          }
###########################################################
function  am()                                            {
###########################################################
  declare   "line=grep \[[0-9]*%\]"
###########################################################
  eval      "amixer get Master|${line}"
  eval      "amixer -M get Master|${line}"
###########################################################
                                                          }
###########################################################
