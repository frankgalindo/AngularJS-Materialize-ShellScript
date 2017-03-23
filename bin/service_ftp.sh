#!/bin/bash

service_uteis_instalado.sh 2

if [ $1 == 1 ]
then
	RES="YES"
	RES2="NO"
	echo "111"
else
	RES="NO"
	RES2="YES"
	echo "000"
fi

echo "$RES ftp"

service_uteis_backup.sh /etc/vsftpd.conf

sudo sed -i s/write_enable=$RES2/write_enable=$RES/g /etc/vsftpd.conf # permite a escrita
sudo sed -i s/chroot_local_user=$RES/chroot_local_user=$RES2/g /etc/vsftpd.conf #usuario locais podem logar

sudo /etc/init.d/vsftpd restart

if [ $1 != 1 ]
then
	sudo /etc/init.d/vsftpd stop
fi

