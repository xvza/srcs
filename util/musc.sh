#!/usr/bin/env bash
##############################
declare   "bin=ogg123"
declare   "s0=music directory"
##############################
eval      "killall ${bin}"
eval      "${bin} -z ${1?$s0}"
##############################
