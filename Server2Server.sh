#!/usr/bin/bash

figlet  Server2Server -c |lolcat


echo "Welcome to Server2Server "

read -p "Enter username of destination [john]: " user
read -p "Enter machine ip-address [uses SSH connection]: " ipaddress


read -p "Insert soource_directory [/path/to/source_directory]: " source
read -p "Insert destination_path [/path/to/destination_path]; " destination

read -p "Do you want to use scp or rsync ?[scp/rsync ]:  " tool


if [ "$tool" == "rsync" ]; then
	echo `rsync -avP $source $user@$ipaddress:$destination`
elif [ "$tool" == "scp" ];  then
	echo `scp -p 22 $source $user@ipaddress:$destination`
else 
	echo Invalid input required "y" or "n"
fi

