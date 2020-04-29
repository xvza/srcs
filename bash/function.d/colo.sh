#!/usr/bin/env bash
#######################################################
function  co()                                        {
#######################################################
  declare   "space=$(seq -s' ' ${1}|tr -d [:digit:])"
#######################################################
  source    "back.sh"
  source    "shel.sh"
#######################################################
  echo
  for l in {0..7}
  do
#######################################################
    printf    " │${shell[bold]}"
    for c in {8..15}
    do
      printf  "${back[$l]}${space}${l}${space}"
      printf  "${back[$c]}${space}${c}${space}"
    done
    echo      "${shell[init]}"
#######################################################
  done
  echo
#######################################################
                                                      }
#######################################################
function  man()                                       {
#######################################################
  source    "colo.sh"
######################################################
  export    "LESS_TERMCAP_md=${shell[bold]}${shell[1]}"
  export    "LESS_TERMCAP_me=${shell[init]}"
  export    "LESS_TERMCAP_so=${shell[bold]}${shell[2]}"
  export    "LESS_TERMCAP_se=${shell[init]}"
  export    "LESS_TERMCAP_us=${shell[bold]}${shell[3]}"
  export    "LESS_TERMCAP_ue=${shell[init]}"
######################################################
  command   "man"  "$@"
#######################################################
                                                      }
#######################################################
