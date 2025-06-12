class TreeNode {
  int value;
  TreeNode? left, right;
  TreeNode(this.value);
}

int? findThirdLargest(TreeNode? node) {
  List<int> result = [];
  void reverseInorder(TreeNode? node) {
    if (node == null || result.length >= 3) return;
    reverseInorder(node.right);
    if (result.length < 3) result.add(node.value);
    reverseInorder(node.left);
  }

  reverseInorder(node);
  return result.length >= 3 ? result[2] : null;
}

void main() {
  var root = TreeNode(10);
  root.left = TreeNode(5);
  root.right = TreeNode(20);
  root.right!.left = TreeNode(15);
  root.right!.right = TreeNode(25);
  root.right!.right!.right = TreeNode(30);

  print(findThirdLargest(root));
}
