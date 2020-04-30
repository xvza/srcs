#!/usr/bin/env bash
########################################
declare   "${1?destination directory}"
declare   "${2?archive file}"
########################################
source    "adds.sh"  "${1?}"
########################################
declare   "bin=$(unzip -o ${2} -d${1?})"
echo      "${bin}"
########################################
