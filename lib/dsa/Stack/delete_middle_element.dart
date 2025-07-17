void main() {
  List<int> stack = [1, 2, 3, 4, 5]; // Stack: top is at end
  int n = stack.length;
  int mid = n ~/ 2;

  deleteMiddle(stack, 0, mid);
  print(stack); // Output: [1, 2, 4, 5]
}

void deleteMiddle(List<int> stack, int current, int middle) {
  if (stack.isEmpty || current == middle) {
    stack.removeLast();
    return;
  }

  int top = stack.removeLast();
  deleteMiddle(stack, current + 1, middle);
  stack.add(top);
}
