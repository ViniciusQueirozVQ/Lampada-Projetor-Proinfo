#!/bin/bash

if [ "$(id -u)" != "0" ]; then
 echo "Necessita ser root"
 exit
fi
 
rm -r /usr/lampada-proinfo-ctl
rmdir --ignore-fail-on-non-empty /usr/lampada-proinfo-ctl
rm /etc/sbin/epson-projector-cmd
systemctl stop projetor-on.service
rm projetor-o*.service
echo ""
echo "Desinstalado com sucesso."
