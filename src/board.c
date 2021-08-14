#include "board.h"
#include "utils.h"

void printBoard(const char board[3][3]) {
	for (short x = 0; x < 3; x++) {
		for (short y = 0; y < 3; y++) {
			if (y != 2)
				printf("%c | ", board[x][y]);
			else
				printf("%c\n", board[x][y]);
		}
		if (x != 2) printf("---------\n");
	}
}

void compMove(char* board) {
	unsigned short x = shRandTo(8);
	while (x >= 8 || isPlaceUsed(board, x)) {
		x = shRandTo(8);
	}
	*(board + x) = 'X';
}
bool isPlaceUsed(const char* board, unsigned short index) {
	if (*(board + index) != ' ')
		return true;
	return false;
}
bool isBoardFull(const char* board) {
	for (short i = 0; i < 8; i++) {
		if (*(board + i) == ' ')
			return false;
	}
	return true;
}
Player checkWinner(const char board[3][3]) {
	if ((board[0][0] == userIcon && board[0][1] == userIcon && board[0][2] == userIcon) ||
		(board[1][0] == userIcon && board[1][1] == userIcon && board[1][2] == userIcon) ||
		(board[2][0] == userIcon && board[2][1] == userIcon && board[2][2] == userIcon) ||
		(board[0][0] == userIcon && board[1][1] == userIcon && board[2][2] == userIcon) ||
		(board[0][0] == userIcon && board[1][0] == userIcon && board[2][0] == userIcon) ||
		(board[0][1] == userIcon && board[1][1] == userIcon && board[2][1] == userIcon) ||
		(board[0][2] == userIcon && board[1][2] == userIcon && board[2][2] == userIcon)) {
		return User;
	}
	else if ((board[0][0] == compIcon && board[0][1] == compIcon && board[0][2] == compIcon) ||
		(board[1][0] == compIcon && board[1][1] == compIcon && board[1][2] == compIcon) ||
		(board[2][0] == compIcon && board[2][1] == compIcon && board[3][2] == compIcon) ||
		(board[0][0] == compIcon && board[1][1] == compIcon && board[2][2] == compIcon) ||
		(board[0][0] == compIcon && board[1][0] == compIcon && board[2][0] == compIcon) ||
		(board[0][1] == compIcon && board[1][1] == compIcon && board[2][1] == compIcon) ||
		(board[0][2] == compIcon && board[1][2] == compIcon && board[2][2] == compIcon)) {
		return Computer;
	}
	return None;
}