class TrieNode {
  Map<String, TrieNode> children = {};
  bool isEnd = false;
}

class Trie {
  TrieNode root = TrieNode();

  void insert(String word) {
    var node = root;
    for (var ch in word.split('')) {
      node = node.children.putIfAbsent(ch, () => TrieNode());
    }
    node.isEnd = true;
  }

  List<String> autoComplete(String prefix) {
    TrieNode? node = root;
    for (var ch in prefix.split('')) {
      if (!node!.children.containsKey(ch)) return [];
      node = node.children[ch];
    }

    List<String> results = [];
    _dfs(node!, prefix, results);
    return results;
  }

  void _dfs(TrieNode node, String path, List<String> result) {
    if (node.isEnd) result.add(path);
    for (var entry in node.children.entries) {
      _dfs(entry.value, path + entry.key, result);
    }
  }
}

void main() {
  Trie trie = Trie();
  trie.insert("apple");
  trie.insert("app");
  trie.insert("april");
  trie.insert("bat");
  trie.insert("ball");

  print(trie.autoComplete("ap")); // [apple, app, april]
  print(trie.autoComplete("ba")); // [bat, ball]
  print(trie.autoComplete("z")); // []
}
