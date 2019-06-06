#include <stdio.h>
#include <stdlib.h>
#include "func.h"
#include MAKE_CONFIG

int main()
{
	printf("1 + 2 = %d\n", add(1, 2));
	printf("MAKE_VERSION = %s\n", MAKE_VERSION);
	printf("MAKE_TIME = %s\n", MAKE_TIME);
	printf("MAKE_CONFIG = %s\n", MAKE_CONFIG);
	return 0;
}
