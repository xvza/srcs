#!/usr/bin/env bash
#############################################
declare   "src=/boot/grub/grub.cfg"
eval      "sudo grub-mkconfig -o ${src}"
#############################################
declare   "src=/boot/efi/EFI/fedora/grub.cfg"
eval      "sudo grub2-mkconfig -o ${src}"
#############################################
