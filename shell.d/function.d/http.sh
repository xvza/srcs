#!/usr/bin/env bash
###########################################################
function  gl()                                            {
###########################################################
  declare   "dest=${2-$TMPDIR}/${1}"
  declare   "url=https://github.com/${1}.git"
###########################################################
  source    "head.sh"
  source    "core.sh"  "${dest}"  "destination :"  false
  source    "core.sh"  "${url}"   "source      :"  false
  source    "foot.sh"
  source    "net1.sh"  "${dest}"  "${url}"
###########################################################
                                                          }
###########################################################
function  gh()                                            {
###########################################################
  eval      "git checkout --orphan latest_branch"
  eval      "git add -A"
  eval      "git commit -am initial commit"
  eval      "git branch -D master"
  eval      "git branch -m master"
  eval      "git push -f origin master"
  eval      "git push --set-upstream origin master"
###########################################################
                                                          }
###########################################################
