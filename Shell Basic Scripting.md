# Basics of Shell #

The most useful command in shell is `man` also known as Manual

For eg - `ls man`

### pre requisite of writing a shell script ###

Author : Raza
Date : 03/27/2026

This scripts execute this and that 

verzion : v1

`set -x` - Enables debug mode in a shell script or terminal session. prints each command (after variable expansion) before executing it. 

`set -e` - exit immediately if any command fails

`set -o` - pipedfail

### System Checking Commands ###

`nproc` - Check CPUs

`free` - Check memory

`top` - Processing running on the machine , CPU usage , Memory usage 

`df -h` - command displays the amount of available and used disk space on your file systems in a "human-readable" format using gigabytes and megabytes

`ps -ef` - Displays a full list of all running processes on the system.
           -e shows all process
           -f shows full format
           For example - `ps -ef | grep amazon | awk -F"" '{print $2}'`

`trap` - is used to intercept signals and execute specific code when those signals are received by the script.It’s most commonly used for "cleanup" tasks—like deleting               temporary files or killing background processes—if a script crashes or is interrupted.

For example - `trap 'commands' SIGNAL`

|Signal|Name|Triggered When|
|------|----|--------------|
|EXIT|0|The script finishes normally or is killed|
|SIGINT|2|You press Ctrl+C to interrupt the script|
|SIGTERM|15|The script is told to terminate (default kill command)|
|DEBUG|-|Executes the trap after every single command|

Useful Commands

List active traps: Just type trap.

Clear a trap: Use a dash: trap - SIGINT.

Ignore a signal: Use an empty string: trap '' SIGINT (this makes the script immune to Ctrl+C).

Note: You cannot trap SIGKILL (signal 9). That signal tells the OS to kill the process immediately, and the process isn't allowed to "argue" or run cleanup code first.

### Navigating commonds ###

`pwd` - Present working directory

`cd` - change directory

`cd...` - Go to home directory

`ls` - list files and folders

`ls - lrth` - list files and folder with permission and details 

`history` - To check all the commands entered by you

`find` - used to search for files and directories in a file system hierarchy based on various attributes like name, size, permissions, or modification date.
         for example `find / -name pam.txt` instructs the system to search for that filename starting from the root directory (/) and recursively through every single                subdirectory on your entire system.

`sudo su -` or `sudo -i` - opens a new interactive shell with the root user's environment and permissions.

`su username` - To switch users

### Everything related to Files and Folders ###

`touch` - Can change the permissions and create a file if not already created

`nano` - creating and opening a file to write in

`echo` - printing things in the file

`cat` - Looking at the content of the file

`sh filename` or `./filename` - To execute the file

`chmod filename` - change permissions 

`chmod` is divided in 3 parts - Does the root have access? Which group has access? and what access does the creator of the file has?
You can change permission on `chmod` using numbers such as:

4 - Read

2 - Wite

1 - Execute

`mkdir` - make directory 

`rm -rf` - To forcefully remove directory

`grep` - command searches through files or input for a specific pattern for example `grep "error" log.txt`, 
         which scans the file named "log.txt" and prints every line that contains the word "error."

`awk` - awk is a powerful text-processing language used for manipulating data. An example is `awk '{print $1, $3}'` data.txt, which reads "data.txt" and prints only the first and third columns of every line.

`|` - pipe symbol | takes the output of the command on its left and sends it as the input to the command on its right, allowing you to chain multiple tools together.

`curl` - curl is a command-line tool used to transfer data to or from a server using various supported protocols, 
         most commonly used for downloading files or testing API endpoints via HTTP.

`curl -O https://example.com/file.zip`, which downloads the file from the specified URL and saves it to your current directory with its original filename.

`wget` - used to retrieve content and files from web servers, specifically designed for robust downloads even over unstable network connections.

## Loops ##

`if` or `ifelse`- 

`if [ condition ]; `

`then`

    # Commands to execute if the condition is true

`else`

    # Commands to execute if the condition is true
    
`fi`

For example - 
a = 4 , b =10

`if [ $a > $b ]`

`then`

   `echo "a is greater than b"`
   
`else`

   `echo "b is greater than a"`

`fi`



`for` loop - for loop is used to iterate over a list of items, such as a sequence of numbers, a list of files, or the contents of an array.

The "List-Based" For Loop - 

`for item in list_of_items; do`

    # Commands to execute for each item
    
    `echo $item`
    
`done`

The "Range" For Loop - 

`for i in {1..5}; do`

    `echo "Counting: $i"`
    
`done`

The "C-Style" For Loop - 

`for (( i=0; i<10; i++ )); do`

    `echo "Index is $i"`
    
`done`



## Question someone might ask regarding scripting ##

**What are the Role of Shell Scripting in Devops?**

Infra maintainance
Code management using git
Configuration management 

**What is a Shebang and executables in shell?**

**What is the difference between `#!/bin/sh` and `#!/bin/bash`**

Previosuly both of them were same because `#!/bin/sh` was redirectly using the linking concept to `#!/bin/bash` but now
some of the operating system has made `#!/bin/dash` as a defaults for redirecting, so the script might not work if you're 
using /bash scripting where /dash is default





