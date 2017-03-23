#!/bin/bash

caminho="/etc/init.d/"

echo $1
case $1 in
1)
	servico="smbd";;
2)
	servico="vsftpd";;
3)
	servico="ssh";;
4)
	servico="dhcp";;
5)
	servico="1";;
*)echo "erro";;
esac

caminho=$caminho$servico

if [ -x $caminho ]; then
	case $1 in
	1) echo "samba Ok";;
	2) echo "vsf Ok";;
	3) echo "ssh Ok";;
	4) echo "dhcp Ok";;
	esac
else
	echo "Nao existe $servico"

	case $1 in
        1) apt-get install -y samba;;
        2) apt-get install -y vsftpd;;
        3) apt-get install -y openssh-serer;;
        4) apt-get install -y isc-dhcp-server;;
        esac
fi
