#!/usr/bin/env bash
###########################################################
function  xd()                                            {
###########################################################
  eval      "xdg-open ${1}"                               &
###########################################################
                                                          }
###########################################################
function  sr()                                            {
###########################################################
  local     "s0=unknown search"
  eval      "ls -Ra ${2-./}|grep ${1}"
###########################################################
                                                          }
###########################################################
function  so()                                            {
###########################################################
  local     "s0=unknown search"
  eval      "locate ${1}|grep ${1$s0}"
###########################################################
                                                          }
###########################################################
function  rmo()                                           {
###########################################################
  local     "s0=undefined file"
  local     "dire=$(dirname ${1$s0})"
###########################################################
  [[ ! -O ${dire} ]] && eval "sudo ${BASH_ALIASES[rm]} ${@}"
  [[   -O ${dire} ]] && eval   "${BASH_ALIASES[rm]} ${@}"
###########################################################
                                                          }
###########################################################
function  rt()                                            {
###########################################################
  cd "${http}/${1}" && [[ ${2} == "g" ]] && source "push.sh"
###########################################################
                                                          }
###########################################################
