
#include <iostream>
#include <cstdio>
#include <cstdlib>

extern "C" int CountChar(wchar_t* s, wchar_t c);

int main()
{
    wchar_t c;
    wchar_t* s;

    s = (wchar_t*)L"Hello, assembly is awesome";
    c = L'e';

    wprintf(L"\n Test string : %s\n", s);
    wprintf(L"Search Character : %c Count: %d\n",
        c, CountChar(s, c));

    fflush(stdout);
    system("pause");

    return 0;
}