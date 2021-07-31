#include <stdlib.h>
#include <stdio.h>
#include <stdbool.h>
#include <string.h>
#include <errno.h>
#include <signal.h>
#include "nmath.h"
#include "utils.h"
#include "color.h"

struct Serializer {
    char *board[3][3];
};

void parseArgs(int argc, char *argv[]);

void printBoard(const char board[3][3]);
void handleInput(const int inp, char *board[3][3]);
int getInput();
void login();
void handler(int signal);

int main(int argc, char *argv[]) {
	errno = 0;
	signal(SIGINT, handler);
	parseArgs(argc, argv);
    volatile bool running = true;
    char board[3][3] = { 
        {' ', ' ', ' '},
        {' ', ' ', ' '}, 
        {' ', ' ', ' '}
    };
    FILE *fptr = fopen("config.conf", "r+b");
    if(fptr == NULL) return EXIT_FAILURE;
    if(isFileEmpty(fptr)) {
        fptr = fopen("config.conf", "wb+");
        if(fptr == NULL) return EXIT_FAILURE;
        //login();
        fwrite(board, sizeof(board), 1, fptr);
    }else{
        fread(board, sizeof(board), 1, fptr);
        fclose(fptr);
    }
    // TODO write ser instead of the board
   /* struct Serializer ser = {
        &board
    };*/
    // main loop
    while(running) {

        printBoard(board);
        handleInput(getInput(), &board);
	printf("le%s\n", strerror(errno));
//	break;
    }
	return 0;
}
void parseArgs(int argc, char *argv[]) {
    if(argc != 1) {
        fcprintf(stderr, Yellow, "Unimplemented feature\n");
    }
}
/*
x | x | x
----------
X | X | X
----------
X | X | X
*/
void printBoard(const char board[3][3]) {
    for(int y = 0; y<3;y++) {
        for(int x= 0; x<3;x++) {
            if(x != 2)
                printf("%c | ", board[x][y]);
            else
                printf("%c\n", board[x][y]);
            //printf("------------\n");
        }
        if(y != 2)
            printf("---------\n");
    }
}
void login() {
    // TODO
    cprintf(Green, "Logging in...\n");
    printf("%s", ColToStr(Reset));
    FILE *f;
    if((f = fopen("users.bin", "rb")) == NULL) {
	    fcprintf(stderr, Red, "Couldn't open users.bin, login failed\nerrno: %d\nstrerr: %s\nAborting\n", errno, strerror(errno));
	    printf("%s", ColToStr(Reset));
	    raise(SIGKILL);
	    return;
    }
    if(isFileEmpty(f)) {
	    printf("No users detected\n");
	    printf("Creating new user...\n");
	    sleep(2);
	    char *uname = readLine("Username: ");
	    if((f =fopen("users.conf","wb")) == NULL){
		    fcprintf(stderr, Red, "Couldn't open users.bin, login failed\nerrno: %d\nstrerr: %s\nAborting\n", errno, strerror(errno));
		    raise(SIGKILL);
		    return;
	    }
	    fwrite(uname, sizeof(uname), 1, f);
	    char temp[sizeof(uname)];
	    fread(temp, sizeof(uname), 1, f);
	    printf("Created user: %s\n", uname);
	    free(uname);
	    return;
    }

}
int getInput() {
	int opt = readInt("Index: ");
	return opt;
}
void handleInput(const int inp, char *board[3][3]) {

	if(inp < 1 || inp > 9) {
		fcprintf(stderr,Red, "Invalid option\n");
		return;
	}
	
	if(inp < 4) {
		board[0][inp-1] = 'X';
	}else if(inp < 7) {
		board[1][inp-4] = 'X';
	}else{
		board[2][inp-7] = 'X';
	}
	
	printf("asd\n");
	return;
}


void handler(int signal) {
	// TODO Are you sure question
	cprintf(Red, "Signal: %d\n", signal);
	raise(SIGKILL);
}
/*
(*board+

*/
