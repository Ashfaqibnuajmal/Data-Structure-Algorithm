class Queue {
  List<int> queue = [];

  void enqueue(int value) => queue.add(value);

  int? dequeue() => queue.isEmpty ? null : queue.removeAt(0);

  void display() => print(queue);
}

void main() {
  var q = Queue();
  q.enqueue(10);
  q.enqueue(20);
  q.enqueue(30);
  q.display(); // Output: [10, 20, 30]

  print(q.dequeue()); // Output: 10
  q.display(); // Output: [20, 30]
}
