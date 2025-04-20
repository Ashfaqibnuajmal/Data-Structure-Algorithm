class TreeNode {
  int value;
  TreeNode? left, right;
  TreeNode(this.value);
}

void inorder(TreeNode? node) {
  if (node == null) return;
  inorder(node.left);
  print(node.value);
  inorder(node.right);
}

void main() {
  var root = TreeNode(5);
  root.left = TreeNode(3);
  root.right = TreeNode(7);
  root.left!.left = TreeNode(2);
  root.left!.right = TreeNode(4);

  print("Inorder Traversal (Sorted Order):");
  inorder(root);
}
