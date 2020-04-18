#!/usr/bin/env bash
###############################################
eval      "gpaste-client empty"
eval      "yay -Scc --noconfirm 2> /dev/null"
eval      "dnf clean all 2> /dev/null"
###############################################
declare   "path=${SHRD}/dconf"
eval      "dconf reset -f /"
###############################################
declare   "list=find ${path} -type f"
###############################################
eval      "dconf load / < $(${list} | head -1)"
eval      "dconf load / < $(${list} | tail -1)"
###############################################
