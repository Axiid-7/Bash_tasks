#!/bin/bash

# Stores final string that executes with wget.
final_execute_str=""

# Stores link with picture resolution.
url_with_resolution="https://picsum.photos/1920/1080"

# Stores link without picture resolution for desired resolution input.
url_without_resolution="https://picsum.photos/"

# Checks if input has recolution or not.
set_resolution_flag=false

# Function prints guideline to select an option. 
function guideDetails() {
    echo "    -p to save image on specific path.
    -t to save image in /tmp.
    -o to save image with specific name.
    -r to set custom resoltion for image."
}

# Validates input if the flag contains value or not.
function is_valid_string() {
    if [[ ($1 == "") || ($1 == " ") ]]; then
        guideDetails
        exit 1
    fi
}

# Appends path of location and appropriate option to set location in "final_execute_str" variable.  
function set_location() {
    is_valid_string $1
    final_execute_str+=" -P "
    final_execute_str+=$1
}

# Appends path of temp folder and appropriate option to set location in "final_execute_str" variable.  
function save_in_temp() {
    final_execute_str+=" -P "

    # Makes "temp" folder in current directory if its not present already.
    if ! [ -d ./temp ]; then
        mkdir temp
    fi
    final_execute_str+=" ./temp "
}

# Appends name of picture to be downloaded and appropriate option to set location 
# in "final_execute_str" variable.  
function set_name() {
    is_valid_string $1
    final_execute_str+=" -O "
    final_execute_str+=$1
}

# Appends desired resolution to "url_without_resolution" vaiable.
function set_resolution() {
    is_valid_string $1
    
    # Set flag to true and Itrates over resolution string to make executable form of resolution.
    set_resolution_flag=true
    resoltion_str=$(echo $1 | tr "*" "\n")
    for n in $resoltion_str; do
        resolution+=$n
        resolution+="/"
    done

    # Appends executable resolution in url without resolution.
    url_without_resolution+=$resolution
}

# Itrates around input arguments.
# Read flags and calls suitable function with flag value.
# Exits program if input contains in-define flags. 
while getopts 'p:to:r:' flag; do
    case "${flag}" in
    p) set_location "${OPTARG}" ;;
    t) save_in_temp ;;
    o) set_name "${OPTARG}" ;;
    r) set_resolution "${OPTARG}" ;;
    *) guideDetails
       exit 1;;
    esac
done

# Appends url with resolution if flag is false, if not appends url without resolution vaiable.
if [ $set_resolution_flag = true ]; then
    final_execute_str+=" "
    final_execute_str+=$url_without_resolution
else
    final_execute_str+=" "
    final_execute_str+=$url_with_resolution
fi

# Executes "wget" command on final executable string.
wget $final_execute_str
