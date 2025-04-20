class TreeNode {
  int value;
  TreeNode? left, right;

  TreeNode(this.value);
}

bool isBST(TreeNode? root, [TreeNode? min, TreeNode? max]) {
  if (root == null) return true;

  if ((min != null && root.value <= min.value) ||
      (max != null && root.value >= max.value)) {
    return false;
  }

  return isBST(root.left, min, root) && isBST(root.right, root, max);
}

void main() {
  TreeNode root = TreeNode(10)
    ..left = TreeNode(5)
    ..right = TreeNode(15)
    ..left!.left = TreeNode(2)
    ..left!.right = TreeNode(7)
    ..right!.left = TreeNode(12)
    ..right!.right = TreeNode(18);

  print(isBST(root)); // Output: true
}
