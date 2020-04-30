#!/usr/bin/env bash
###############################################
eval      "gpaste-client empty"
eval      "yay -Scc --noconfirm 2> /dev/null"
eval      "dnf clean all 2> /dev/null"
###############################################
declare   "list=find ${SHRD}/dconf -type f"
eval      "dconf reset -f /"
eval      "dconf load / < $(${list} | head -1)"
eval      "dconf load / < $(${list} | tail -1)"
###############################################
declare   "dire=${HOME}/.local/share/epiphany"
declare   "opts=-mindepth 1 ! -name *.gvdb"
eval      "find ${dire} ${opts} -delete"
###############################################
declare   "dire=${HOME}/.local/share"
declare   "opts=-name *.xbel"
eval      "find ${dire} ${opts} -delete"
###############################################
declare   "dire=${HOME}/.cache"
declare   "opts=-mindepth 1"
eval      "find ${dire} ${opts} -delete"
###############################################
