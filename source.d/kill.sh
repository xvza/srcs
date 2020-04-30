#!/usr/bin/env bash
#########################################
declare   "id=$(xdotool getactivewindow)"
#########################################
eval      "xdotool windowkill ${id}"
#########################################
