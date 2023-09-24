#include <stdint.h>

#ifdef __cplusplus
#define EXTERNC extern "C"
#else
#define EXTERNC
#endif

EXTERNC int32_t sum(int32_t a, int32_t b) { return a + b;}