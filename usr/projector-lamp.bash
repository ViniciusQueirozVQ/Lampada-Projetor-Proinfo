#!/bin/bash
case $1 in
   "-on") 
#BENQ
		echo -e "\x0D*pow=on#\x0D" > /dev/ttyS1
		echo -e "\x0D*auto\x0D" > /dev/ttyS1
		echo -e "\x0D*baud=9600\x0D" > /dev/ttyS1
#EPSON		
		/bin/epson-projector-cmd poweron
		/bin/epson-projector-cmd sendcmd "SOURCE 1F"
		;;
   "-off")
#BENQ
		echo -e "\x0D*pow=off#\x0D" > /dev/ttyS1
#EPSON
		/bin/epson-projector-cmd poweroff
        ;;
   *) 
   echo "Falha ao executar" >> /var/log/lamp.log
   exit 1
      ;;
esac
#LOG
echo "$1,`date +%F","%T`" >> /var/log/lamp.log
