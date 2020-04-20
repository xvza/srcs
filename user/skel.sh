#!/usr/bin/env bash
###########################################################
source    "moun.sh"  "etcs"
source    "head.sh"
source    "core.sh"  "${HOME}"        "home dire   :"
source    "core.sh"  "${SKEL}"        "skel dire   :"
source    "core.sh"  "${dire[etcs]}"  "etcs dire   :"
source    "foot.sh"
###########################################################
source    "dele.sh"  "${HOME}"
source    "dele.sh"  "${SKEL}"
source    "dir0.sh"  "${HOME}"        "${dire[etcs]}/skel/"
source    "dir0.sh"  "${SKEL}"        "${dire[etcs]}/skel/"
###########################################################
