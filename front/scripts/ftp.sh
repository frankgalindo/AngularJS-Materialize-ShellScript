#!/bin/bash

printf "Content-type: text/html\n\n"
echo "
  <html> <head> <title> CGI script </title> </head>
  <body>
  "
  
if [ "$QUERY_STRING" ];then
  	echo -e "   $QUERY_STRING \n"

	FTP=`echo "$QUERY_STRING" | sed -n 's/^.*ftp=\([^&]*\).*$/\1/p' | sed "s/%20/ /g"`


	sudo service_ftp.sh $FTP
	echo "service_ftp.sh $FTP"

  fi

echo "</body>"
  echo "</html>"
