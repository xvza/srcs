#!/usr/bin/env bash
############################################
declare   "cmd=$(${BASH_ALIASES[mk]} ${@})"
declare   "str=mkdir: '${1?}' already exist"
############################################
[[ -z ${cmd} ]] && \
echo      "${str}"
############################################
[[ -n ${cmd} ]] && \
echo      "${cmd}"
############################################
