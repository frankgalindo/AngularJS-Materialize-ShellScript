# AngularJS-Materialize-ShellScript
Usando angular para fazer requisições a um "endpoint" feito em CGI e ShellScript feito para fazer configurações de nivel de serviço no servidor. Design do front usando Materialize.

Servidor: Ubuntu LTS 16
OBS¹: A implementação dessa aplicação requer diversas configurações no servidor, tais configurações são muitos extenças para serem mencionadas aqui. Caso Você queira usar o sistema entre em contato comigo para que eu possa te explicar diretamente ;) .

Os arquivos da pasta "/bin" são script em shell que ficam na pasta /bin do servidor para que possam ser executado de qualquer path do servidor, todos tem permissão 777.

Os arquivos da pasta "/front" ficam na pasta do meu site (/var/www/<pasta_do_site>) e contem o angular, o materialize e o pseudo endpoint feito com cgi(/front/scripts). Os scripts que ficam no front servem para fazer o interligação enter as requisiçoes do angular e a exeução dos scripts no /bin do servidor.

OBS²: Para visualizar o front corretamente é nescessario hospeda-lo no apache, caso queria visualizar, aconcelho usar o "USBWebserver v8.6" basta colocar os arquivos do /front na pasta "root".



Projeto feito para a materia de Linguagem de Programção para ambients de rede III do curso de Redes de computadores da FATEC OSASCO.
Integrantes do projeto:
         Leonardo Paganelli - https://br.linkedin.com/in/leonardo-paganelli - github.com/LeonardoPaganelli
         Frank Wendel - https://br.linkedin.com/in/frankwendel - github.com/FrankWendel
