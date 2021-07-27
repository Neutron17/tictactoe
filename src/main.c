#include <stdlib.h>
#include <stdio.h>
#include <stdbool.h>
#include <errno.h>
#include <signal.h>
#include "nmath.h"
#include "utils.h"
#include "color.h"

struct Serializer {
    char board[3][3];
};

void parseArgs(int argc, char *argv[]);
bool isFileEmpty(FILE *fptr);

void printBoard(const char board[3][3]);
void handleInput();
void login();
void handler(int signal);

int main(int argc, char *argv[]) {
	signal(SIGINT, handler);
	parseArgs(argc, argv);
    volatile bool running = true;
    //cprintf(Red, "%d\n", (char)0x2020);

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
        login();
        fwrite(board, sizeof(board), 1, fptr);
    }else{
        fread(board, sizeof(board), 1, fptr);
        fclose(fptr);
    }
    // TODO write ser instead of the board
    struct Serializer ser = {
        board
    };
    while(running) {
        printBoard(board);
        break;
        //handleInput();
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
bool isFileEmpty(FILE *fptr) {
    if(fptr == NULL) 
        return true;
    fseek(fptr, 0, SEEK_END);
    size_t size = ftell(fptr);
    if(size == 0) return true;
    return false;
}
void login() {
    // TODO
    //raise(1);
}

void handler(int signal) {
	// TODO Are you sure question
	cprintf(Red, "Signal: %d\n", signal);
}
