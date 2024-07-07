Divisors of  a number can be found in `O(sqrt(n))`
```cpp

void print_divisors(int n){
    for(int i = 1; i*i <= n; i++){
       if(n%i==0){
           if(i== n/i) cout << i << " ";
           else cout << i << " " << n/i << " " ;
       }
    }
    cout << endl;
}

```

Then we can count number of divisors of a given number in same `O(sqrt(n))`
```cpp
int count_divisors(int n){
    int count = 0;
    for(int i = 1; i*i <= n; i++){
       if(n%i==0){
           if(i== n/i) count ++;
           else count +=2; 
       }
    }
    return count ;
}

```

#### Count the number of divisors up to N

```cpp

int count_total_divisors_upto(int N){
    int total_count = 0;
    for(int i = 1; i<= N;i++){
        total_count += count_divisors(i);
    }
    return total_count;
}

```
`count_divisors(i)` function's time complexity is `O(sqrt(n))`
we are running this function for each number between 1 to N
total time complexity is going to be `O(n * sqrt(n))`

> What if N is some big number like 10^7

Then time complexity will be something around  (10^7) * (10^4) = 10^11 

Another approach is here I can iterate over all values 1 to N and say for 1 who are the multiples of 1 and increment their count by +1. Then for 2 we will go to 2,4,6,8,10 and increment them by +1. Then for 3,4,5,6..... till N. This way, we are taking a number and saying and taking its multiples then by incrementing them I'm saying this number is a divisor of its multiples. This takes around 9.1222s which is a lot lesser than previous approach. As we are counting the total count and again iterating it is taking a lot of time. 

```cpp
int count_total_divisors_harmonic(int n){
   vector<int> divisor_map(n+1,0);
   for(int i = 1; i<=n; i++){
       for(int j = i; j <= n; j+=i){
          divisor_map[j]++;
       }
   } 
   int total_count = 0;
   for(int x : divisor_map){
       total_count+= x;
   }
   return total_count;
}
```
So, if the question is something like **how many divisors a particular number has ?** then we can pre-calculate the divisors and then return the answer in `O(1)` time.

pre-calculate `count_total_divisors_harmonic` time complexity  `O(nln(n))`

![[Divisor Finding Algorithm 2024-07-07 23.21.15.excalidraw]]