```cpp

int div_by_a_or_b(int n, int a, int b){
    int c1 = n/a;
    int c2 = n/b;
    int c3 = n/(a*b);
    return c1 + c2 -c3;
}

```