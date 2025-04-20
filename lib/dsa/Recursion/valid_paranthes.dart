bool isValidParentheses(String str) {
  List<String> stack = [];
  Map<String, String> pair = {'(': ')', '{': '}', '[': ']'};

  for (int i = 0; i < str.length; i++) {
    String current = str[i];

    if (pair.containsKey(current)) {
      stack.add(current);
    } else if (pair.containsValue(current)) {
      if (stack.isEmpty || pair[stack.removeLast()] != current) {
        return false;
      }
    }
  }

  return stack.isEmpty;
}

void main() {
  print(isValidParentheses("{[()]}")); // Output: true
  print(isValidParentheses("{[(])}")); // Output: false
}
