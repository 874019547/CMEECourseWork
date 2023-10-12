#!/bin/bash
if [ "$#" -ne 3 ]; then
    echo "Usage: $0 input_file1 input_file2 output_file"
    exit 1
fi


cat $1 > $3
cat $2 >> $3
echo "Merged File is"
cat $3


