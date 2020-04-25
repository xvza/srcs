#!/usr/bin/env bash
################################################
declare   "hb=${hexa[background]}"
declare   "hp=${hexa[primary]}"
declare   "hf=${hexa[foreground]}"
declare   "hr=${hexa[border]}"
################################################
declare   "window=${hb},${hr},${hp}"
declare   "normal=${hb},${hf},${hb},${hp},${hb}"
declare   "active=${hb},${hf},${hb},${hp},${hb}"
################################################
echo      "rofi.color-window  :${window}"
echo      "rofi.color-normal  :${normal}"
echo      "rofi.color-active  :${active}"
################################################
