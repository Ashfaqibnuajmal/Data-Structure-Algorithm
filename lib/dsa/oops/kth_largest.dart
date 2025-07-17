void main() {
  List<int> arr = [3, 2, 1, 5, 6, 4];
  int k = 2;

  arr.sort((a, b) => b.compareTo(a));
  int kthLargest = arr[k - 1];

  print(kthLargest); // Output: 5
}
