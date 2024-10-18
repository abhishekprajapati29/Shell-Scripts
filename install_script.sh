#!/usr/bin/bash

echo "Started installing $1"

if [ "$(uname)" == "Linux" ];
then
	echo "This is a linux machine, installing using apt."
	sudo apt install "$1"
elif [ "$(uname)" == "Darwin" ];
then
	echo "Mac OS, installing"
	brew install "$1"
else
	echo "Unable to detect the machine"
fi
