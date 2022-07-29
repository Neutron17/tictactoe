#ifndef _NTR_UTILS_H_
#define _NTR_UTILS_H_ 1

#ifndef NULL
#define NULL ((void*)0)
#endif
#include <stdio.h>
unsigned randTo(unsigned n);
unsigned short shRandTo(unsigned short n);
char *readLine(const char *prompt);
char *nReadLine(const char *prompt, int n);
int readInt(const char *prompt);
#include <stdbool.h>
bool isFileEmpty(FILE *fptr);
#endif // _NTR_UTILS_H_
