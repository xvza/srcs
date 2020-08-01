#!/usr/bin/env bash
###########################################################
function  co()                                            {
###########################################################
  declare   "ln=type number of line"
  declare   "space=$(seq -s' ' ${1?$ln}|tr -d [:digit:])"
###########################################################
  source    "shel.sh"
###########################################################
echo
for i in {30..37}; do
  printf " │ "
  for a in {40..47}; do
    echo -ne "\e[$i;$a""m${space}"
    printf ${shell[init]}
  done
  echo
done
echo
###########################################################
                                                          }
###########################################################
function  man()                                           {
###########################################################
  source    "colo.sh"
###########################################################
  export    "LESS_TERMCAP_md=${shell[bold]}${shell[1]}"
  export    "LESS_TERMCAP_me=${shell[init]}"
  export    "LESS_TERMCAP_so=${shell[bold]}${shell[2]}"
  export    "LESS_TERMCAP_se=${shell[init]}"
  export    "LESS_TERMCAP_us=${shell[bold]}${shell[3]}"
  export    "LESS_TERMCAP_ue=${shell[init]}"
###########################################################
  command   "man"  "$@"
###########################################################
                                                          }
###########################################################
