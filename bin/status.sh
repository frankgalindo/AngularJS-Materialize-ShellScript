#!/bin/bash

/etc/init.d/vsftpd status > /var/www/fw.com/app/views/status/ftp.txt
/etc/init.d/ssh status > /var/www/fw.com/app/views/status/ssh.txt
testparm > /var/www/fw.com/app/views/status/samba.txt
/etc/init.d/isc-dhcp-server status > /var/www/fw.com/app/views/status/dhcp.txt
traceroute 8.8.8.8 > /var/www/fw.com/app/views/status/gw.txt

