#!/bin/bash

file1="$1"
file2="$2"

if diff -q "$file1" "$file2"
then 
    echo "both files are different"
else
    echo "both files are the same"
fi

