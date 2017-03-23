#!/bin/bash

service_uteis_instalado.sh 3
caminho="/etc/ssh/sshd_config"
sed -i '/AllowUsers none/d' $caminho

if [ $1 != 1 ]
	then
	echo "AllowUsers none" >> $caminho
	#sudo service sshd stop
fi

/etc/init.d/ssh restart

