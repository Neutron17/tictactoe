#include "input.h"

#include <signal.h>
#include "color.h"
#include "utils.h"

int getInput() {
	int opt = readInt("Index: ");
	if (opt == -1) KILL();
	return opt;
}
bool handleInput(const int inp, char* board, Player pl) {
	if (inp < 1 || inp > 9) {
		fcprintf(stderr, Red,
			"Invalid option\n");
		return true;
	}
	if(isPlaceUsed(board, inp-1))
		return true;

	/*if (pl || pl == User2)
		*(board + inp - 1) = 'X';
	else*/
	*(board + inp - 1) = 'O';
	return false;
}

