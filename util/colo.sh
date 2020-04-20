#!/usr/bin/env bash
#######################################
declare   "bold=$(tput bold)"
declare   "nc=$(tput sgr0)"
#######################################
declare   "-A"  "shell"
#######################################
declare   "shell[0]=$(tput setaf 2)"
declare   "shell[1]=$(tput setaf 1)"
declare   "shell[2]=$(tput setaf 5)"
declare   "shell[3]=$(tput setaf 4)"
declare   "shell[1000]=$(tput setaf 6)"
#######################################
declare   "-A"  "primary"
#######################################
declare   "border=#2e3440"
declare   "background=#3b4252"
declare   "primary[foreground]=#d8dee9"
declare   "primary[background]=#8fbcbb"
#######################################
