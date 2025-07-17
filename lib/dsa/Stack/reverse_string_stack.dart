void main() {
  String input = "ashfaq";
  List<String> stack = [];

  for (var ch in input.split('')) {
    stack.add(ch);
  }

  String reversed = '';
  while (stack.isNotEmpty) {
    reversed += stack.removeLast();
  }

  print(reversed);
}
