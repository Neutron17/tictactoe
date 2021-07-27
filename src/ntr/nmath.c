#include "nmath.h"

bool isEven(long n) {
	if((n & 0x1) == 1) return false;
	return true;
}
bool isOdd(long n) { return !(isEven(n)); }

long npow(long x, long y) { // TODO 
	if(y == 0) return -1;
	int prefix = 1;
	while(y!=1) {
		x*=x;
		if(isOdd(y)) {
			prefix++;
			y--;
		}
		y /=2;
	}
	return prefix*x;
}

