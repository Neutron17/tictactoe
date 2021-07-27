#ifndef _NTR_MATH_H_
#define _NTR_MATH_H_ 1

long npow(long x, long y);

#ifndef NO_BOOL
#include <stdbool.h>
bool isEven(long n);
bool isOdd(long n);
#endif
/*
#define pow(X,Y) _Generic((X),			\
		int: _Generic((Y),		\
			int: __pow_i,	\
			     )			\
		long: _Generic((Y),		\
			long: __pow_l,		\
)*/
#ifdef CONV
#include "intconver.h"
#endif
#endif
