# pc-projetor-proinfo
Inicialização e desligamento automático do pc/projetor [Proinfo], pela porta serial para Ubuntu 18.04 LTS (Bionic) e derivados.

O Projetor Benq MS510 está dentro do Projetor Proinfo do Ministério da Educação ([FNDE 42/2010]).
O Projetor Epson está dentro do Projetor Proinfo do Ministério da Educação      ([FNDE 72/2013])

O arquivo Epson-Projector-cmd é responsável por controlar os Projetores da Epson via serial(USB provávelmente).O protocolo que permite a comunicação é o [ESC/VP21]. O manual sobre como usar o arquivo, bem como o protocolo está em https://epson.com/Support/wa00572.

Manual para projetores Benq: https://images.colombo.com.br/produtos/769811/769811_1438885888416.pdf
Seu protocolo de funcionamento é o rs232 disponível em:https://benqimage.blob.core.windows.net/driver-us-file/RS232-commands_all%20Product%20Lines.pdf

Para Instalar abra um terminal com Ctrl+Alt+T ou abra-o graficamente em sua distro favorita baseada no ubuntu.
Navegue até a sua pasta, e digite ou copie e cole em seu terminal:
	
	$ sudo sh ./install.sh
Para remover:

	$ sudo sh ./unistall.sh

Exemplos de comandos para o controle do projetor, A ideia é serem executados de maneira automatica, então só os coloquei aqui para facilitar a compreenção:

Ainda não pude testar:
Para ligar
 Benq:

	$ echo -e "\x0D*pow=on#\x0D" > /dev/ttyS1
   ou
   
	$  cat pon.txt > /dev/ttyS1
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

Atenção: Não me responsabilizo por quaisquer problemas que possam acontecer.

 	* Sua garantia pode ser anulada assim que você usar estes arquivos/Sistema.
	* Eu não sou responsável por quaiquer problemas que possam ocorrer,
	* ou se você foi está sendo demitido porque o projetor não liga mais. 
	* Por favor faça alguma pesquisa se tiver alguma preocupação sobre os recursos incluídos nestes scripts/arquivos
	 antes de instalar! Você está escolhendo fazer essas modificações e, se Você acredita que eu sou o culpado pelo seu problema, nunca nem vi!

[PS. Mas eu vou trabalhar para deixar isso o mais funcional possível, e se tiver ajuda de alguém, melhor ainda.]
