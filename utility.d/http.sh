#!/usr/bin/env bash
###########################################################
declare   "url=https://github.com/${1}"
###########################################################
source    "net1.sh"  "${dire[0]}/${1}"  "${url}"
###########################################################
