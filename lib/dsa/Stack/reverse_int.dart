void main() {
  int num = 12345;
  List<int> stack = [];

  while (num > 0) {
    stack.add(num % 10); // push last digit
    num ~/= 10;
  }

  int reversed = 0;
  int place = 1;

  while (stack.isNotEmpty) {
    reversed += stack.removeLast() * place;
    place *= 10;
  }

  print(reversed); // Output: 54321
}
