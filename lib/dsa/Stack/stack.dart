class Stack {
  List<int> stack = [];

  void push(int value) => stack.add(value);

  int? pop() => stack.isEmpty ? null : stack.removeLast();

  void deleteStack() => stack.clear();

  void display() => print(stack);
}

void main() {
  var s = Stack();
  s.push(10);
  s.push(20);
  s.push(30);
  s.display(); // Output: [10, 20, 30]

  print(s.pop()); // Output: 30
  s.display(); // Output: [10, 20]

  s.deleteStack();
  s.display(); // Output: []
}
