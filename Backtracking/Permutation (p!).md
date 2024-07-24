```cpp
#include<bits/stdc++.h> 
using namespace std;

vector<int> arr;
vector<int> sel;
bool taken[100];

void permutation(){
    if(arr.size() == sel.size()){
        for(int x : sel) cout << x << " " ;
        cout << endl;
        return;
    }
    
    for(int i : arr){
        if(!taken[i]){
            taken[i] = true;
            sel.push_back(i);
            permutation();
            sel.pop_back();
            taken[i] = false;
        }
    }
}


int main(){
    #ifndef ONLINE_JUDGE
      freopen("input.txt", "r", stdin);
      freopen("output.txt", "w", stdout);
    #endif
    ios_base::sync_with_stdio(0);
    cin.tie(0);
   
    arr = {1,2,3,4};
    permutation();

}
```
