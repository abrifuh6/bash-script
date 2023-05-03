#!/bin/bash

# Check if an argument was provided
if [ $# -ne 1 ]; then
	echo "Usage: $0 <filename>"
	exit 1
fi

#Check of the file/directory exists
if [ ! -e "$1" ]; then
	echo "$1 not found"
	exit 1
fi

# Check if the argument is a directory
if [ -d "$1" ]; then
	echo "$1 is a directory"
	exit 0
fi

# Check if the argument is a regular file
if [ -f "$1" ]; then
	echo "$1 is a regular file"
	exit 0
fi

#Check if the argument is a symbolic link
if [-L "$1" ]; then
	echo "$1 is a symbolic link"
	exit 0
fi

#If none of the above conditions are met, report that the file type is unknown
echo "$1: unkown file type"

