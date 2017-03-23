#!/bin/bash
printf "Content-type: text/html\n\n"
echo "
  <html> <head> <title> CGI script </title> </head>
  <body>
  "
if [ "$QUERY_STRING" ];then
#  	echo "QUERY_STRING   $QUERY_STRING"
	echo "Aterando Arquivo!"

	maquina=`echo "$QUERY_STRING" | sed -n 's/^.*maquina=\([^&]*\).*$/\1/p' | sed "s/%20/ /g"`
	ip=`echo "$QUERY_STRING" | sed -n 's/^.*ip=\([^&]*\).*$/\1/p' | sed "s/%20/ /g"`

	echo "<br/>$ip		$maquina"

  	echo "<br>"

	echo "$ip   $maquina" >> /etc/hosts
	echo "==========================="

	echo "<pre>"
	cat /etc/hosts
	echo "</pre>"

	echo "==========================="
  	echo "<br/>Fim."
  fi
echo "teste"
echo "</body>"
  echo "</html>"
