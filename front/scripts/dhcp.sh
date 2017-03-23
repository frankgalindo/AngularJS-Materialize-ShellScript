#!/bin/bash

printf "Content-type: text/html\n\n"
echo "
  <html> <head> <title> CGI script </title> </head>
  <body>
  "
  
if [ "$QUERY_STRING" ];then
  	echo "QUERY_STRING   $QUERY_STRING"

	DOMINIO=`echo "$QUERY_STRING" | sed -n 's/^.*dominio=\([^&]*\).*$/\1/p' | sed "s/%20/ /g"`
	DNS1=`echo "$QUERY_STRING" | sed -n 's/^.*dns1=\([^&]*\).*$/\1/p' | sed "s/%20/ /g"`
	DNS2=`echo "$QUERY_STRING" | sed -n 's/^.*dns2=\([^&]*\).*$/\1/p' | sed "s/%20/ /g"`
	SUBNET=`echo "$QUERY_STRING" | sed -n 's/^.*rede=\([^&]*\).*$/\1/p' | sed "s/%20/ /g"`
	NETMASK=`echo "$QUERY_STRING" | sed -n 's/^.*mask=\([^&]*\).*$/\1/p' | sed "s/%20/ /g"`
	RANGE1=`echo "$QUERY_STRING" | sed -n 's/^.*firstIP=\([^&]*\).*$/\1/p' | sed "s/%20/ /g"`
	RANGE2=`echo "$QUERY_STRING" | sed -n 's/^.*lastIP=\([^&]*\).*$/\1/p' | sed "s/%20/ /g"`
	GATEWAY=`echo "$QUERY_STRING" | sed -n 's/^.*gw=\([^&]*\).*$/\1/p' | sed "s/%20/ /g"`
	INTERFACE=`echo "$QUERY_STRING" | sed -n 's/^.*int=\([^&]*\).*$/\1/p' | sed "s/%20/ /g"`


#	DOMINIO=$1
#	DNS1=$2
#	DNS2=$3
#	SUBNET=$4
#	NETMASK=$5
#	RANGE1=$6
#	RANGE2=$7
#	GATEWAY=$8
#	INTERFACE=$9
        echo "TESTE"
	sudo service_dhcp.sh $DOMINIO $DNS1 $DNS2 $SUBNET $NETMASK $RANGE1 $RANGE2 $GATEWAY $INTERFACE
	echo "sudo service_dhcp.sh $DOMINIO $DNS1 $DNS2 $SUBNET $NETMASK $RANGE1 $RANGE2 $GATEWAY $INTERFACE"


  fi
echo "</body>"
  echo "</html>"
