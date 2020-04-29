#!/usr/bin/env bash
######################################
declare   "id=$(id -u ${USER})"
######################################
source    "shel.sh"
######################################
unset     "PS1"
######################################
declare   "PS1+=$(eval ${LINE})\n"
declare   "PS1+=\[${shell[bold]}\]"
declare   "PS1+=\[${shell[primary]}\]"
declare   "PS1+=⸤\u:${id}:\w:\#⸣"
declare   "PS1+=\[${shell[init]}\] "
######################################
