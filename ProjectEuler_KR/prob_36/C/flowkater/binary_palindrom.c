#include <stdio.h>
#include <string.h>
#include <stdlib.h>

#define MAXLEN 8

// 아직 푸는 중
int main(int argc, char const *argv[])
{
	char buf[MAXLEN];
	int a = 585;

	sprintf(buf, "%o", a);

	printf("%s\n", buf);

	return 0;
}