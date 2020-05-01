/*

Write a simple grep like simple utility in the C programming language. Approach the problem by following these steps: 

a)	Your task is to write a simple grep like utility in the C programming language. You can name it “mygrep”. grep is basically used for searching. For example, “mygrep foo myfile” command returns all the lines that contain a string matching the expression "foo" in the file. Your code will be checked by running such a simple command.

It is easy to get overwhelmed with the complexity of grep. Note that we are looking for a simple version that can search for a specific string in a single file. You may consult grep man page if you are looking to get more info about it


*/

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <fcntl.h>
#include <errno.h>
#include <sys/types.h>
#include <unistd.h>
 
#define BUF_SIZE 8192
 
int main(int argc, char* argv[]) {
 
    int query, file;    /* Input and output file descriptors */
    ssize_t ret_in;    /* Number of bytes returned by read() and write() */
    char buffer[BUF_SIZE];      /* Character buffer */
    char *res;

    /* Are src and dest file name arguments missing */
    if(argc != 3){
        printf ("Usage: string filename");
        return 1;
    }
 


 
    /* opening file */
    file = open (argv [2], O_RDONLY);
    if (file == -1) {
            perror ("open");
            return 2;
    }
 
    /* Reading */
    while((ret_in = read (file, &buffer, BUF_SIZE)) > 0){

	char *ptr = strtok(buffer, "\n");
	while(ptr !=NULL){
		res = strstr(ptr, argv[1]);
		if(res != NULL){
			printf("%s\n", ptr);
		}	
		ptr = strtok(NULL, "\n");
	}
	
	
    }
 
    /* Close file descriptors */
    close (file);

    return (EXIT_SUCCESS);
}
