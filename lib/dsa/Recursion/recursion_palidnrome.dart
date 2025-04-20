void main() {
  String str = "madam";
  bool isPalindrome = checkPalindrome(str, 0, str.length - 1);

  if (isPalindrome) {
    print("The string is a palindrome.");
  } else {
    print("The string is not a palindrome.");
  }
}

bool checkPalindrome(String str, int left, int right) {
  if (left >= right) {
    return true;
  }

  if (str[left] != str[right]) {
    return false;
  }

  return checkPalindrome(str, left + 1, right - 1);
}
