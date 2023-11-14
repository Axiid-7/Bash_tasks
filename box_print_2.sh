#!/bin/bash

# Prints given character around string. 
function print_box() {
    
    # Stores length of string.
    Length_of_string=${#2}
    Length_of_string=$(($Length_of_string + 4))
    
    # Prints string if character is not given.   
    if [[ ("$1" == "") ]]; then
        echo $2
        exit 1
    fi

    # Prints empty string if input string is empty.
    if [[ ("$2" == "") ]]; then
        echo $2
        exit 1
    fi

    # Prints character length of string times on first line.
    temp=0
    while [ $Length_of_string -gt $temp ]; do
        echo -n $1
        temp=$(($temp + 1))
    done

    # Prints character, string and again character on the next line. 
    echo -e "\n"$1 $2 $1
    
    # Prints character length of string times on next line.
    temp1=0
    while [ $Length_of_string -gt $temp1 ]; do
        echo -n $1
        temp1=$(($temp1 + 1))
    done
    echo -e "\n"
}

# Variables store input string and character.
str=""
char=""

# Itrates around input.
# Read flags and set variables with flag value.
# Exits program if input contains in-define flags. 
while getopts 'c:s:' flag; do
    case "${flag}" in
    c) char="${OPTARG}";;
    s) str="${OPTARG}";;
    *) echo "Illegal arguments"       
        exit 1;;
    esac
done

# Calls function, pass input character and string.
print_box $char "$str"
