class Graph {
  Map<int, List<int>> adj = {};
  bool isDirected;

  Graph({this.isDirected = false});

  void addEdge(int u, int v) {
    adj.putIfAbsent(u, () => []).add(v);
    if (!isDirected) {
      adj.putIfAbsent(v, () => []).add(u);
    }
  }

  void printGraph() {
    adj.forEach((node, neighbors) {
      print('$node -> $neighbors');
    });
  }
}

void main() {
  Graph undirectedGraph = Graph();
  undirectedGraph.addEdge(1, 2);
  undirectedGraph.addEdge(1, 3);
  undirectedGraph.addEdge(2, 4);
  print("Undirected Graph:");
  undirectedGraph.printGraph();

  Graph directedGraph = Graph(isDirected: true);
  directedGraph.addEdge(1, 2);
  directedGraph.addEdge(1, 3);
  directedGraph.addEdge(3, 4);
  print("\nDirected Graph:");
  directedGraph.printGraph();
}
