void main() {
  String input = "ashfaq kv";
  String result = removeVowels(input);
  print(result);
}

String removeVowels(String s) {
  if (s.isEmpty) return '';
  String ch = s[0];
  bool isVowel = 'aeiouAEIOU'.contains(ch);
  return (isVowel ? '' : ch) + removeVowels(s.substring(1));
}
