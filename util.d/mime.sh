#!/usr/bin/env bash
#############################################
declare   "bin=xdg-mime"
declare   "app=$(${bin} query default ${1?})"
#############################################
declare   "bin=gtk-launch"
eval      "${bin} ${app}"
#############################################
