#include <stdlib.h>
#include <stdio.h>
#include <stdbool.h>
#include <string.h>
#include <errno.h>
#include <signal.h>
#include <time.h>
#include <ctype.h>
#include "utils.h"
#include "color.h"

typedef enum {
	User,
	Computer,
	User2
} Player;
typedef enum {
	PvC,
	PvP,
	None
} Mode;
Mode mode = PvC;

void parseArgs(int argc, char *argv[]);
void printBoard(const char board[3][3]);
void handleInput(const int inp, char *board,Player pl);
int getInput();
void compMove(char *board);
bool isPlaceUsed(const char *board, unsigned index);
bool isBoardFull(const char *board);
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

    Player pl = User;
    if(mode == PvC) {
   	 while(running) {
		 if(isBoardFull(board)) {
			 printBoard(board);
			 printf("Board is full\n");
			 return 0;
		 }
		 if(pl == User) {
			printBoard(board);
			handleInput(getInput(), 
				board, pl);
		 }else{
			 compMove(board);
		 }
		 if(pl) pl--;
		 else pl++;
	 }
    }else if(mode == PvP) {
	    raise(SIGKILL);
    }
    return 0;
}
void parseArgs(int argc, char *argv[]) {
    if(argc != 1) {
        fcprintf(stderr, Yellow, 
	"Warning: Unimplemented feature: Arguments\n");
    }
    for(unsigned i = 0;i<argc;i++) {
    }
}

void printBoard(const char board[3][3]) {
    for(short x = 0; x<3; x++) {
        for(short y = 0; y<3; y++) {
            if(y != 2)
                printf("%c | ", board[x][y]);
            else
                printf("%c\n", board[x][y]);
        }
        if(x != 2) printf("---------\n");
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
	if(opt == -1) handler(0);
	return opt;
}
void handleInput(const int inp,char *board,Player pl) {
	if(inp < 1 || inp > 9) {
		fcprintf(stderr,Red, 
			"Invalid option\n");
		return;
	}
	if(pl || pl == User2)
		*(board+inp-1) = 'X';
	else
		*(board+inp-1) = 'O';
	return;
}
void compMove(char *board) {
	int x = randTo(9);
	while(x >= 9 || isPlaceUsed(board, x)) {
		x = randTo(9);
	}
	*(board+x) = 'X'; 
}
bool isPlaceUsed(const char *board, unsigned index) {
	if(*(board+index) == ' ') 
		return false;
	return true;
}
bool isBoardFull(const char *board) {
	for(short i = 0;i<8;i++) {
		if(*(board+i) == ' ')
			return false;
	}
	return true;
}
void handler(int signal) {
	// TODO Are you sure question
	cprintf(Red, "Signal: %d\n", signal);
	raise(SIGKILL);
}

