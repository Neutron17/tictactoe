#ifndef _NTR_UTILS_H_
#define _NTR_UTILS_H_ 1

#ifndef NULL
#define NULL ((void*)0)
#endif

unsigned randTo(unsigned n);
char *readLine(const char *prompt);
char *nReadLine(const char *prompt, unsigned n);
int readInt(const char *prompt);

#endif // _NTR_UTILS_H_
