#!/bin/bash

if [ "$(id -u)" != "0" ]; then
 echo "need root"
 exit
fi
echo "Digite 'epson' (sem aspas) caso o seu projetor seja um 71/2013 ou se voce tiver certeza de que o fabricante da lampada é Epson:"
echo "Ou digite 'benq' (sem aspas) caso o seu projetor seja um 42/2010 ou se voce tiver certeza de que o fabricante da lampada é a Benq:"
echo "Digite abaixo ..."
read fabricante
echo $fabricante >> /usr/lampada-proinfo-ctl/fabricante.txt
echo "OK. Você possui um Projetor" $fabricante

mkdir -p /usr/lampada-proinfo-ctl/
cp *.txt /usr/lampada-proinfo-ctl/
cp projetor-* /usr/lampada-proinfo-ctl/
cp *.sh /usr/lampada-proinfo-ctl/
cp *.service /etc/systemd/system/
cp epson-projector-cmd /bin/
echo "O projetor desligará a lâmpada em instantes..."

systemctl enable projetor-on.service
systemctl enable projetor-off.service
systemctl start projetor-off.service


