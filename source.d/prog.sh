#!/usr/bin/env bash
#############################################
declare   "dire=$(dirname ${BASH_SOURCE[0]})"
declare   "prog=$(dirname ${dire})/program.d"
declare   "file=$(ls ${prog})"
#############################################
for i in ${file[@]//.sh/}
do
#############################################
  [[ "$(command -v ${i})" ]]                \
  && export "prog=${i}"                     \
  && break
#############################################
done
#############################################
