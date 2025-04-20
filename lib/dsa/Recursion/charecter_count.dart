void main() {
  String str = "aabccdeff";
  Map<String, int> frequency = {};

  for (int i = 0; i < str.length; i++) {
    String char = str[i];
    if (frequency.containsKey(char)) {
      frequency[char] = frequency[char]! + 1;
    } else {
      frequency[char] = 1;
    }
  }

  print(frequency); // Output: {a: 2, b: 1, c: 2, d: 1, e: 1, f: 2}
}
