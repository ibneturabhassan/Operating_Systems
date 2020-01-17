: '
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


'


new_file= cat 'file1.txt'

echo $new_file

sed -i 's/.*/\L&/g' file1.txt

sed -i 's/<[^>]\+>//g'  file1.txt

sed -i 's/2134/two thousand one hundred and thirty four/; s/9,123/nine thousand one hundred and twenty three/g' file1.txt

sed -i 's/nust/national university of science and technology/; s/seecs/school of electrical engineering and computer science/g' file1.txt

new_file2= cat 'file1.txt'

echo $new_file2
