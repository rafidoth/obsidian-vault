```cpp
bool getBit(lli x, int k){
    return (x&((lli)1<<k));
}
```

```cpp
unsigned long long int reverseBit(lli x, int k){
    return (x ^ ((lli)1 << k));
}
```

```cpp
unsigned long long int setBit1(lli x, int k){
   return (x | ((lli)1 << k));
}
```

```cpp
unsigned long long int setBit0(lli x, int k){
   return (x & ~((lli)1 << k));
}
```

```cpp
unsigned long long int 2pw(int x)
```