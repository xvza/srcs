#!/usr/bin/env bash
############################################################
declare   "-A"  "shell"
############################################################
declare   "shell[bold]=$(setterm -bold on)"
declare   "shell[init]=$(setterm -default)"
declare   "shell[0]=$(setterm -foreground green)"
declare   "shell[1]=$(setterm -foreground red)"
declare   "shell[2]=$(setterm -foreground magenta)"
declare   "shell[3]=$(setterm -foreground blue)"
declare   "shell[primary]=$(setterm -foreground ${COLOR})"
############################################################
