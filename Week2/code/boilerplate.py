#!/usr/bin/env python3

"""Description of this program or applicatin.
You can use several lines """

_appenname_  =  '[application name here]'
_author_ = 'Kerui chen'
_version_ = '0.0.1'
_license_ = "License of thos code/program"

## imports ##
import sys # module to interface our program with the operating system

## constants ## 

## function ##
def main(argv):
    """main entry ponint of the program"""
    print ('This is a boilerplate') # NOTE: indented using two tabs or 4 spaces 
    return 0

if __name__ == "__main__":
    """Makes sure tha "main" function is called from command line"""
    status =  main(sys.argv)
    sys.exit(status)

    import boilerplate 
    help(boilerplate)