#!/bin/bash

num=1

while [[ $num -le 5 ]]
do 
	echo "Shell"
	num=$num+1
done





correct_password="secret"

while true
do 
	read -p "Enter the password: " password

	if [ "$password" = "$correct_password" ];
	then
		echo "Access Granted"
		break
	else
		echo "Access Denied"
	fi
done
