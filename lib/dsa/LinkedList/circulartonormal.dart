class Node {
  int data;
  Node? next;
  Node(this.data);
}

class CircularLinkedList {
  Node? head;

  void append(int data) {
    var newNode = Node(data);
    if (head == null) {
      head = newNode;
      newNode.next = head;
      return;
    }
    var temp = head;
    while (temp!.next != head) {
      temp = temp.next;
    }
    temp.next = newNode;
    newNode.next = head;
  }

  void printList() {
    if (head == null) return;
    var temp = head;
    do {
      print(temp!.data);
      temp = temp.next;
    } while (temp != head);
  }
}

void main() {
  var list = CircularLinkedList();
  list.append(10);
  list.append(20);
  list.append(30);
  list.printList();
}
