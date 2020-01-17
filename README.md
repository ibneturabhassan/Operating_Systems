# Operating_Systems
This repository contains all the assignments that I performed related to Operating systems which include implementations of replacement algorithms, Inter Process communication, Shell scripts to perform basic operations.

# Parent_Child_Communication_using_Pipes.c
Design a simple C program using ordinary pipes in which a parent and child processes exchange greeting messages. For example, the parent process may send the message “Hello Child Process”, and the child process may return “Hi Parent Process”. Use UNIX pipes to write this program. For reference, see http://tldp.org/LDP/lpg/node11.html. Note that this URL only shows an example of a unidirectional pipe. You need to have bidirectional behavior in your program for which you will need two pipes.

# Print_Multiplication_Table_in_Shell
Write a shell script to print the multiplication table for the given number. You can take that number as input from the user.

# Basic_Calculator_in_shell
Write a shell script to  make a simple calculator which should be capable of performing basic calculations.
Also add a feature of repeated inputs from the user.

# Text_file_cleaner_in_shell
Using bash scripts and command line tools, implement the following functionality
your created script should be run like this: and it should process  *.txt files in that directory.
This processing includes following steps:
	1. make all alphabets small case
             2. remove all xml/html tags
	 3. replace all acronyms found in text file
             4. convert all numbers to words
HINT:-You can use sed command.


Note: 
All these things can be done by command line tools and bash scripts, so avoid writing C or python programs.
To be submitted:-
1):- Script 
2):- Two examples of *.txt files (different from the one  which is given below)
Note:- Do not submit a folder containing script files and text files, rather submit a word document and paste the content of files in it before and after running script.

Example:

contents of file 1.txt

<text> This is some Text, this text will be modified by the <br> Program. </br>
NUST is a university in islamabad and there is a campus in 
it called SEECS, Which has around 2134 students
NUST has a total of 9,123 students,
this is some more TEXT, </text>


After this script is run

The contents of file 1-modified.txt
this is some text, this text will be modified by the program.
national university of sciences and technology is a university in islamabad and there is a campus in it called school of electrical engineering and computer sciences, which has around two thousand one hundred and thirty four students
national university of sciences and technology has a total of nine thousand one hundred and twenty three students
this is some more text,
