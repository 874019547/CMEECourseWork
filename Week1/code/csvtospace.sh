#!/bin/sh
#Author:kerui chen
#Script:csvtospace.sh
#Description:takes a comma separated values and convert it to a space separated values file
#Date:oct 2023

#Saves the output into a new differntly named flie 
# Arguments: 1 -> tab delimited file

if [ "$#" -ne 2 ]; then
    echo "Usage: $0 input_file output_file"
    exit 1
fi
  
echo" Input_file -comma delimited version of $1 ..."
echo" output_file -space delimited version of $2 ..."
cat $1 |tr -s ","" " >>$2.csv
echo "Done"
exit 0