void main() {
  String str = "abcabcabc";
  String substring = "abc";
  int count = 0;

  for (int i = 0; i <= str.length - substring.length; i++) {
    if (str.substring(i, i + substring.length) == substring) {
      count++;
    }
  }

  print(count); // Output: 3
}
