String findLongestChar(String str) {
  Map<String, int> charCount = {};

  for (int i = 0; i < str.length; i++) {
    charCount[str[i]] = (charCount[str[i]] ?? 0) + 1;
  }

  return charCount.entries.reduce((a, b) => a.value > b.value ? a : b).key;
}

void main() {
  print(findLongestChar("aabbbcccc")); // Output: "c"
}
