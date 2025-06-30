class Node {
  int data;
  Node? next;

  Node(this.data);
}

Node? mergeLists(Node? l1, Node? l2) {
  if (l1 == null) return l2;
  if (l2 == null) return l1;

  if (l1.data < l2.data) {
    l1.next = mergeLists(l1.next, l2);
    return l1;
  } else {
    l2.next = mergeLists(l1, l2.next);
    return l2;
  }
}

void printList(Node? head) {
  Node? current = head;
  while (current != null) {
    print(current.data);
    current = current.next;
  }
}

void main() {
  Node l1 = Node(1);
  l1.next = Node(3);
  l1.next!.next = Node(5);

  Node l2 = Node(2);
  l2.next = Node(4);
  l2.next!.next = Node(6);

  Node? merged = mergeLists(l1, l2);

  printList(merged);
}
