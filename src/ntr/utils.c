#include "utils.h"
#include <time.h>
#include <stdlib.h>

unsigned randTo(unsigned n) {
	static short x = 0;
	if(x == 0) {
		srand(time(0));
		x++;
	}
	return (rand() % n);
}

char *readLine(const char *prompt) {
	printf("%s", prompt);
#ifdef UTIL_CUSTOM_SIZE
	char *buff = (char*)malloc(UTIL_CUSTOM_SIZE*sizeof(char*));
	if (buff == NULL) return NULL;
	fgets(buff, UTIL_CUSTOM_SIZE, stdin);
#else
	char *buff = (char*)malloc(64*sizeof(char));
	if (buff == NULL) return NULL;
	fgets(buff, 64, stdin);
#endif
	return buff;

}
char *nReadLine(const char *prompt, unsigned n) {
        printf("%s", prompt);
        char *buff = (char*)malloc((n+1)*sizeof(char));
        if (buff == NULL) return NULL;
        fgets(buff, n, stdin);
	return buff;
}
int readInt(const char *prompt) {
	char *buff = readLine(prompt);
	if(buff == NULL) return -1;
	int rv = atoi(buff);
	free(buff);
	return rv;
}
bool isFileEmpty(FILE *fptr) {
    if(fptr == NULL)                                          return true;                                      fseek(fptr, 0, SEEK_END);
    size_t size = ftell(fptr);
    if(size == 0) return true;
    return false;
}
