String removeVowels(String str) {
  List<String> stack = [];
  String vowels = "aeiouAEIOU";

  for (int i = 0; i < str.length; i++) {
    if (!vowels.contains(str[i])) {
      stack.add(str[i]);
    }
  }

  return stack.join('');
}

void main() {
  print(removeVowels("YourName")); // Output: YrNm
}
