#! /bin/bash

# Flag to store if file exist or not 
file_exsits=false

function search_file {
    
    # "temp_file" stores file which is being searched.
    # "temp_folder" stores folder in which file is being searched.
    temp_file=$1
    temp_folder=$2

    # Itrates over "temp_folder" all files and folders. 
    for f in $temp_folder/*; do
        
        # Deapth First Search call if its a folder then search in it.
        if [ -d $f ]; then
            search_file $temp_file $f
        fi

        # If it is file stores its name and check if its is desired file or not.
        file_name=$(basename $f)
        if [ $file_name == $temp_file ]; then
            
            # If file exist printing its path and setting flag true.
            if [ $file_exsits = false ]; then
                echo "File exists"
            fi 
            echo "$temp_folder/$temp_file"
            file_exsits=true
        fi
    done
}

search_file $1 $2

# If flag is flase then print file not found.
if [ $file_exsits = false ]; then
    echo "File not found"
fi
