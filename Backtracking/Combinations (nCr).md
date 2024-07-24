```cpp
#include<bits/stdc++.h> 
using namespace std;



int N;
vector<int> arr;
vector<int> sel;

int r;
void ncr(int curr){
    if((int)sel.size() == r){
        for(int x : sel) cout << x << " ";
        cout << endl;
        return;
    }
    for(int i =curr; i<(int)arr.size();i++){
        sel.push_back(arr[i]);
        ncr(i+1);
        sel.pop_back();
    }
}




int main(){
    #ifndef ONLINE_JUDGE
      freopen("input.txt", "r", stdin);
      freopen("output.txt", "w", stdout);
    #endif

    ios_base::sync_with_stdio(0);
    cin.tie(0);
    arr = {3, 5, 6, 2, 1};
    r = 3;
    ncr(0);
}


```

The code prints all possible combination taking 3 elements from arr. 
![[Pasted image 20240722145056.png]]
If we try to calculate the number of combinations using formula then we get, 
$$^5C_3 = \frac{5!}{3! \times (5-3)!} = \frac{120}{12}=10$$
