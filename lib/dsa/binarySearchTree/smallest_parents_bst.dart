class Node {
  int data;
  Node? left, right;
  Node(this.data);
}

Node? findParent(Node? root, int value) {
  Node? head;

  while (root != null && root.data != value) {
    head = root;
    if (value < root.data) {
      root = root.left;
    } else {
      root = root.right;
    }
  }

  return head;
}

void main() {
  var root = Node(20);
  root.left = Node(10);
  root.right = Node(30);
  root.left!.left = Node(5);
  root.left!.right = Node(15);

  int key = 15;
  Node? parent = findParent(root, key);

  if (parent != null) {
    print("Parent of $key: ${parent.data}");
  } else {
    print("No parent found or node is root");
  }
}
