#include "color.h"
#include <stdlib.h>
#include <string.h>

int __fcprintf(FILE *s, int color, const char *format, va_list args) {
    if(color > 9) return -1;
    int res;
    char *new;
    const unsigned int size = strlen(COLOR_STRING[color])+strlen(format)+1;
    if((new = (char*)malloc(size)) == NULL) return -1;
    snprintf(new, size, "%s%s", COLOR_STRING[color], format);
    res = vfprintf(s, new, args);
    printf("%s", COLOR_STRING[Reset]);
    free(new);
    return res;
}
/* Not-working */
int __fscprintf(FILE *s, int color, char **dest, const char *format, va_list args) {
    if(color > 9) return -1;
    int res;
    char *new;
    const unsigned int size = strlen(COLOR_STRING[color])+strlen(format)+1;
    if((new = (char*)malloc(size)) == NULL) return -1;
    snprintf(new, size, "%s%s", COLOR_STRING[color], format);
    res = vsnprintf(*dest, size, new, args);
    sprintf("%s", COLOR_STRING[Reset]);
    free(new);
    return res;
}
/* Not-working */
int fnscprintf(FILE *s, int color, char *dest, int maxSize, const char *format, ...) {
    if(strlen(COLOR_STRING[color])+strlen(format)+1 > maxSize) return -2;
    va_list args;
    int res;
    va_start(args, format);
    res = __fscprintf(s, color, &dest, format, args);
    va_end(args);
    return res;
}
int fcprintf(FILE *s, int color, const char *format, ...) {
    va_list args;
    int res;
    va_start(args, format);
    res = __fcprintf(s, color, format, args);
    va_end(args);
    return res;
}
int cprintf(int color, const char *format, ...) {
    va_list args;
    int res;
    va_start(args, format);
    res = __fcprintf(stdout, color, format, args);
    va_end(args);
    return res;
}
/* Not-working */
int scprintf(int color, char *dest, const char *format, ...) {
    va_list args;
    int res;
    va_start(args, format);
    res = __fscprintf(stdout, color, &dest, format, args);
    va_end(args);
    return res;
}
/* Not-working */
int fscprintf(FILE *s, int color, char *dest, const char *format, ...) {
    va_list args;
    int res;
    va_start(args, format);
    res = __fscprintf(s, color, &dest, format, args);
    va_end(args);
    return res;
}