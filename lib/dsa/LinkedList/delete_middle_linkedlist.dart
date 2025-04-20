import 'dart:io';

void main() {
  LinkedList list = LinkedList();
  list.addAll([1, 2, 3, 4, 5]);

  print("Original List:");
  list.printList();

  list.deleteMiddle();

  print("After Deleting Middle:");
  list.printList();
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
      add(value);
    }
  }

  void add(int value) {
    head = Node(value)..next = head;
  }

  void printList() {
    Node? current = head;
    while (current != null) {
      stdout.write("${current.data} -> ");
      current = current.next;
    }
    print("null");
  }

  void deleteMiddle() {
    if (head == null || head?.next == null) {
      head = null; // Empty list or single element
      return;
    }

    Node? slow = head, fast = head, prev;
    while (fast?.next != null) {
      prev = slow;
      slow = slow?.next;
      fast = fast?.next?.next;
    }

    // Remove the middle node
    prev?.next = slow?.next;
  }
}
