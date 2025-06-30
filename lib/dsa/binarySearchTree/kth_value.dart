class Node {
  int val;
  Node? left, right;
  Node(this.val);
}

int k = 3;
int count = 0;
int ans = -1;

void findKthLargest(Node? root) {
  if (root == null || count >= k) return;

  findKthLargest(root.right);
  count++;
  if (count == k) ans = root.val;
  findKthLargest(root.left);
}

void main() {
  Node root = Node(5);
  root.left = Node(3);
  root.right = Node(7);
  root.left!.left = Node(2);
  root.left!.right = Node(4);
  root.right!.left = Node(6);
  root.right!.right = Node(8);

  findKthLargest(root);
  print(ans); // Output: 6
}
