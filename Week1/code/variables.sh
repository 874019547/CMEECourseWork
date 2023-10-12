#!/bin/sh
## Illustrates the use of variables
# Speacial Variables
echo " This is script was called with $# parameters"
echo "The script's name is $0"
echo "The agruments are $@ "
echo "The first arguments is $1 "
echo "The second arguments is $2"

# Assigned Variables; Explict delclaration 
MY_VAR= 'some string'
echo " the current value of varibales :" $MY_VAR
echo
echo "Please enter a new stripts"
read MY_VAR
echo
echo "the current value of the variables is ;"$MY_VAR
echo

## Assigned Variables ;Reading (mulyiple values) form user input
echo " enter two numbers separeated by spaces"
read a b
echo
echo "you enterd" "$a "and "$b"; Their sum is :"

## Assigned variables ;Commed substitution
MY_SUM=$(expr $a + $b)
echo $MY_SUM