void main() {
  String str = "madam";
  String reversedStr = "";

  for (int i = str.length - 1; i >= 0; i--) {
    reversedStr += str[i];
  }

  if (str == reversedStr) {
    print('The string is a palindrome.');
  } else {
    print('The string is not a palindrome.');
  }
}
