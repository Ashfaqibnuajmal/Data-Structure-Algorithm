class TrieNode {
  Map<String, TrieNode> children = {};
  bool isEnd = false;
}

class Trie {
  TrieNode root = TrieNode();

  void insert(String word) {
    TrieNode node = root;
    for (var ch in word.split('')) {
      node.children[ch] ??= TrieNode();
      node = node.children[ch]!;
    }
    node.isEnd = true;
  }

  bool startsWith(String prefix) {
    TrieNode? node = root;
    for (var ch in prefix.split('')) {
      if (!node!.children.containsKey(ch)) return false;
      node = node.children[ch];
    }
    return true;
  }
}

void main() {
  Trie trie = Trie();
  trie.insert("apple");
  trie.insert("app");
  trie.insert("april");

  print(trie.startsWith("ap")); // true
  print(trie.startsWith("app")); // true
  print(trie.startsWith("ba")); // false
}
