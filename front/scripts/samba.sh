#!/bin/bash

printf "Content-type: text/html\n\n"
echo "
  <html> <head> <title> CGI script </title> </head>
  <body>
  "
  
if [ "$QUERY_STRING" ];then
  	echo "   $QUERY_STRING"

	EXISTE=`echo "$QUERY_STRING" | sed -n 's/^.*existe=\([^&]*\).*$/\1/p' | sed "s/%20/ /g"`
	GRUPO=`echo "$QUERY_STRING" | sed -n 's/^.*grupo=\([^&]*\).*$/\1/p' | sed "s/%20/ /g"`
	PERM=`echo "$QUERY_STRING" | sed -n 's/^.*perm=\([^&]*\).*$/\1/p' | sed "s/%20/ /g"`
	CAMINHO=`echo "$QUERY_STRING" | sed -n 's/^.*caminho=\([^&]*\).*$/\1/p' | sed "s/%20/ /g"`
	CAMINHORESULT=`echo "$QUERY_STRING" | sed -n 's/^.*caminhoresult=\([^&]*\).*$/\1/p' | sed "s/%20/ /g"`

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

	sudo service_samba.sh $EXISTE $GRUPO $PERM $CAMINHO $CAMINHORESULT
	echo "service_samba.sh $EXISTE $GRUPO $PERM $CAMINHO $CAMINHORESULT"

  fi

echo "</body>"
  echo "</html>"
