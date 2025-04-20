void deleteMiddle(Stack<int> stack, int size) {
  // if (stack.isEmpty) return;

  int mid = size ~/ 2;
  _deleteHelper(stack, mid);
}

void _deleteHelper(Stack<int> stack, int mid) {
  if (mid == 0) {
    stack.pop(); // Remove the middle element
    return;
  }

  int temp = stack.pop()!;
  _deleteHelper(stack, mid - 1);
  stack.push(temp);
}

class Stack<T> {
  List<T> _stack = [];

  void push(T value) => _stack.add(value);
  T? pop() => _stack.isEmpty ? null : _stack.removeLast();
  void display() => print(_stack);
}

void main() {
  var stack = Stack<int>();
  stack.push(1);
  stack.push(2);
  stack.push(3);
  stack.push(4);
  stack.push(5);

  stack.display(); // Output: [1, 2, 3, 4, 5]

  deleteMiddle(stack, stack._stack.length);

  stack.display(); // Output: [1, 2, 4, 5]
}
