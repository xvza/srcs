#!/usr/bin/env bash
###########################################################
set -u
###########################################################
declare   "arg=${WIDTH}x${HEIGHT}?nature,animals"
declare   "url=https://source.unsplash.com/${arg}"
declare   "img=${SKEL}/Picture/_.jpg"
###########################################################
eval      "wget -P${img} -nc ${url} ${img}"
###########################################################
