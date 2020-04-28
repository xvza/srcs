#!/usr/bin/env bash
######################################
declare   "id=$(id -u ${USER})"
######################################
source    "fore.sh"
######################################
unset     "PS1"
######################################
declare   "PS1+=$(eval ${LINE})\n"
declare   "PS1+=\[${shell[bold]}\]"
declare   "PS1+=\[${shell[primary]}\]"
declare   "PS1+=⸤${id}:\u:\w:\#⸣"
declare   "PS1+=\[${shell[init]}\] "
######################################
