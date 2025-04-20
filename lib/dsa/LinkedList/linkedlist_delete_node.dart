class Node {
  int data;
  Node? next;
  Node? prev;

  Node(this.data);
}

void deleteNode(Node? head, int value) {
  Node? current = head;

  while (current != null && current.data != value) {
    current = current.next;
  }

  if (current == null) return; // Node not found

  current.prev?.next = current.next; // Adjust previous node's next
  current.next?.prev = current.prev; // Adjust next node's prev
}

void printList(Node? head) {
  while (head != null) {
    print(head.data);
    head = head.next;
  }
}

void main() {
  Node head = Node(10);
  head.next = Node(20)..prev = head;
  head.next!.next = Node(30)..prev = head.next;

  deleteNode(head, 20); // Delete node with value 20
  printList(head); // Print the updated list
}
