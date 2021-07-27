#ifndef _NTR_COLOR_H
#define _NTR_COLOR_H

#ifndef NTR_COLOR_CUSTOM_NAMES
#define NTR_COLOR_RESET Reset
#define NTR_COLOR_RED Red
#define NTR_COLOR_GREEN Green
#define NTR_COLOR_YELLOW Yellow
#define NTR_COLOR_BLUE Blue
#define NTR_COLOR_MAGENTA Magenta
#define NTR_COLOR_CYAN Cyan
#define NTR_COLOR_WHITE White
#endif

#define FOREACH_COLOR(COLOR)                \
    COLOR(NTR_COLOR_RESET)                  \
    COLOR(NTR_COLOR_RED)                    \
    COLOR(NTR_COLOR_GREEN)                  \
    COLOR(NTR_COLOR_YELLOW)                 \
    COLOR(NTR_COLOR_BLUE)                   \
    COLOR(NTR_COLOR_MAGENTA)                \
    COLOR(NTR_COLOR_CYAN)                   \
    COLOR(NTR_COLOR_WHITE)    

#define GENERATE_ENUM(ENUM) ENUM,
#define ColToStr(x) COLOR_STRING[x]

enum COLOR_ENUM {
    FOREACH_COLOR(GENERATE_ENUM)
};
#define KNRM  "\x1B[0m"
#define KRED  "\x1B[31m"
#define KGRN  "\x1B[32m"
#define KYEL  "\x1B[33m"
#define KBLU  "\x1B[34m"
#define KMAG  "\x1B[35m"
#define KCYN  "\x1B[36m"
#define KWHT  "\x1B[37m"
static const char *COLOR_STRING[] = {
    "\033[0m","\x1B[31m","\x1B[32m","\x1B[33m","\x1B[34m","\x1B[35m","\x1B[36m","\x1B[37m"
};

#ifndef NTR_COLOR_NO_METHODS
#include <stdio.h>
#include <stdarg.h>
#define vfcprintf __fcprintf
#define vfscprintf __fcprintf

int __fcprintf(FILE *s, int color, const char *format, va_list args);
int cprintf(int color, const char *format, ...);
int fcprintf(FILE *s, int color, const char *format, ...);
int __fscprintf(FILE *s, int color, char **dest, const char *format, va_list args);
int scprintf(int color, char *dest, const char *format, ...);
int fscprintf(FILE *s, int color, char *dest, const char *format, ...);
int fnscprintf(FILE *s, int color, char *dest, int maxSize, const char *format, ...);
#endif
#endif