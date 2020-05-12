#!/usr/bin/env bash
###########################################################
declare   "bios=/boot/grub/grub.cfg"
declare   "efi=/boot/efi/EFI/fedora/grub.cfg"
###########################################################
eval      "sudo grub-mkconfig -o ${bios}"
eval      "sudo grub2-mkconfig -o ${efi}"
###########################################################
