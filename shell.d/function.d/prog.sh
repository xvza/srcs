#!/usr/bin/env bash
###########################################################
function  get()                                           {
###########################################################
  source    "prog.sh"
  source    "${prog}.sh"
###########################################################
  declare   "-g"  "prog=${prog}"
  declare   "-g"  "${FUNCNAME[1]}=${!FUNCNAME[1]}"
###########################################################
                                                          }
###########################################################
function  qh()                                            {
###########################################################
  declare   "-i"  "n=${1}+2"
###########################################################
  eval      "get"
  eval      "${prog}${!FUNCNAME[0]} ${@:2} | head -${n}"
###########################################################
                                                          }
###########################################################
function  qs()                                            {
###########################################################
  eval      "get"
  eval      "${prog}${!FUNCNAME[0]} ${@}"
###########################################################
                                                          }
###########################################################
function  qi()                                            {
###########################################################
  eval      "get"
  eval      "${prog}${!FUNCNAME[0]} ${@}"
###########################################################
                                                          }
###########################################################
function  qp()                                            {
###########################################################
  eval      "get"
  eval      "${prog}${!FUNCNAME[0]} ${@}"
###########################################################
                                                          }
###########################################################
function  li()                                            {
###########################################################
  eval      "get"
###########################################################
  [[ -z ${1} ]] && eval "${prog}${!FUNCNAME[0]}|wc -l"
  [[ -n ${1} ]] && eval "${prog}${!FUNCNAME[0]} ${@}"
###########################################################
                                                          }
###########################################################
function  la()                                            {
###########################################################
  eval      "get"
  eval      "${prog}${!FUNCNAME[0]} ${@}"
###########################################################
                                                          }
###########################################################
function  add()                                           {
###########################################################
  eval      "get"
  eval      "sudo ${prog}${!FUNCNAME[0]} ${@}"
###########################################################
                                                          }
###########################################################
function  del()                                           {
###########################################################
  eval      "get"
  eval      "sudo ${prog}${!FUNCNAME[0]} ${@}"
###########################################################
                                                          }
###########################################################
function  upd()                                           {
###########################################################
  eval      "get"
  eval      "sudo ${prog}${!FUNCNAME[0]}"
###########################################################
                                                          }
###########################################################
