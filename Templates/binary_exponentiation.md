```cpp
lli pw(int a, int n){
    if(n==0) return 1;
    lli res = pw(a,n/2);
    if(n%2 ==0) res *= res;
    else res = a*res*res;
    return res;
}
```