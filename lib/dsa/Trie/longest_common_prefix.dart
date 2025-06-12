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

  String longestCommonPrefix() {
    var node = root;
    String prefix = "";

    while (node.children.length == 1 && !node.isEnd) {
      var entry = node.children.entries.first;
      prefix += entry.key;
      node = entry.value;
    }

    return prefix;
  }
}

void main() {
  var trie = Trie();
  trie.insert("apple");
  trie.insert("app");
  trie.insert("apricot");

  print("===== Longest Common Prefix =====");
  print("Longest Common Prefix: ${trie.longestCommonPrefix()}");
}
