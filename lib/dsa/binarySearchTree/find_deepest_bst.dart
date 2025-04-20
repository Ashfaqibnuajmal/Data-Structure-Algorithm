class TreeNode {
  int value;
  TreeNode? left, right;
  TreeNode(this.value);
}

int? findDeepestNode(TreeNode? root) {
  if (root == null) return null;

  int leftHeight = findHeight(root.left);
  int rightHeight = findHeight(root.right);

  if (leftHeight > rightHeight) return root.left!.value;
  if (rightHeight > leftHeight) return root.right!.value;

  return root.value;
}

int findHeight(TreeNode? node) {
  if (node == null) return -1;
  int leftHeight = findHeight(node.left);
  int rightHeight = findHeight(node.right);
  return 1 + (leftHeight > rightHeight ? leftHeight : rightHeight);
}

void main() {
  var root = TreeNode(10);
  root.left = TreeNode(5);
  root.right = TreeNode(20);
  root.left!.left = TreeNode(2);
  root.left!.right = TreeNode(7);

  print("Node with Highest Edge Count: ${findDeepestNode(root)}");
}
