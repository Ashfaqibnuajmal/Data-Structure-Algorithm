void main() {
  List<int> arr = [1, 2, 3, 4, 5];
  int sum = getSum(arr, arr.length - 1);
  print('Sum of array: $sum'); // Output: Sum of array: 15
}

int getSum(List<int> arr, int index) {
  if (index < 0) {
    return 0;
  } else {
    return arr[index] + getSum(arr, index - 1);
  }
}
