#!/bin/bash

function deploy_code_on_github() {

	echo "Enter the file name you want to deploy to the Github: "
	read file_name

	if [ ! -f "$file_name" ];
	then
	echo "File $file_name not found"
	fi

	if [ ! -d ".git" ];
	then
	echo "This is not a Git repository. Initializing a new git repository..."
        git init
	fi

	git_remote_url=$(git remote get-url origin 2>/dev/null)
    	if [ -z "$git_url" ];
	then
        echo "No remote URL found. Please enter the remote URL for 'git remote add origin':"
        read remote_url
        git remote add origin "$remote_url"
        echo "Remote URL added: $remote_url"
    	else
        echo "Remote URL already set: $git_remote_url"
    	fi

	echo "********** FETCHING.....**********"
	git remote -v

	echo "********** GIT ADD **********"
	git add "$file_name"

	echo "********** GIT COMMIT **********"
	read -p "Enter the commit message: " commit_message
	git commit -m "$commit_message"

	echo "********** PUSHING.....**********"
	git push origin master

	if [ $? -eq 0 ];
	then
	echo "File $file_name pushed successfully!"
    else
        echo "Failed to push $file_name to GitHub. Please check the error message above."
    fi
}

if [ "$1" = "deploy" ];
then
    deploy_to_github
else
    echo "Invalid command. Type 'deploy' to execute the script."
fi


