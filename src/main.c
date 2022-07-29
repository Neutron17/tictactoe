#include <stdlib.h>
#include <stdio.h>
#include <stdbool.h>
#include <errno.h>
#include <signal.h>
#include "color.h"
#include "board.h"
#include "input.h"

Mode mode = PvC;

void parseArgs(int argc, char *argv[]);
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
    // FILE *fptr = fopen("config.conf", "r+b");
    // if(fptr == NULL) return EXIT_FAILURE;
    // if(isFileEmpty(fptr)) {
    //     fptr = fopen("config.conf", "wb+");
    //     if(fptr == NULL) return EXIT_FAILURE;
    //     //login();
    //     fwrite(board, sizeof(board), 1, fptr);
    // }else{
    //     fread(board, sizeof(board), 1, fptr);
    //     fclose(fptr);
    // }

    Player pl = User;
    if(mode == PvC) {
        Player winner;
        while(running) {
            if(isBoardFull(&board[0][0])) {
                printBoard(board);
                printf("DRAW: Board is full\n");
            	if(checkWinner(board) != None) {
                    goto win;
            	}
                return 0;
            }
            if (pl == User) {
                printBoard(board);
                if (handleInput(getInput(), &board[0][0], pl)) {
                    fprintf(stderr, "Invalid input\n");
                    continue;
                }
            }else{
                compMove(&board[0][0]);
            }
            if(pl) pl--;
            else pl++;
        win:
            if((winner = checkWinner(board)) != None) {
                printBoard(board);
                if(winner == User) {
                    printf("You won\n");
                }else{
                    printf("You lost\n");
                }
                printf("Game Over\n");
                return 0;
            }
        }
    }else if(mode == PvP) {
        KILL();
    }
    return 0;
}
void parseArgs(int argc, char *argv[]) {
    if(argc != 1) {
        fcprintf(stderr, Yellow,
	"Warning: Unimplemented feature: Arguments\n");
    }
}

void handler(int signal) {
	// TODO Are you sure question
	cprintf(Red, "Signal: %d\n", signal);
    KILL();
}
