# 1979C - Earning on Bets
In the problem statement we are told to find the amount of coins for each possible outcome so that the total amount of investment we make on all the outcomes is less than amount of return coins we get from each of the outcomes. In other word, we have to win in any way possible.

Given,<br/>
Number of Outcomes, $n$
Multipliers for each outcome, $k = [k_1,k_2,k_3,.....,k_n]$

Now, <br/>
Let's say, the answer is $x= [x_1,x_2,x_3,....,x_n]$<br/>
total ammount invested/sum, $S = \sum_{1}^{n}{x_i}$<br/>
According to the problem statement for any $1<=i<=n$ this statement $x_i*k_i >S$ has to be true<br/>

$$
x_i*k_i>S 
$$
$$
x_i > \frac{S}{k_i}
$$
$$
\sum_{1}^{n}x_i > \sum_{1}^{n}\frac{S}{k_i}
$$

Actually, $\sum_{1}^{n}{x_i}$ = $S$

$$
S > \sum_{1}^{n}\frac{S}{k_i}
$$

And we can divide both side with S


$$
1 > \sum_{1}^{n}\frac{1}{k_i}
$$


So, its enough to check this statement to say if its possible or not. But we
need the numbers if its possible.

To get $\sum_{1}^{n}\frac{1}{k_i}$ we can take LCM of the denominator. So, its become like this,

$$
\frac{1}{k_0} + \frac{1}{k_1} + \frac{1}{k_1} + ..... + \frac{1}{k_n}<1
$$


Let's say, $L = LCM(k_0,k_1,k_3,....k_n)$ 
$$
\frac{\frac{L}{k_1}+\frac{L}{k_2}+\frac{L}{k_3}+....+\frac{L}{k_n}}{L}<1
$$
$$
\frac{L}{k_1}+\frac{L}{k_2}+\frac{L}{k_3}+....+\frac{L}{k_n}<L
$$

$$
x_1+x_2+x_3+......+x_n <L
$$

# Code (CPP)
CF Submission Link : https://codeforces.com/contest/1979/submission/279334938
```cpp
#include<bits/stdc++.h> 
using namespace std;
typedef long long int lli;
typedef unsigned long long int uli;
#define MOD 1000000007

void f(){
    int n;
    cin >> n;
    vector<int> k(n);
    uli lcm = 1;
    for(int i =0; i<n; i++){
        cin >> k[i];
        lcm = ((uli)k[i]*lcm)/__gcd((uli)k[i],lcm);
    } 
    vector<int> x(n);
    int sum = 0;
    for(int i =0; i<n; i++){
        x[i] = lcm/k[i];
        sum+=x[i];
    }
    if(sum >= lcm) cout << -1 << "\n";    
    else{
        for(int i : x) cout << i << " ";
        cout << '\n';
    }
}

int main(){
    ios_base::sync_with_stdio(0);
    cin.tie(0);
    
    int testcase; 
    cin >> testcase;

    for(int i = 1; i<=testcase; i++){
        //cout << "Test Case No " << i << "\n";
        f();
    }
}
```


