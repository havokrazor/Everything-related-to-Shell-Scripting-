1. List some of the commonly used shell commands?
   - ls
   - cp
   - mv
   - mkdir
   - touch
   - vim
   - grep
     Note - Don't include complicated command as you will only use it for troubleshooting issues

2. Write a simple shell scripts to list all process?
   - ps -ef
   - or ps -ef | awk -F"" '{print $2}'

3. Write a script to print only error from a remote log
   - curl abc.com | grep error

4. Write a Shell script to print number divided by 3 & 5 and not 15
   - Print even number > number divisible by 2
   - Print odd number > number not divisible by 2
   - Print number divisible by 3
   - Print prime number
   - for i in {1...100}; do
     
     if ([ 'expr $i %3' == 0] || [ 'expr $i %5' == 0]) && [ 'expr $i %15' != 0];
     
     then
     
          echo $i
     
     fi;
     
     done

5. Write a script to print the number of 's' in mississippi
   - x =mississippi
   - grep -o "s" <<<"$x" | wc -l

6. How will you debug in shell script?
   - set -x

7. What is crontab in Linux? can you provider an example of usage?
   - the command used to schedule tasks to run automatically at specific intervals
   - For example - If you want to execute a script everyday at 6pm , it will execute the script automatically and give you the output which you can store locally or s3 bucket
     Do not overcomplicate the answer by giving complicated exmaples.

8. How to open a read only file?
   - vim -r test.txt

9. What is the different between soft and hard link?
    - When a script creates a hard link, it builds an alternate path to the exact same physical sector on your drive. Deleting the "original" script or file does not erase        the data.
    - Soft links contain only a text path string. If your script deletes or moves the original file, the soft link stays behind but breaks entirely, causing errors like No        such file or directory if accessed later
    - Basically hard link will a copy of the file and soft link does not

10. What is the difference between break and continue statement?
    - the difference are in the name 
    - Break - breaking the execution of the command ran by the kernel
    - Continue - Continue the execution of the command 
    - Basically used in loops , wheather to continue or stop the execution for that specific command 

11. What are the disadvantages of the Shell scripting?
    - Basically explain your own example based on what you have studied 

12. What are the different kinds of loop and when to use it?
   - You need to explain for loops, if and ifelse loops with an example 

13. Is bash dynamically or statically typed?
   - ofcourse just like python, bash is dynamically typed as you don't need to declare what each variable is before assigning it any value

14. Explain about network troubleshooting utility?
   - Basically commands used to troubleshoot any networking issue you might face like 'traceroute' or 'tracepath' or any other command that could be used when troubleshooting the networking issue

15. How will you sort list of names in a file?
  - by using the `sort` which is a native command that could be found in Linux

16. How would you manage large number of log files generated each day? 
  - Normally you can use a command within linux called `logrotate`. Which can help keep the logs upto date and you can decide the retention policy
  - Alternatively if you want your answer to go out of Linux , you can also tell them you can store them natively in any cloud platform you currently use and ofcourse decide some storage policy on that storage service as well

