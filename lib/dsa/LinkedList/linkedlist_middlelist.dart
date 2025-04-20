void main() {
  LinkedList list = LinkedList();
  list.addAll([1, 2, 3, 4, 5]);

  print("Middle element: ${list.findMiddle()?.data ?? 'List is empty'}");
}

class Node {
  int data;
  Node? next;
  Node(this.data);
}

class LinkedList {
  Node? head;

  void addAll(List<int> values) {
    for (var value in values) {
      head = Node(value)..next = head;
    }
  }

  Node? findMiddle() {
    Node? slow = head, fast = head;
    while (fast?.next != null) {
      slow = slow?.next;
      fast = fast?.next?.next;
    }
    return slow;
  }
}
