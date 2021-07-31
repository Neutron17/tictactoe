#include <stdio.h>
#include <stdlib.h>

int main(void) {
	char *arr = (char*)malloc(sizeof(char)*128);
	scanf("%128s", arr);
	printf("%s\n", arr);
	free(arr);
	return 0;
}
