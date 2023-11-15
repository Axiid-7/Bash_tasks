# Bash Practice

<details>
<summary>Table of Content</summary>

- [Bash Practice](#bash-practice)
    - [Task 1](#task1sh)
        - [How to run](#to-run-this-program)
    - [Task 2](#task2sh)
        - [How to run](#to-run-this-program-1)
    - [Whats my IP](#whats_my_ipsh)
        - [How to run](#to-run-this-program-2)
    - [.Dotfile](#dotfile)
        - [How to run](#to-run-this-program-3)
    - [Box Print](#box_printsh)
        - [How to run](#to-run-this-program-4)
    - [Box Print.2](#box_print_2sh)
        - [How to run](#to-run-this-program-5)
    - [Wallpaper](#wallpapersh)
        - [How to run](#to-run-this-program-6)
    - [Cron Job](#cronjobsh)
        - [How to run](#to-run-this-program-7)
</details>


## task1.sh

`task1.sh` is a **BASH** program that searches for file in a specified folder using ***Depth First Search***  

It takes file and folder name as arguments. and iterates over each file and folder at desired location with the help of `search_file` function

### To Run this Program

Open termianl where file is located and run following command on terminal:

```
./task1.sh  file_name folder_name
```
Replace file_name and folder_name with your desired file and folder name.

## task2.sh

`task2.sh` is an automated **BASH** program that don't require any input from user.

It makes two folders and three *.txt* files in one of them and lastly it swaps the names of both folders.

### To Run this Program

Open termianl where file is located and run following command on terminal:

```
./task2.sh
```

## whats_my_ip.sh

`whats_my_ip.sh` is also an automated **BASH** program that don't require any input from user.

It prints the system `IP Address`


### To Run this Program

Open termianl where file is located and run following command on terminal:

```
./whats_my_ip.sh
```

## .dotfile

`.dotfile` prompt linux to change `PS1` on terminal with current time stamp.

### To Run this Program

Open `.bashrc` file from home directory and append the following command in it:

```
source ~/.dotfile
```
Your .dotfile should be on **Home** directory.

## box_print.sh

`box_print.sh` is a **BASH** program that takes string as input and print box of "*" around it.

### To Run this Program

Open termianl where file is located and run following command on terminal:

```
./box_print.sh  THIS IS STRING
```

Replace "THIS IS STRING" with your desired string.

## box_print_2.sh

`box_print_2.sh` is a **BASH** program that takes string and character as input and print box of character around string.

It takes input using flags.
1. **-s** for string.
2. **-c** for character.

### To Run this Program

Open termianl where file is located and run following command on terminal:

```
./box_print.sh -s "THIS IS STRING" -c "+"
```

Replace "THIS IS STRING" with your desired string and "+" with your desired character.

## wallpaper.sh

`wallpaper.sh` is a **BASH** program that downloads image from the link using `wget` command.

It displays user guide to take different options from user using flags and propmt user

1. to set name of image (using **-o** flag).
2. to set location where file downloads (using **-p** flag).
3. to store file in **temp** folder (using **-t** flag).
4. to set resolution of image (using **-r** flag).

### To Run this Program

Open termianl where file is located and run following command on terminal:

To store image at specific location
```
./wallpaper.sh -p ~/Desktop -o my-wallpaper -r 1300x720
```

To store image in **temp** folder
```
./wallpaper.sh -t -o my-wallpaper -r 1300x720
```

## cronjob.sh

`cronjob.sh` is a **BASH** script that runs after every 30 seconds.

It basically executes `wallpaper.sh` and download image when 30 seconds pass. 

### To Run this Program

Open terminal and execute following commands in sequence.

```
crontab -e
```
Select editor compatible to you. I have slected `/bin/nano` as this is a bash script.

It will open a editor. paste the following command on it.

```
 * * * * * "absolute path of the script to be executed"
```
Replace the text present between inverted commas with the absolute path of script. Remove inverted commas. 

Press **shift + x** and then **enter** to close editor.
