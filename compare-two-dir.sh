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