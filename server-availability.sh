#!/bin/bash

while ! ping -c 1 -W 1 google1.com &> ./trash/null.txt
do
    sleep 1
done

echo "The google1.com server is available"