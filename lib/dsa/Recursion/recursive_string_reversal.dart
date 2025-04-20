void main() {
  String str = "Hello";
  String reversedStr = reverseString(str);
  print(reversedStr); // Output: olleH
}

String reverseString(String str) {
  // Base case: if the string is empty or has only one character
  if (str.isEmpty) {
    return str;
  } else {
    // Recursive case: reverse the rest of the string and append the first character
    return reverseString(str.substring(1)) + str[0];
  }
}
