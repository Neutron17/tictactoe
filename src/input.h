#ifndef _NTR_INPUT_H_
#define _NTR_INPUT_H_ 1
#ifdef _WIN32

#define KILL() raise(SIGTERM)
#else
#define KILL() raise(SIGKILL)
#endif

#include "board.h"
// return value -> true = failure, false = success
bool handleInput(const int inp, char* board, Player pl);
int getInput();
#endif

