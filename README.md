# pc-projetor-proinfo
Inicialização e desligamento automático do pc/projetor [Proinfo], pela porta serial para Ubuntu 18.04 LTS (Bionic) e derivados.

O Projetor Benq MS510 está dentro do Projetor Proinfo do Ministério da Educação ([FNDE 42/2010]).
O Projetor Epson está dentro do Projetor Proinfo do Ministério da Educação      ([FNDE 72/2013])

O arquivo Epson-Projector-cmd é responsável por controlar os Projetores da Epson via serial(USB provavelmente).O protocolo que permite a comunicação é o [ESC/VP21]. O manual sobre como usar o arquivo, bem como o protocolo está em https://epson.com/Support/wa00572.

Manual para projetores Benq: https://images.colombo.com.br/produtos/769811/769811_1438885888416.pdf
Seu protocolo de funcionamento é o rs232 disponível em:https://benqimage.blob.core.windows.net/driver-us-file/RS232-commands_all%20Product%20Lines.pdf


Exemplos de comandos para o controle do projetor, A ideia é serem executados de maneira automatica, então só os coloquei aqui para facilitar a compreenção:

Ainda não pude testar:
Para ligar
 Benq:

	$ echo -e "\x0D*pow=on#\x0D" > /dev/ttyS1
   ou
   
	$ cat pon.txt > /dev/ttyS1
 Epson:


	$ epson-projector-cmd poweron
   	$ epson-projector-cmd sendcmd "SOURCE 1F"
    
Para Retornar o projetor as configurações padrões:

	$ epson-projector-cmd defaults
    
Para desligar:
   
   Benq:
   
	$ echo -e "\x0D*pow=off#\x0D" > /dev/ttyS1
	
   ou
   
	$ cat poff.txt > /dev/ttyS1
	
   Epson:	

	$ epson-projector-cmd poweroff

Atenção: Não me responsabilizo por quaisquer problemas que possam acontecer!
