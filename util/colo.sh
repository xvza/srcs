#!/usr/bin/env bash
###########################################
declare   "background=3b4252"
declare   "black=2e3440"
declare   "darkred=b48ead"
declare   "darkgreen=a3be8c"
declare   "brown=ebcb8b"
declare   "darkblue=5e81ac"
declare   "darkmagenta=bf616a"
declare   "darkcyan=88c0d0"
declare   "lightgrey=d8dee9"
declare   "darkgrey=4c566a"
declare   "red=d08770"
declare   "green=8fbcbb"
declare   "yellow=ebcb8b"
declare   "blue=81a1c1"
declare   "magenta=b48ead"
declare   "cyan=8fbcbb"
declare   "white=eceff4"
###########################################
declare   "-A"  "shell"
###########################################
declare   "shell[bold]=$(tput bold)"
declare   "shell[init]=$(tput sgr0)"
declare   "shell[0]=$(tput setaf 2)"
declare   "shell[1]=$(tput setaf 1)"
declare   "shell[2]=$(tput setaf 5)"
declare   "shell[3]=$(tput setaf 4)"
declare   "shell[primary]=$(tput setaf 2)"
###########################################
declare   "-A"  "hexa"
###########################################
declare   "hexa[border]=#${black}"
declare   "hexa[background]=#${background}"
declare   "hexa[foreground]=#${lightgrey}"
declare   "hexa[primary]=#${cyan}"
declare   "hexa[warning]=#${yellow}"
declare   "hexa[alert]=#${red}"
###########################################
declare   "-a"  "background"
###########################################
for i in {0..15}
do
  declare "background[$i]=$(tput setab $i)"
done
###########################################
