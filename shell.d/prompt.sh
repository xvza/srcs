#!/usr/bin/env bash
######################################
source    "shel.sh"
######################################
declare   "PS1=$(eval ${LINE})\n"
declare   "PS1+=\[${shell[bold]}\]"
declare   "PS1+=\[${shell[primary]}\]"
declare   "PS1+=⸤\u:\w:\#⸣"
declare   "PS1+=\[${shell[init]}\] "
######################################
