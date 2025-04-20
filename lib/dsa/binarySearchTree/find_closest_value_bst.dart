class TreeNode {
  int value;
  TreeNode? left, right;

  TreeNode(this.value);
}

int findClosest(TreeNode? root, int target, int closest) {
  if (root == null) return closest;

  if ((target - root.value).abs() < (target - closest).abs()) {
    closest = root.value;
  }

  if (target < root.value) {
    return findClosest(root.left, target, closest);
  } else {
    return findClosest(root.right, target, closest);
  }
}

void main() {
  TreeNode root = TreeNode(10)
    ..left = TreeNode(5)
    ..right = TreeNode(15)
    ..left!.left = TreeNode(2)
    ..left!.right = TreeNode(7)
    ..right!.left = TreeNode(12)
    ..right!.right = TreeNode(18);

  print(findClosest(root, 9, root.value)); // Output: 10
}
