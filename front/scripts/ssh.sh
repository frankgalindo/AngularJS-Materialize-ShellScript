#!/bin/bash

printf "Content-type: text/html\n\n"
echo "
  <html> <head> <title> CGI script </title> </head>
  <body>
  "
  
if [ "$QUERY_STRING" ];then
  	echo "   $QUERY_STRING"

	SSH=`echo "$QUERY_STRING" | sed -n 's/^.*ssh=\([^&]*\).*$/\1/p' | sed "s/%20/ /g"`

	#echo -e "$EXISTE"
	#echo -e "$GRUPO"
	#echo -e "$PERM"
	#echo -e "$CAMINHO"
	#echo -e "$CAMINHORESULT"



	#RESETA=$1
	#GRUPO=$2
	#PERMISSAO=$3
	#NOME_DIRETORIO=$4
	#NOVO_DIRETORIO=$5

	sudo service_ssh.sh $SSH
	echo "service_samba.sh $SSH"

  fi

echo "</body>"
  echo "</html>"
