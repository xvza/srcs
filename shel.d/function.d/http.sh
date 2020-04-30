#!/usr/bin/env bash
########################################################
function    gl()                                       {
########################################################
  declare   "dest=${2-$TMPDIR}/${1}"
  declare   "url=https://github.com/${1}.git"
########################################################
  source    "head.sh"
  source    "core.sh"  "${dest}"  "destination :"  false
  source    "core.sh"  "${url}"   "source      :"  false
  source    "foot.sh"
########################################################
  source    "net1.sh"  "${dest}"  "${url}"
########################################################
                                                       }
########################################################
function    gh()                                       {
########################################################
  git checkout --orphan latest_branch
  git add -A
  git commit -am "initial commit"
  git branch -D master
  git branch -m master
  git push -f origin master
  git push --set-upstream origin master
########################################################
                                                       }
########################################################
