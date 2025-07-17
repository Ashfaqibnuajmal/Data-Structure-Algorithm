class Graph {
  Map<int, List<int>> adj = {};

  void addEdge(int u, int v) {
    adj.putIfAbsent(u, () => []).add(v);
    adj.putIfAbsent(v, () => []).add(u);
  }

  void printGraph() {
    adj.forEach((node, neighbors) {
      print('$node -> $neighbors');
    });
  }
}

void main() {
  Graph g = Graph();
  g.addEdge(1, 2);
  g.addEdge(1, 3);
  g.addEdge(2, 4);
  g.addEdge(3, 4);
  g.addEdge(4, 5);

  g.printGraph();
}
