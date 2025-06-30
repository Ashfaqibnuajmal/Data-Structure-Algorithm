class TrieNode {
  Map<String, TrieNode> children = {};
  bool isEnd = false;
}

class Trie {
  TrieNode root = TrieNode();

  void insert(String word) {
    TrieNode node = root;
    for (var ch in word.split('')) {
      node = node.children.putIfAbsent(ch, () => TrieNode());
    }
    node.isEnd = true;
  }

  bool search(String word) {
    TrieNode node = root;
    for (var ch in word.split('')) {
      if (!node.children.containsKey(ch)) return false;
      node = node.children[ch]!;
    }
    return node.isEnd;
  }
}

void main() {
  Trie trie = Trie();
  trie.insert('hello');
  trie.insert('hey');
  trie.insert('hi');

  print(trie.search('hello')); // true
  print(trie.search('he')); // false
  print(trie.search('hi')); // true
}
