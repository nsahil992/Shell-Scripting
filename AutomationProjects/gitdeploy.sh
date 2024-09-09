#!/bin/bash

echo "Enter the keyword: "
read keyword

if [ "$keyword" = "deploy" ];
then
	echo "Enter the commit message: "
	read commit_message

	git add .
	git commit -m "$commit_message"
	git push origin master

	if [ $0? -eq 0 ];
	then
		echo "Changes has been pushed successfully to the master branch"
	else
		echo "Failed to push changes"
	fi
else
	echo "Incorrect keyword"
	exit 1
fi
