## First Occurrence of a number 
```cpp
int focc(vector<int>& arr, int t){
    int s = 0;
    int e = arr.size()-1; 
    int ans = -1;
    while(s<=e){
        int m = s+(e-s)/2;
        if(arr[m] == t) {
            ans = m;
            if(m==0) return ans;
            if(m!=0 && arr[m-1] !=t){
                return ans;
            }
            e = m-1;
        }
        else if(t < arr[m]) e = m - 1;
        else s = m + 1;
    }
    return e; 
}
```

## Last Occurrence of a number
```cpp
int locc(vector<int>& arr, int t){
    int s = 0;
    int e = arr.size()-1; 
    int ans = -1;
    while(s<=e){
        int m = s+(e-s)/2;
        if(arr[m] == t) {
            ans = m;
            if(m==(int)arr.size()-1) return ans;
            if(arr[m+1] !=t) return ans;
            s = m+1;
        }
        else if(t < arr[m]) e = m - 1;
        else s = m + 1;
    }
    return s; 
}
```

