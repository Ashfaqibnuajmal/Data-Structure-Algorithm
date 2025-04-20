void main() {
  String str = "aabccdeff";
  String result = removeDuplicates(str, "");
  print(result); // Output: abcdef
}

String removeDuplicates(String str, String result) {
  if (str.isEmpty) {
    return result;
  } else {
    if (!result.contains(str[0])) {
      result += str[0];
    }
    return removeDuplicates(str.substring(1), result);
  }
}
