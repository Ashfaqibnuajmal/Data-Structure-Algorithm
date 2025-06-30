String firstNonRepeating(String s) {
  Map<String, int> count = {};

  for (var ch in s.split('')) {
    count[ch] = (count[ch] ?? 0) + 1;
  }

  for (var ch in s.split('')) {
    if (count[ch] == 1) return ch;
  }

  return '';
}

void main() {
  print(firstNonRepeating("hello")); // h
  print(firstNonRepeating("aabbccdde")); // e
  print(firstNonRepeating("aabb")); // (empty)
}
