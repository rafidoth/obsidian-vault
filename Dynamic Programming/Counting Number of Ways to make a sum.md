# Counting Number of Ways to construct a sum


Let's say we have few coins [2,3,5]<br>
we have to construct sum n = 5 <br>


<h2> Bruteforce Observation : </h2> 

If I choose 2 then I have to construct 5-2=3 now. 
If I choose 3 then I have to construct 5-3=2 now. 
If I choose 2 then I have to construct 5-5=0 now. 


see if I need to construct zero It has only one way that is choosing none, think it like this or just for sack of base case keep it 1.

<br>


<img src="2.png" width="380">

<img src="1.png" width="1000">


</br>
<h2>Bottom Up</h2>

```plain

dp[0] = 1
for i from 1 to n 
    for each x of coins
        if x<= i :  dp[i]+= dp[i-x]
        
result = dp[n]

```
</br>
<img src="3.png" width="1000">

<h1>Counting Distinct Number of Ways to Construct sum</h1>

according to the above problem as to construct 5 we can take bot 3 + 2 = 5 and 2 + 3 = 5<br>
But now I want to consider this two similar so one way. In other words I want distinct ways only. 

Solution : 
I can take coins in order. Such as If I take 2 then after that I will only take coins greater or equal to 2




