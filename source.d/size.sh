#!/usr/bin/env bash
##############################################
declare   "id=$(xdotool getactivewindow)"
declare   "x=${1?}%"
declare   "y=${2?}%"
##############################################
eval      "xdotool windowsize ${id} ${x} ${y}"
##############################################
