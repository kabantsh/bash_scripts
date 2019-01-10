#!/bin/bash

#this script is been done by kabantsh to start and stop squid proxy server

if [[ `ls /etc/squid/squid.conf` != '/etc/squid/squid.conf' ]]
then
	sudo apt update && sudo apt install -y squid || sudo yum -y update && sudo yum install -y squid 
else
sudo pkill  -9 squid

echo -e "\n\nsquid Process has been killed\n\n"

sudo systemctl stop squid.service
if [ $? == '0' ]
then
	echo -e "\n\nit is squid.service has been stoped successfully\\n\n"
fi
sudo systemctl start squid.service
if [ $? == '0' ]
then
	echo -e "\n\nit is squid.service has been started successfully\n\n"
fi

fi
