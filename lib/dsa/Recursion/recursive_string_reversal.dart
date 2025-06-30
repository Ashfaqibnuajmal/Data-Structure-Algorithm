void main() {
  String str = "Hello";
  String reversedStr = reverseString(str);
  print(reversedStr); // Output: olleH
}

String reverseString(String str) {
  if (str.isEmpty) {
    return str;
  } else {
    return reverseString(str.substring(1)) + str[0];
  }
}
