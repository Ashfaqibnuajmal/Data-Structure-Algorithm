class Node {
  int value;
  Node? next;
  Node(this.value);
}

class LinkedList {
  Node? head;

  void add(int value) {
    Node newNode = Node(value);
    if (head == null) {
      head = newNode;
      newNode.next = head; // Make it circular
    } else {
      Node current = head!;
      while (current.next != head) {
        current = current.next!;
      }
      current.next = newNode;
      newNode.next = head; // Make it circular
    }
  }

  void display() {
    if (head == null) return;

    Node? current = head;
    do {
      print(current!.value);
      current = current.next;
    } while (current != head); // Continue until we reach the head again
  }
}

void main() {
  LinkedList list = LinkedList();
  list.add(1);
  list.add(2);
  list.add(3);
  list.display(); // Output: 1 2 3
}
