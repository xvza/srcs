#!/usr/bin/env bash
###########################################################
declare   "dir=${HOME}/.meteor"
declare   "url=https://install.meteor.com/"
###########################################################
[[ -d ${dir} ]] &&                                        \
echo      "${dir} already exist"
###########################################################
[[ -d ${dir} ]] ||                                        \
eval      "curl ${url}|sh"
###########################################################