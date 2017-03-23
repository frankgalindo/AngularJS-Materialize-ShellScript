#!/bin/bash

RESETA=$1
GRUPO=$2
PERMISSAO=$3
NOME_DIRETORIO=$4
NOVO_DIRETORIO=$5

service_uteis_instalado.sh 1

cd /etc/samba

service_uteis_backup.sh smb.conf

if [ $RESETA -eq "1" ]
then
	echo "[global]" > smb.conf
    	echo -e "\n	workgroup = $GRUPO" >> smb.conf
    	echo "	security = user" >> smb.conf
    	if [ $PERMISSAO -eq 1 ]
	then
		echo "	map to guest = Bad Password" >> smb.conf
	fi
fi

if [ $NOVO_DIRETORIO -eq 0 ]
then
#	echo $NOME_DIRETORIO
	sudo mkdir /home/$NOME_DIRETORIO
	sudo chmod 777 /home/$NOME_DIRETORIO
	sudo chown www-data /home/$NOME_DIRETORIO
	hora="$(date +'%d-%m-%Y-%H:%M')"
	sudo echo "Pasta $NOME_DIRETORIO criada em $hora" > /home/$NOME_DIRETORIO/log.txt
fi

echo -e "\n[$NOME_DIRETORIO]" >> smb.conf
echo "    path=/home/$NOME_DIRETORIO" >> smb.conf
echo "    public=yes" >> smb.conf
echo "    writeable=yes" >> smb.conf
echo "    browseable=yes" >> smb.conf

