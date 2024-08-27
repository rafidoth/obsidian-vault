## Get GNLET (Greatest Number Less or Equal to Target)

```cpp
// greatest number less or equal to target
int gnlet(vector<int>& array,int n, int x){
    int k = 0;
    for(int b = n/2; b>=1; b/=2){
        while(k+b <n && array[k+b]<=x) k+=b;
    }
    return k;
}
```

