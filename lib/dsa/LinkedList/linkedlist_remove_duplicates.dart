class Node {
  int data;
  Node? next;
  Node(this.data);
}

Node? removeDuplicates(Node? head) {
  if (head == null) return null;

  Set<int> seen = {}; // Set to keep track of visited elements
  Node? current = head;
  Node? prev;

  while (current != null) {
    if (seen.contains(current.data)) {
      prev?.next = current.next;
    } else {
      seen.add(current.data);
      prev = current;
    }
    current = current.next;
  }

  return head;
}

void printList(Node? head) {
  Node? current = head;
  while (current != null) {
    print(current.data);
    current = current.next;
  }
}

void main() {
  // Creating a linked list: 1 -> 2 -> 2 -> 3 -> 4 -> 4
  Node? head = Node(1);
  head.next = Node(2);
  head.next?.next = Node(2);
  head.next?.next?.next = Node(3);
  head.next?.next?.next?.next = Node(4);
  head.next?.next?.next?.next?.next = Node(4);

  print("Original List:");
  printList(head);

  head = removeDuplicates(head);

  print("\nList After Removing Duplicates:");
  printList(head);
}
