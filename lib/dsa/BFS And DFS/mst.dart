class Edge {
  final int u, v, w;
  Edge(this.u, this.v, this.w);
}

class UnionFind {
  List<int> parent;
  UnionFind(int n) : parent = List.generate(n, (i) => i);

  int find(int x) => parent[x] == x ? x : parent[x] = find(parent[x]);

  void unite(int x, int y) {
    int a = find(x), b = find(y);
    if (a != b) parent[b] = a;
  }
}

List<Edge> kruskal(int n, List<Edge> edges) {
  edges.sort((a, b) => a.w.compareTo(b.w));
  var uf = UnionFind(n);
  List<Edge> result = [];

  for (var e in edges) {
    if (uf.find(e.u) != uf.find(e.v)) {
      result.add(e);
      uf.unite(e.u, e.v);
    }
  }
  return result;
}

void main() {
  var edges = [
    Edge(0, 1, 10),
    Edge(0, 2, 6),
    Edge(0, 3, 5),
    Edge(1, 3, 15),
    Edge(2, 3, 4),
  ];

  var mst = kruskal(4, edges);

  for (var e in mst) {
    print("${e.u} -- ${e.v} == ${e.w}");
  }
}
