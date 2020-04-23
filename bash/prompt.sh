#!/usr/bin/env bash
####################################
source    "colo.sh"
####################################
declare   "id=$(id -u ${USER})"
####################################
unset     "PS1"
declare   "PS1+=$(eval ${line})\n"
declare   "PS1+=\[${shell[bold]}\]"
declare   "PS1+=\[${shell[$id]}\]"
declare   "PS1+=[\u:\w:\#]"
declare   "PS1+=\[${shell[init]}\] "
####################################
