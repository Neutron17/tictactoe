#ifndef _NTR_BOARD_H_
#define _NTR_BOARD_H_ 1
#include <stdbool.h>
#define userIcon 'O'
#define compIcon 'X'
#ifdef _WIN32
#define KILL() raise(SIGTERM)
#else
#define KILL() raise(SIGKILL)
#endif

typedef enum {
	User,
	Computer,
	None
} Player;
typedef enum {
	PvC,
	PvP
} Mode;
void printBoard(const char board[3][3]);
void compMove(char* board);
bool isPlaceUsed(const char* board, unsigned index);
bool isBoardFull(const char* board);
Player checkWinner(const char board[3][3]);
#endif