#!/usr/bin/env bash
################################################################
alias   "le=cd /etc/"
alias   "lx=le;cd ./xdg/"
alias   "lk=le;cd ./skel/"
alias   "lea=lx;cd ./autostart/"
alias   "leo=lx;cd ./openbox/"
################################################################
alias   "lu=cd /usr/"
alias   "lua=lu;cd ./share/"
alias   "lui=lua;cd ./icons/"
alias   "lut=lua;cd ./themes/"
################################################################
alias   "rd=rt devs"
alias   "re=rt etcs"
alias   "rh=rt trsh"
alias   "rl=rt list"
alias   "rs=rt srcs"
alias   "ru=rt usrs"
alias   "rv=rt vars"
################################################################
alias   "rea=re;cd ./xdg/autostart/"
alias   "rek=re;cd ./skel"
alias   "reo=re;cd ./xdg/openbox/"
################################################################
alias   "rua=ru;cd ./local/share/"
alias   "rui=ru;cd ./local/bin/"
alias   "rus=ru;cd ./local/bin/bash/"
################################################################
alias   "rvh=rv;cd ./http/"
alias   "rvl=rv;cd ./local/"
alias   "rvw=rv;cd ./wall/"
################################################################
alias   "cp=cpo -u"
alias   "cpo=cp -rv"
################################################################
alias   "chmod=chmod -v"
alias   "chown=chown -v"
################################################################
alias   "en=ta :en"
alias   "fr=ta :fr"
alias   "ta=trans -p"
################################################################
alias   "ll=exa -la -s type"
alias   "lt=ll -T"
################################################################
alias   "gr=grep"
alias   "grep=grep --color=auto -i"
################################################################
alias   "mk=mkdir"
alias   "mkdir=mkdir -vp"
################################################################
alias   "nw=newsbeuter"
alias   "newsbeuter=rl;newsbeuter -u ./news/add"
################################################################
alias   "po=polybar"
alias   "polybar=rui;./panel/polybar.sh"
################################################################
alias   "ca=cava"
alias   "cava=rua;cava -p ./cava/config.ini"
################################################################
alias   "tra=transmission-cli"
alias   "transmission-cli=lh;transmission-cli -g ./transmission"
################################################################
alias   "du=du -hs *|sort -rh"
alias   "ft=grep -nr"
alias   "ge=git clean -f -x"
alias   "mv=mv -v"
alias   "ne=neofetch"
alias   "rename=rename -v"
alias   "rm=rm -rv"
alias   "wg=wget"
alias   "wh=which"
################################################################
