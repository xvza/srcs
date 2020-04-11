#!/usr/bin/env bash
#############################
declare   "cmd=killall"
declare   "bin=gpaste-daemon"
#############################
eval      "${cmd} -q ${bin}"
#############################
declare   "bin=gpaste-client"
#############################
eval      "${bin} start"
#############################
