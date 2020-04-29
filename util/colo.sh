#!/usr/bin/env bash
#################################################
declare   "-A"  "color"
#################################################
declare   "color[black]=2e3440"
declare   "color[darkred]=bf616a"
declare   "color[darkgreen]=a3be8c"
declare   "color[brown]=d08770"
declare   "color[darkblue]=5e81ac"
declare   "color[darkmagenta]=b48ead"
declare   "color[darkcyan]=88c0d0"
declare   "color[lightgrey]=d8dee9"
declare   "color[darkgrey]=4c566a"
declare   "color[red]=bf616a"
declare   "color[green]=8fbcbb"
declare   "color[yellow]=ebcb8b"
declare   "color[blue]=81a1c1"
declare   "color[magenta]=b48ead"
declare   "color[cyan]=8fbcbb"
declare   "color[white]=eceff4"
#################################################
declare   "-A"  "share"
#################################################
declare   "share[border]=${color[black]}"
declare   "share[background]=3b4252"
declare   "share[foreground]=${color[lightgrey]}"
declare   "share[primary]=${color[cyan]}"
declare   "share[warning]=${color[yellow]}"
declare   "share[alert]=${color[red]}"
#################################################

echo $(eval echo  "${share[primary]}")
