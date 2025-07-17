class TreeNode {
  int value;
  TreeNode? left, right;
  TreeNode(this.value);
}

int? findSecondLargest(TreeNode? root) {
  if (root == null || (root.left == null && root.right == null)) return null;

  TreeNode? current = root;
  while (current != null) {
    if (current.right != null &&
        current.right!.left != null &&
        current.right!.right == null) {
      return current.value;
    }
    if (current.right != null) {
      current = current.right;
    } else {
      current = current.left;
    }
  }
  return null;
}

void main() {
  var root = TreeNode(10);
  root.left = TreeNode(5);
  root.right = TreeNode(20);
  root.right!.left = TreeNode(15);
  root.right!.right = TreeNode(25);

  print("Second Largest: ${findSecondLargest(root)}");
}
