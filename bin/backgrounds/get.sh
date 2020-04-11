#!/usr/bin/env bash
############################################################
declare   "dire=$(dirname ${BASH_SOURCE[0]})/"
declare   "url=https://source.unsplash.com/${MODE}/?${NEED}"
############################################################
source    "net2.sh"  "${IMG}"  "${url}"  "${IMG}"
source    "${dire}set.sh"
############################################################
