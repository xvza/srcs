#!/usr/bin/env bash
################################################
source    "hexa.sh"
################################################
declare   "hb=${hexa[background]}"
declare   "hp=${hexa[primary]}"
declare   "hf=${hexa[lightgrey]}"
declare   "hr=${hexa[black]}"
################################################
declare   "window=${hb},${hr},${hp}"
declare   "normal=${hb},${hf},${hb},${hp},${hb}"
declare   "active=${hb},${hf},${hb},${hp},${hb}"
################################################
echo      "rofi.color-window  :${window}"
echo      "rofi.color-normal  :${normal}"
echo      "rofi.color-active  :${active}"
################################################
