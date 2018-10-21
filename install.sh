#!/bin/bash

if [ "$(id -u)" != "0" ]; then
 echo "Execute como superusuário  'root'"
 exit
fi

mkdir -p /usr/lampada-proinfo-ctl/

echo "Digite 'epson' (sem aspas) caso o seu projetor seja um 71/2013 ou se voce tiver certeza de que o fabricante da lampada é Epson:"
echo "Ou digite 'benq' (sem aspas) caso o seu projetor seja um 42/2010 ou se voce tiver certeza de que o fabricante da lampada é a Benq:"
echo "Digite abaixo ..."
read fabricante
echo $fabricante >> /lib/lampada-projetor-proinfo-libs/fabricante
echo "OK. Você possui um Projetor" $fabricante

cd ~
cp Lampada-Projetor-Proinfo/usr/* /
cp Lampada-Projetor-Proinfo/etc/* /
cp Lampada-Projetor-Proinfo/bin/* /
cp Lampada-Projetor-Proinfo/lib/* /


