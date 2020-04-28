#!/usr/bin/env bash
####################################
source    "colo.sh"
####################################
declare   "hexa=$(typeset -p color)"
declare   "hexa=${hexa//=\"/=\"#}"
eval      "${hexa//color/hexa}"
####################################
