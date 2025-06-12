void main() {
  String str = "abcaab";
  String result = '';
  Set seen = {};

  for (int i = 0; i < str.length; i++) {
    if (!seen.contains(str[i])) {
      result += str[i];
      seen.add(str[i]);
    }
  }

  print(result); // Output: "abc"
}

// void main() {
//   List<int> list = [1, 2, 2, 3, 4, 4, 5];

//   // Convert List to Set (removes duplicates)
//   Set<int> set = Set.from(list);

//   print(set); // Output: {1, 2, 3, 4, 5}
// }
