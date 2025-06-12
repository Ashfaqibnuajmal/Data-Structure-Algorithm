import 'dart:collection';

class Graph {
  Map<int, List<int>> adj = {};

  void addEdge(int u, int v) {
    adj.putIfAbsent(u, () => []).add(v);
    adj.putIfAbsent(v, () => []).add(u);
  }

  void bfs(int start) {
    Queue<int> queue = Queue()..add(start);
    Set<int> visited = {start};

    while (queue.isNotEmpty) {
      int node = queue.removeFirst();
      print(node);
      adj[node]?.where((n) => visited.add(n)).forEach(queue.add);
    }
  }
}

void main() {
  var graph = Graph();
  graph.addEdge(1, 2);
  graph.addEdge(1, 3);
  graph.addEdge(2, 4);
  graph.addEdge(2, 5);
  graph.addEdge(3, 6);
  graph.addEdge(3, 7);

  print("===== BFS Traversal =====");
  graph.bfs(1);
}
