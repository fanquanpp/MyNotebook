/*
 * @Author:      Anonymous
 * @Algorithm:   狄克斯特拉算法 (Dijkstra's Algorithm)
 * @Language:    C++ 17
 * @Time Compl.: O(E log V)
 * @Description: 在加权图中查找单源最短路径。使用 STL priority_queue 优化。 | Find single-source shortest path in a weighted graph using STL priority_queue.
 * @Teaching:    使用 pair<int, int> 存储 (距离, 节点)，注意优先队列默认是大顶堆。 | Use pair<int, int> to store (distance, node). Note that priority_queue is a max-heap by default.
 */

#include <iostream>
#include <vector>
#include <queue>
#include <climits>

using namespace std;

typedef pair<int, int> pii;

vector<int> dijkstra(int n, const vector<vector<pii>>& adj, int start) {
    vector<int> dist(n, INT_MAX);
    dist[start] = 0;
    
    // 小顶堆 | Min-priority queue
    priority_queue<pii, vector<pii>, greater<pii>> pq;
    pq.push({0, start});
    
    while (!pq.empty()) {
        int d = pq.top().first;
        int u = pq.top().second;
        pq.pop();
        
        if (d > dist[u]) continue;
        
        for (auto& edge : adj[u]) {
            int v = edge.first;
            int weight = edge.second;
            
            if (dist[u] + weight < dist[v]) {
                dist[v] = dist[u] + weight;
                pq.push({dist[v], v});
            }
        }
    }
    return dist;
}

// 单元测试 | Unit Test
void testDijkstra() {
    int n = 4;
    vector<vector<pii>> adj(n);
    adj[0].push_back({1, 1});
    adj[0].push_back({2, 4});
    adj[1].push_back({2, 2});
    adj[1].push_back({3, 5});
    adj[2].push_back({3, 1});
    
    vector<int> dist = dijkstra(n, adj, 0);
    if (dist[0] == 0 && dist[1] == 1 && dist[2] == 3 && dist[3] == 4) {
        cout << "Dijkstra tests passed! | 狄克斯特拉算法测试通过！" << endl;
    }
}

int main() {
    testDijkstra();
    return 0;
}

// LeetCode: 743. Network Delay Time
// 洛谷: P3371 【模板】单源最短路径
