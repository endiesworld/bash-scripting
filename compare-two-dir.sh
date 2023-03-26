#!/bin/bash

dir1="$1"
dir2="$2"

# # Check files in dir1 but not in dir2
# for file in "$dir1"/*; do
#     filename=$(basename "$file")
#     if [ ! -e "$dir2/$filename" ]; then
#         echo "$filename is present in $dir1 but not in $dir2"
#     fi
# done

# # Check files in dir2 but not in dir1
# for file in "$dir2"/*; do
#     filename=$(basename "$file")
#     if [ ! -e "$dir1/$filename" ]; then
#         echo "$filename is present in $dir2 but not in $dir1"
#     fi
# done


cd dir1
find . -type f -exec test ! -e ../dir2/{} \; -a -exec echo "{} is present in $dir1 but not in $dir2" \;

cd ../dir2
find . -type f -exec test ! -e ../dir1/{} \; -a -exec echo "{} is present in $dir2 but not in $dir1" \;

# This script performs a search for files inside the directory dir1 and its subdirectories. 
# Here is a breakdown of each component of the script:

# cd dir1: This changes the current working directory to dir1.
# This is done so that the find command only searches for files within dir1 and its subdirectories.
# find . -type f: This command uses the find utility to search for files in the current directory (.) and its subdirectories. 
# The -type f option restricts the search to only regular files.
# -exec test ! -e ../dir2/{} \;: This is a test that checks if a file exists in ../dir2. 
# The {} is a placeholder for the current file being examined. The ! -e option checks if the file does not exist.
# -a: This option specifies that the next command should only be executed if the previous command (the test) returns true.
# -exec echo "{}": This command echoes the file name of each file that passes the previous test.
# To summarize, the script searches for regular files in dir1 and its subdirectories that do not exist in the dir2 directory. 
# It then prints the name of each file that passes this test.