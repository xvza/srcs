#!/usr/bin/env bash
##############################
declare   "s=${1:->>>}"
##############################
eval      "git add ."
eval      "git commit -m ${s}"
eval      "git push"
##############################
