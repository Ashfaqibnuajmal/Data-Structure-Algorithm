class Node {
  int data;
  Node? next;

  Node(this.data);
}

class LinkedList {
  Node? head;

  void fromArray(List<int> arr) {
    for (var value in arr) {
      append(value);
    }
  }

  void append(int data) {
    Node newNode = Node(data);

    if (head == null) {
      head = newNode;
    } else {
      Node? current = head;
      while (current!.next != null) {
        current = current.next;
      }
      current.next = newNode;
    }
  }

  void printList() {
    Node? current = head;
    while (current != null) {
      print(current.data);
      current = current.next;
    }
  }
}

void main() {
  List<int> arr = [1, 2, 3, 4, 5];

  LinkedList linkedList = LinkedList();
  linkedList.fromArray(arr);
  linkedList.printList(); // Output: 1 2 3 4 5
}
