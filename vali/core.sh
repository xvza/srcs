#!/usr/bin/env bash
################################################
declare   "col=${shell[3]}"
declare   "msg=${1:-${shell[2]}none}${init}"
################################################
[[ -e ${1?} ]] &&                              \
declare   "col=${shell[0]}"
################################################
[[    ${3} ]] &&                               \
declare   "col=${shell[1]}"
################################################
[[ !  ${3} ]] && [[ !  -e  ${1?} ]] &&         \
declare   "err=1"
################################################
[[    ${3} ]] && [[    -z  ${1?} ]] &&         \
declare   "err=1"
################################################
echo      "${2?}  ${col}${msg}${init}"
################################################
