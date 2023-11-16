#!/bin/bash

# Prints message if user inputs an epmty string. 
if [[ ("$1" == "") ]]; then
    echo "Invalid number of arguments"
    exit 1
fi

# Initiates lenght of string and length of spaces in string.
length_of_string=0
length_of_spaces=0

# Itrates over input string to and calculates length of string and its spaces in it.
for i in $@; do
    length_of_spaces=$(($length_of_spaces + 1))
    length_of_string=$(($length_of_string + ${#i}))
done

# Subtacting ending space of string.
# Adds length of spaces to length of string.
length_of_spaces=$(($length_of_spaces - 1))
length_of_string=$(($length_of_string + $length_of_spaces))
length_of_string=$(($length_of_string + 2))

# Prints "*" length of string times.
temp=0
while [ $length_of_string -gt $temp ]; do
    echo -n "*"
    temp=$(($temp + 1))
done

# Prints star on next line.
echo -e -n "\n*"

# Iterates over input string.
for i in $@; do
    
    # Prints first argument of string on last line.
    echo -n $i
    
    # Prints space if "length_of_spaces" is not equal to 0 on the last line.
    if [ $length_of_spaces -gt 0 ]; then
         echo -n " "
         length_of_spaces=$(($length_of_spaces - 1))
    fi
done

# Prints "*" on last line.
echo "*"

# Prints "*" length of string times on the next line.
temp1=0
while [ $length_of_string -gt $temp1 ]; do
    echo -n "*"
    temp1=$(($temp1 + 1))
done
echo -e "\n"
