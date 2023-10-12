#!/bin/bash
if ["$#" == 0 ];then
   print"\nError :Need a latex filename as input\n"
   exit 1
elif [${1: -4} != ".tex "];then
   print"\nError : Needs a latex filename with *tex extension as input\n"
   exit 1

fi



pdflatex $1.tex
bibtex $1
pdflatex $1.tex
pdflatex $1.tex
evince $1.pdf &

## Cleanup
rm *.aux
rm *.log
rm *.bbl
rm *.blg