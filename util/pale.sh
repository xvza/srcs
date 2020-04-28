#!/usr/bin/env bash
###########################################
source    "hexa.sh"
###########################################
for i in ${!hexa[@]}
do
  declare "palette+='${hexa[$i]}',"
done
###########################################
declare   "palette=$(echo ${hexa[@]})"
declare   "palette='${palette// /\',\'}'"
declare   "palette=${palette//\'/\\\'}"
###########################################
declare   "key=palette"
eval      "gsettings set com.gexperts.Tilix.Profile:/com/gexperts/Tilix/profiles/2b7c4080-0ddd-46c5-8f23-563fd3ba789d/ ${key} [${!key}]"
###########################################
