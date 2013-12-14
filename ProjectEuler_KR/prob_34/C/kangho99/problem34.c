#include <stdio.h>
#include <math.h>
#define MAX 10000000

int factorial(int fac)
{
	if(fac>1)
		return fac*factorial(fac-1);
	else
		return 1;
}

int main()
{
	int i, j, temp, sum;
	int a[7];

	for (i=3; i<MAX; i++)
	{
		//init per loop
		for (j=0; j<7; j++)
		{
			a[j]=0;
		}
		sum=0;
		temp=i;
		j=0;
		//init per loop end

		while(temp>0)
		{
			a[j]=temp%10;
			temp/=10;
			sum+=factorial(a[j++]);
		}

		if (i==sum)
		{
			printf("Found such a number! %d\n", i);
		}
	}
	printf("end\n");
}
