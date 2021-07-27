#ifndef _NTR_INT_CONVERTER_H_
#define _NTR_INT_CONVERTER_H_ 1
#include <stdint.h>

#ifndef NO_SIGNED_CONV
int8_t i16toi8(int16_t n);
int16_t i32toi16(int32_t n);
int32_t i64toi32(int64_t n);
#endif // NO_SIGNED_CONV

#ifndef NO_UNSIGNED_CONV
uint8_t u16tou8(uint16_t n);
uint16_t u32tou16(uint32_t n);
uint32_t u64tou32(uint64_t n);
#endif // NO_UNSIGNED_CONV

uint32_t i32tou32(int32_t n);

#endif // _NTR_INT_CONVERTER_H_
