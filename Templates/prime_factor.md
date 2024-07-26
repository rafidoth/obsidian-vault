```cpp
vector<int> prime_factors;
void prime_factorization(int n){
    // if n is prime then no factorization will happen
    if(n%2 ==1 && !is_prime[n]) return;
    for(int prime : primes){
        if((long long)prime*prime > n) break;
        while(n%prime==0){
            prime_factors.push_back(prime);
            n/= prime;
        }
    }
    if(n>1) prime_factors.push_back(n);
}
```
