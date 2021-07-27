#include "intconver.h"

int8_t i16toi8(int16_t n) {
	if(n >= 127) return (int8_t) 127;
	if(n <= -127) return (int8_t) -127;
	return (int8_t) n;
}
int16_t i32toi16(int32_t n) {
}
int32_t i64toi32(int64_t n) {
}


uint8_t u16tou8(uint16_t n) {
}
uint16_t u32tou16(uint32_t n) {
}
uint32_t u64tou32(uint64_t n) {
}

uint32_t i32tou32(int32_t n) {
}
