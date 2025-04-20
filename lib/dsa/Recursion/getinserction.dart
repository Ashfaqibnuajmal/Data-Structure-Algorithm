class Node {
  int data;
  Node? next;
  Node(this.data);
}

Node? getIntersection(Node? head1, Node? head2) {
  while (head1 != null) {
    Node? temp = head2;
    while (temp != null) {
      if (head1 == temp) return head1;
      temp = temp.next;
    }
    head1 = head1.next;
  }
  return null;
}

void main() {
  Node? head1 = Node(1)
    ..next = Node(2)
    ..next?.next = Node(3);
  Node? head2 = Node(10)
    ..next = Node(20)
    ..next?.next = head1.next?.next;

  print(getIntersection(head1, head2)?.data ?? "No intersection");
}
