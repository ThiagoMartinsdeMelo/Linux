#!/bin/bash

#List VNC ports in use on the kvm server.

for i in $(virsh -q list|awk '{print $2}'|sort); do
    PORTNUM=$(virsh vncdisplay $i|cut -f 2 -d ':')
    printf "% 2d: \033[01;32m%.20s\033[00m\n" "$PORTNUM" "$i";
  done | sort -n
