void main() {
  List<int> arr = [1, 2, 3, 4, 5];
  LinkedList list = LinkedList();

  for (int item in arr) {
    list.add(item);
  }

  list.printList();
}

class Node {
  int data;
  Node? next;
  Node(this.data);
}

class LinkedList {
  Node? head;

  void add(int value) {
    Node newNode = Node(value);
    if (head == null) {
      head = newNode;
    } else {
      Node current = head!;
      while (current.next != null) {
        current = current.next!;
      }
      current.next = newNode;
    }
  }

  void printList() {
    Node? current = head;
    while (current != null) {
      print('${current.data} ');
      current = current.next;
    }
    print('null');
  }
}
