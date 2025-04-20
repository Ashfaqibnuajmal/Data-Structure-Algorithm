import 'dart:collection';

class StackWithQueue {
  Queue<int> queue1 = Queue<int>();
  Queue<int> queue2 = Queue<int>();

  void push(int value) {
    queue1.add(value);
  }

  int? pop() {
    if (queue1.isEmpty) return null;

    while (queue1.length > 1) {
      queue2.add(queue1.removeFirst());
    }

    int? poppedValue = queue1.removeFirst();

    // Swap queues
    var temp = queue1;
    queue1 = queue2;
    queue2 = temp;

    return poppedValue;
  }

  void display() {
    print(queue1);
  }
}

void main() {
  var stack = StackWithQueue();
  stack.push(10);
  stack.push(20);
  stack.push(30);
  stack.display();
  print(stack.pop());
  stack.display();
}
