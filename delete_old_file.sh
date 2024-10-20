#!/usr/bin/bash

echo "Find and delete the file which is older the $2 days"
path=$1
files=$(find $path -mtime +"$2")
echo "List of files that are going to be deleted:"
for file in $files;
do
	echo "$file"
done
read -p "Procced with deletion [Y/n]: " flag 
if [[ flag -eq "Y" ]];
then
	echo "Deleting the files"
	find $path -mtime +$2 -delete
	if [[ $? -eq 0 ]];
	then
		echo "File is deleted succesfully"
	else
		echo "Error while deleteing the file"
	fi
else
	echo "Stoping the process"
fi
