# Basics of Shell #

The most useful command in shell is `man` also known as Manual

For eg - `ls man`

### System Checking Commands ###

`nproc` - Check CPUs

`free` - Check memory

`top` - Processing running on the machine , CPU usage , Memory usage 

### Navigating commonds ###

`pwd` - Present working directory

`cd` - change directory

`cd...` - Go to home directory

`ls` - list files and folders

`ls - lrth` - list files and folder with permission and details 

`history` - To check all the commands entered by you

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

'mkdir' - make directory 

`rm -rf` - To forcefully remove directory

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





