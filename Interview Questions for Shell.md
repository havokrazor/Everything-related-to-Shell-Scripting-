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
     
