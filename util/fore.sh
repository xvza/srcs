#!/usr/bin/env bash
##########################################
declare   "-A"  "shell"
##########################################
declare   "shell[bold]=$(tput bold)"
declare   "shell[init]=$(tput sgr0)"
declare   "shell[0]=$(tput setaf 2)"
declare   "shell[1]=$(tput setaf 1)"
declare   "shell[2]=$(tput setaf 5)"
declare   "shell[3]=$(tput setaf 4)"
declare   "shell[primary]=$(tput setaf 2)"
##########################################
