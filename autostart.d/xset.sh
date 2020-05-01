#!/usr/bin/env bash
###########################################################
declare   "name=$(basename ${BASH_SOURCE[0]%.*})"
###########################################################
eval      "${name} s off"
eval      "${name} s noblank"
eval      "${name} s noexpose"
eval      "${name} -dpms"
###########################################################
