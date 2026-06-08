
#include <iostream>
#include <cstdio>
extern "C" int arrSquare(int* y, int* x, int n);

int main()
{
	int x[] = { 2, 3, 4, 5, 6, 7, 8, 9};
	const int n = sizeof(x) / sizeof(int);
	int y1[n];
	int y2[n];
	int as = arrSquare(y2, x, n);
	int cs = arrSquare(y1, x, n);
	for (int i = 0;i < n;i++)
	{
		printf("i: %2d x:%4d y1:%4d y2:%4d\n", i, x[i], y1[i], y2[i]);
		printf("\n");
		
	}
	printf("as:%d\n", as);
	printf("cs:%d\n", cs);
}


