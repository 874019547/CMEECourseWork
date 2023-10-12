#!/bin/sh
#Author : Kerui Chen
#SCRIPT: tabtocsv.sh
#Decription:substitue the tabs in the flies with commas

#Saves the output into a .csv file 
#Argument: 1 -> tab delinmited file 
#data:oct 2023

if [ "$#" -ne 1 ]; then
    echo "Usage: $0 input_file.txt"
    exit 1
fi

if [ ! -f "$1" ]; then
    echo "File '$1' not found."
    exit 1
fi

echo"Creating a comma delimited version of $1 ..."
cat $1 |tr -s "\t"",">>$1.csv
echo "Done!"
exit
