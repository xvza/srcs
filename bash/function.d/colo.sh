#!/usr/bin/env bash
#######################################################
function  co()                                        {
#######################################################
  declare   "-i"  "n=5"
  declare   "space=$(seq -s' ' ${n}|tr -d [:digit:])"
  source    "colo.sh"
#######################################################
  echo
  for l in {0..7}
  do
#######################################################
    printf    " │"
    for c in {8..15}
    do
      printf  "${background[$l]}${space}"
      printf  "${background[$c]}${space}"
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
#######################################################
  export    "LESS_TERMCAP_md=${shell[bold]}${shell[1]}"
  export    "LESS_TERMCAP_me=${shell[init]}"
  export    "LESS_TERMCAP_so=${shell[bold]}${shell[2]}"
  export    "LESS_TERMCAP_se=${shell[init]}"
  export    "LESS_TERMCAP_us=${shell[bold]}${shell[3]}"
  export    "LESS_TERMCAP_ue=${shell[init]}"
#######################################################
  command   "man"  "$@"
#######################################################
                                                      }
#######################################################
