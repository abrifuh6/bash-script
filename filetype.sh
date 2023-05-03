#!/bin/bash

if [ -f "$1" ]; then
    echo "$1 is a regular file."
    exit 0
elif [ -d "$1" ]; then
    echo "$1 is a directory."
    exit 1
else
    echo "$1 is not a valid file or directory."
    exit 2
fi
