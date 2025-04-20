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

  List<String> getWordsWithPrefix(String prefix) {
    var node = root;
    for (var ch in prefix.split('')) {
      if (!node.children.containsKey(ch)) return [];
      node = node.children[ch]!;
    }
    return _getWordsFromNode(node, prefix);
  }

  List<String> _getWordsFromNode(TrieNode node, String prefix) {
    List<String> words = [];
    if (node.isEnd) words.add(prefix);
    node.children.forEach((ch, childNode) {
      words.addAll(_getWordsFromNode(childNode, prefix + ch));
    });
    return words;
  }
}

void main() {
  var trie = Trie();
  trie.insert("apple");
  trie.insert("app");
  trie.insert("apricot");
  trie.insert("bat");
  trie.insert("ball");

  var prefix = "ap";
  print("Words with prefix '$prefix': ${trie.getWordsWithPrefix(prefix)}");
}
