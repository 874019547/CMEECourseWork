#!/bin/bash

if [ "$#" -ne 1 ]; then
    echo "Usage: $0 input_file"
    exit 1
fi

if [ ! -f "$1" ]; then
    echo "File '$1' not found."
    exit 1
fi

Numlines= 'wc -l <$1'
echo "The file $1 has $Numlines lines"
echo