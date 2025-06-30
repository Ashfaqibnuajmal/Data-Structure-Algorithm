List<List<String>> groupAnagrams(List<String> words) {
  Map<String, List<String>> map = {};

  for (var word in words) {
    var sorted = word.split('')..sort();
    var key = sorted.join();
    map.putIfAbsent(key, () => []).add(word);
  }

  return map.values.toList();
}

void main() {
  var input = ['bat', 'tab', 'cat', 'act', 'tac', 'dog'];
  var result = groupAnagrams(input);

  for (var group in result) {
    print(group);
  }
}
