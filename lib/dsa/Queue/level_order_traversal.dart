import 'dart:collection';

class Node {
  int value;
  Node? left, right;
  Node(this.value);
}

void levelOrder(Node? root) {
  if (root == null) return;

  Queue<Node> queue = Queue();
  queue.add(root);

  while (queue.isNotEmpty) {
    Node current = queue.removeFirst();
    print(current.value);

    if (current.left != null) queue.add(current.left!);
    if (current.right != null) queue.add(current.right!);
  }
}

void main() {
  Node root = Node(1);
  root.left = Node(2);
  root.right = Node(3);
  root.left!.left = Node(4);
  root.left!.right = Node(5);

  levelOrder(root);
}
