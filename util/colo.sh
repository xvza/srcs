#!/usr/bin/env bash
##############################################
declare   "bold=$(tput bold)"
declare   "nc=$(tput sgr0)"
##############################################
declare   "-A"  "color"
##############################################
declare   "color[POLARNIGHT0]=$(tput setaf 0)"
declare   "color[POLARNIGHT3]=$(tput setaf 8)"
declare   "color[SNOWSTORM0]=$(tput setaf 7)"
declare   "color[SNOWSTORM2]=$(tput setaf 15)"
declare   "color[FROST0]=$(tput setaf 6)"
declare   "color[FROST1]=$(tput setaf 14)"
declare   "color[FROST2]=$(tput setaf 12)"
declare   "color[FROST3]=$(tput setaf 4)"
declare   "color[AURORA0]=$(tput setaf 5)"
declare   "color[AURORA1]=$(tput setaf 1)"
declare   "color[AURORA2]=$(tput setaf 3)"
declare   "color[AURORA3]=$(tput setaf 2)"
declare   "color[AURORA4]=$(tput setaf 13)"
##############################################
declare   "color[0]=${color[AURORA3]}"
declare   "color[1]=${color[AURORA1]}"
##############################################
declare   "color[1000]=${color[FROST0]}"
##############################################
