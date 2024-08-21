#### Lower Bound
Smallest index(`i`) such that `arr[i] >= target` 

**Single Occurrence**
```cpp
    vector<int> arr = {3,6,13,15,17,19};
    auto it = lower_bound(arr.begin(), arr.end(),17);
    cout << distance(arr.begin(), it) << endl;
	// output is 4
```

\
**Multiple Occurrence**
```cpp
    vector<int> arr = {3,6,13,13,13,13,19};
    auto it = lower_bound(arr.begin(), arr.end(),13);
    cout << distance(arr.begin(), it) << endl;
    // output is 2
```

**No Occurrence**
```cpp
    vector<int> arr = {3,6,13,15,17,19};
    auto it = lower_bound(arr.begin(), arr.end(),14);
    cout << distance(arr.begin(), it) << endl;
	// output 15
```


