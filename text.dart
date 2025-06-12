class TreeNode {
  int value;
  TreeNode? left, right;
  TreeNode(this.value);
}

bool isBst(TreeNode? root, [TreeNode? min, TreeNode? max]) {
  if (root == null) return true;
  if ((min != null && root.value <= min.value) ||
      (max != null && root.value >= max.value)) {
    return false;
  }
  return isBst(root.left, min, root) && isBst(root.right, root, max);
}

void main() {
  TreeNode root = TreeNode(20)
    ..left = TreeNode(10)
    ..right = TreeNode(30)
    ..left?.left = TreeNode(5)
    ..left?.right = TreeNode(15)
    ..right?.left = TreeNode(25)
    ..right?.right = TreeNode(35);
  print(isBst(root));
}
