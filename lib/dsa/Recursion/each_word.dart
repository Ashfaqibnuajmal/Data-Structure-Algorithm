void main() {
  String input = "hello world ashfaq";
  List<String> words = input.split(' ');
  List<String> reversedWords = [];

  for (var word in words) {
    reversedWords.add(reverse(word));
  }

  String result = reversedWords.join(' ');
  print(result); // olleh dlrow qahfsa
}

String reverse(String word) {
  if (word.isEmpty) return '';
  return reverse(word.substring(1)) + word[0];
}
