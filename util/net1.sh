#!/usr/bin/env bash
############################################
declare   "s0=destination directory"
declare   "s1=source repository"
############################################
eval      "sudo git clone ${2?$s1} ${1?$s0}"
############################################
