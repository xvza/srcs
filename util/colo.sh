#!/usr/bin/env bash
###########################################
declare   "-A"  "shell"
###########################################
declare   "shell[bold]=$(tput bold)"
declare   "shell[init]=$(tput sgr0)"
declare   "shell[0]=$(tput setaf 2)"
declare   "shell[1]=$(tput setaf 1)"
declare   "shell[2]=$(tput setaf 5)"
declare   "shell[3]=$(tput setaf 4)"
declare   "shell[primary]=$(tput setaf 6)"
###########################################
declare   "-A"  "hexa"
###########################################
declare   "hexa[border]=#2e3440"
declare   "hexa[background]=#3b4252"
declare   "hexa[foreground]=#d8dee9"
declare   "hexa[primary]=#8fbcbb"
declare   "hexa[warning]=#ebcb8b"
declare   "hexa[alert]=#bf616a"
###########################################
declare   "-a"  "background"
###########################################
for i in {0..15}
do
  declare "background[$i]=$(tput setab $i)"
done
###########################################
