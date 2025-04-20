import 'dart:collection';

class Graph {
  Map<int, List<int>> adj = {};

  void addEdge(int u, int v) {
    adj[u] = (adj[u] ?? [])..add(v);
    adj[v] = (adj[v] ?? [])..add(u);
  }

  int shortestPath(int start, int end) {
    Queue<int> queue = Queue();
    Map<int, int> distance = {start: 0};

    queue.add(start);

    while (queue.isNotEmpty) {
      int node = queue.removeFirst();

      for (var neighbor in adj[node] ?? []) {
        if (!distance.containsKey(neighbor)) {
          distance[neighbor] = distance[node]! + 1;
          queue.add(neighbor);
          if (neighbor == end) return distance[neighbor]!;
        }
      }
    }
    return -1; // No path found
  }
}

void main() {
  Graph g = Graph();
  g.addEdge(1, 2);
  g.addEdge(1, 3);
  g.addEdge(2, 4);
  g.addEdge(3, 4);
  g.addEdge(4, 5);

  print(g.shortestPath(1, 5)); // Output: 3
}
