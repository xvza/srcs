#!/usr/bin/env bash
###################
source    "net0.sh"
###################
[[ ${?} -eq 1 ]]  \
&& source "http.sh"
###################