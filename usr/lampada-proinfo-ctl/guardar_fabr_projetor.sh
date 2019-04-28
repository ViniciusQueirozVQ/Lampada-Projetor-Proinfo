#!/bin/bash

if [ "$(id -u)" != "0" ]; then
 echo "Execute como superusuário  'root'"
 exit
fi

echo "Digite 'epson' (sem aspas) caso o seu projetor seja um 71/2013 ou se voce tiver certeza de que o fabricante da lampada é Epson:"
echo "Ou digite 'benq' (sem aspas) caso o seu projetor seja um 42/2010 ou se voce tiver certeza de que o fabricante da lampada é a Benq:"
echo "Digite abaixo ..."
read fabricante
echo $fabricante >> /lib/vendor
echo "OK. Você possui um Projetor" $fabricante
exit
