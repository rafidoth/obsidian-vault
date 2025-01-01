```cpp
#include<bits/stdc++.h>
using namespace std;


struct Node{
  int node;
  int parent;
  int weight;
};


struct cmp{
  bool operator()(Node a, Node b){
    return a.weight > b.weight;
  }
};

void makeEdge(vector<pair<int,int>> G[], int u, int v, int w){
  G[u].push_back({v,w});
  G[v].push_back({u,w});
}



int main(){
  vector<pair<int,int>> G[5];
  makeEdge(G, 0, 1, 2);
  makeEdge(G, 0, 2, 1);
  makeEdge(G, 2, 4, 2);
  makeEdge(G, 2, 3, 2);
  makeEdge(G, 2, 1, 1);
  makeEdge(G, 4, 3, 1);



  priority_queue<Node, vector<Node>, cmp> priorityQueue;
  priorityQueue.push({0,-1,0});
  vector<bool> vis(5,false);
  vector<pair<int,int>> mst;
  int sum = 0;

  while(!priorityQueue.empty()){
    auto it = priorityQueue.top();
    priorityQueue.pop();
    int currNode = it.node; 
    int parent = it.parent;
    int weight = it.weight;
    if(vis[currNode]) continue;
    vis[currNode] = true; 
    sum+= weight;
    if(parent>=0) mst.push_back({currNode, parent});
    for(auto x : G[currNode]){
      int neighbourNode = x.first;
      int neightbourWeight = x.second;
      if(!vis[neighbourNode]){
        priorityQueue.push({neighbourNode, currNode, neightbourWeight});
      }
    }
  }
  cout << sum << endl;
  for(auto p : mst){
    cout << p.first << " " << p.second << endl;
  }
}

```
