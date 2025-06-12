class TreeNode {
  int value;
  TreeNode? left, right;
  TreeNode(this.value);
}

void dfs(TreeNode? node) {
  if (node == null) return;
  print(node.value); // Visit the node
  dfs(node.left); // Traverse left subtree
  dfs(node.right); // Traverse right subtree
}

void main() {
  var root = TreeNode(10);
  root.left = TreeNode(5);
  root.right = TreeNode(20);
  root.left!.left = TreeNode(2);
  root.left!.right = TreeNode(7);

  print("DFS Traversal:");
  dfs(root);
}
