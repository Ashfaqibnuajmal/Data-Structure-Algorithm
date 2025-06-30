class QueueWithStack {
  List<int> stack1 = [];
  List<int> stack2 = [];

  void enqueue(int value) {
    stack1.add(value);
  }

  int? dequeue() {
    if (stack2.isEmpty) {
      while (stack1.isNotEmpty) {
        stack2.add(stack1.removeAt(0));
      }
    }
    return stack2.isEmpty ? null : stack2.removeAt(0);
  }

  void display() {
    print([...stack2.reversed, ...stack1]);
  }
}

void main() {
  var queue = QueueWithStack();
  queue.enqueue(10);
  queue.enqueue(20);
  queue.enqueue(30);
  queue.display();
  print(queue.dequeue());
  queue.display();
}
